package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDAO;
import com.emusicstore.model.Cart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrador on 23/02/2017.
 */
@Repository
public class CartDAOImpl implements CartDAO {
    private Map<String, Cart> listOfCarts;

    public CartDAOImpl() {
        listOfCarts = new HashMap<String, Cart>();
    }

    public Cart create(Cart cart){
        if(listOfCarts.keySet().contains(cart.getCartId())){
            throw new IllegalArgumentException(String.format("No se puede crear carro. Un carro con id (%) "+" ya existe!", cart.getCartId()));
        }

        listOfCarts.put(cart.getCartId(), cart);
        return cart;
    }

    public Cart read(String cartId){
        return listOfCarts.get(cartId);
    }

    public void update(String cartId, Cart cart){
        if(!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("No se puede actualizar carro. El carro con id (%) "+" no existe!", cart.getCartId()));
        }
        listOfCarts.put(cartId, cart);
    }

    public void delete(String cartId){
        if(!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("No se puede eliminar carro. El carro con id (%) "+" no existe!", cartId));
        }
        listOfCarts.remove(cartId);
    }
}