package com.example.ecommerce_web_applicationjavaee.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Order {
    private int orderId;
    private int userId;
    private Date order_date;
    private List<Product> products;
}
