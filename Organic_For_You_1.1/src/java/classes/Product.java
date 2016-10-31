/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.Serializable;

/**
 *
 * @author sucheta
 */
public class Product implements Serializable {

    private String productType;
    private String productName;
    private float cost;
    private float old_cost;
    private String unit;
    private int quantity;

     /**
     * @return the productType
     */
    public Product(String productType, String productName, float cost, float old_cost,String unit, int quatity) {

        this.productType = productType;
        this.productName = productName;
        this.cost = cost;
        this.quantity = quatity;
        this.old_cost = old_cost;
        this.unit = unit;

    }
    
    public float getOld_cost() {
        return old_cost;
    }

    public void setOld_cost(float old_cost) {
        this.old_cost = old_cost;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

   

    public String getProductType() {
        return productType;
    }

    /**
     * @param productType the productType to set
     */
    public void setProductType(String productType) {
        this.productType = productType;
    }

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the cost
     */
    public float getCost() {
        return cost;
    }

    /**
     * @param cost the cost to set
     */
    public void setCost(float cost) {
        this.cost = cost;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
