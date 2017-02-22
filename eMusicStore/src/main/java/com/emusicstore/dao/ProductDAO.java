package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by Administrador on 20/02/2017.
 */
public interface ProductDAO {

    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();

    void editProduct(Product product);
    void deleteProduct(String id);
}
