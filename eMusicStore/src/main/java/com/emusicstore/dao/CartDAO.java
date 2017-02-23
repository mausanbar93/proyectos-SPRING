package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by Administrador on 23/02/2017.
 */
public interface CartDAO {

    Cart create(Cart cart);
    Cart read(String cartId);
    void update(String cartId, Cart cart);
    void delete(String cartId);
}
