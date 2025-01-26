package com.example.ecommerce_web_applicationjavaee.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@NoArgsConstructor
@AllArgsConstructor
@Data
public class CartItem {
    private int id;
    private int userId;
    private int productId;
    private int quantity;
}
