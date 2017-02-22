package com.emusicstore.controller;

import com.emusicstore.dao.ProductDAO;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by Administrador on 17/02/2017.
 */

@Controller
public class HomeController {

    //private ProductDAO productDAO = new ProductDAO();
    @Autowired
    private ProductDAO productDAO;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/productList")
    public String getProducts(Model model) {
        /* Metodo util cuando se desea cargar un solo producto
        List<Product> productList = productDAO.getProductList();
        Product product = productList.get(0);
        */
        List<Product> products = productDAO.getAllProducts();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {
        Product product = productDAO.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }

}