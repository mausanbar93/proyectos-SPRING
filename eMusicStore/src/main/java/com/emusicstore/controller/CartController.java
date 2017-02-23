package com.emusicstore.controller;

import com.emusicstore.dao.CartDAO;
import com.emusicstore.dao.ProductDAO;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrador on 23/02/2017.
 */
@Controller
@RequestMapping("/rest/cart")
public class CartController {

    @Autowired
    private CartDAO cartDAO;

    @Autowired
    private ProductDAO productDAO;

    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
    public @ResponseBody Cart read(@PathVariable(value = "cartId") String cartId){
        return cartDAO.read(cartId);
    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void update(@PathVariable(value = "cardId") String cartId, @RequestBody Cart cart){
        cartDAO.update(cartId, cart);
    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "cardId") String cartId){
        cartDAO.delete(cartId);
    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value = "productId") String productId, HttpServletRequest request){
        String sesionId = request.getSession(true).getId();
        Cart cart = cartDAO.read(sesionId);
        if(cart == null){
            cart = cartDAO.create(new Cart(sesionId));
        }

        Product product = productDAO.getProductById(productId);
        if(product == null){
            throw new IllegalArgumentException(new Exception());
        }

        cart.addCartItem(new CartItem(product));
        cartDAO.update(sesionId, cart);
    }

    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable(value = "productId") String productId, HttpServletRequest request){
        String sesionId = request.getSession(true).getId();
        Cart cart = cartDAO.read(sesionId);
        if(cart == null){
            cart = cartDAO.create(new Cart(sesionId));
        }

        Product product = productDAO.getProductById(productId);
        if(product == null){
            throw new IllegalArgumentException(new Exception());
        }

        cart.removeCartItem(new CartItem(product));
        cartDAO.update(sesionId, cart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Respuesta Ilegal, por favor revisa su cargado")
    public void handleClientErrors(Exception e){}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Error interno del servidor")
    public void handleServerErrors(Exception e){}
}
