/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import classes.Product;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sucheta
 */
public class ProductUtils {
     public static List<Product> getProducts() {
         
        List<Product> products = new ArrayList<Product>();
        
        products.add(new Product("vegetable","Cabbage",4.0f,4.80f,"1 lb",100));
        products.add(new Product("vegetable","Tomatoes",3.0f,3.9f,"500 oz",100));                
        products.add(new Product("vegetable","Okra",4.99f,5.80f,"1 lb",100));
        products.add(new Product("vegetable","Bhendi",5.99f, 6.99f, "250 oz",70));
        products.add(new Product("vegetable","Methi",2.90f,3.85f,"1 count",50));
        products.add(new Product("vegetable","Carrot",3.0f,3.9f,"500 oz",100));                
        products.add(new Product("vegetable","Lettuce",4.99f,5.80f,"1 lb",100));
        products.add(new Product("vegetable","Cucumber",5.99f, 6.99f, "250 oz",70));
        products.add(new Product("vegetable","Capsicum",2.90f,3.85f,"1 count",50));
                
        products.add(new Product("fruit","Apple",7.99f, 8.99f, "1 lb",5));
        products.add(new Product("fruit","Mango",10.99f, 11.49f, "200 oz",3));
        products.add(new Product("fruit","Pineapple",7.99f, 6.99f, "1 count",5));
        products.add(new Product("fruit","Jackfruit",10.99f, 11.49f, "200 oz",3));
        products.add(new Product("fruit","Orange",7.99f, 6.99f, "1 count",5));
        return products;
    }
    
}
