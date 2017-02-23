package com.emusicstore.model;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrador on 23/02/2017.
 */
public class Cart {
    private String cartId;
    private Map<String, CartItem> cartItems;
    private double granTotal;

    /**
     * Método que permite agregar objetos al carro de compras
     * @param item Objeto o árticulo a comprar
     * @result cartItems Listado actualizado de objetos listados en el carro de compras
     * */
    public void addCartItem(CartItem item){
        String productId = item.getProduct().getProductId();

        if(cartItems.containsKey(productId)){
            CartItem existingCartItem = cartItems.get(productId);
            existingCartItem.setQuantity(existingCartItem.getQuantity()+item.getQuantity());
            cartItems.put(productId, existingCartItem);
        }else{
            cartItems.put(productId, item);
        }
        updateGranTotal();
    }

    /**
     * Método que permite eliminar objetos del carro de compras
     * @param item Objeto o árticulo a eliminar
     * @result cartItems Listado actualizado de objetos listados en el carro de compras
     * */
    public void removeCartItem(CartItem item){
        String productId = item.getProduct().getProductId();
        cartItems.remove(productId);
        updateGranTotal();
    }

    /**
     * Método que permite actualizar el listado de objetos en el carro de compras
     * @result granTotal Valor total de precios en el listado del carro de compras
     * */
    public void updateGranTotal(){
        granTotal = 0;
        for(CartItem item : cartItems.values()){
            granTotal = granTotal + item.getTotalPrice();
        }
    }

    private Cart(){
        cartItems = new HashMap<String, CartItem>();
        granTotal = 0;
    }

    public Cart(String cartId){
        this();
        this.cartId=cartId;
    }

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public Map<String, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(Map<String, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getGranTotal() {
        return granTotal;
    }

    public void setGranTotal(double granTotal) {
        this.granTotal = granTotal;
    }
}
