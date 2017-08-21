package com.csueb.cs.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author sucheta
 */


@Entity
@Table(name = "Product")
public class Product{

	@Id
	@Column(name = "productId")
	private int productId;
	
	@Column(name = "productType")
    private String productType;
	
	@Column(name = "productName")
    private String productName;
    
	@Column(name = "productCost")
	private float productCost;
    
	@Column(name = "productOldCost")
    private float productOldCost;
    
	@Column(name = "productUnit")
    private String productUnit;
    
	@Column(name = "productQuantity")
    private int productQuantity;
    
	@Column(name = "productImgSrc")
    private String productImgSrc;

     /**
     * @return the productType
     */
	
	
	public Product(){
	    
    }
	
    public Product(int productId, String productType, String productName, float productCost, float productOldCost, String productUnit, int productQuantity, String productImgSrc) {

    	this.productId = productId;
        this.productType = productType;
        this.productName = productName;
        this.productQuantity = productQuantity;
        this.productCost = productCost;
        this.productOldCost = productOldCost;
        this.productUnit = productUnit;
        this.productImgSrc = productImgSrc;

    }

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getProductCost() {
		return productCost;
	}

	public void setProductCost(float productCost) {
		this.productCost = productCost;
	}

	public float getProductOldCost() {
		return productOldCost;
	}

	public void setProductOldCost(float productOldCost) {
		this.productOldCost = productOldCost;
	}

	public String getProductUnit() {
		return productUnit;
	}

	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductImgSrc() {
		return productImgSrc;
	}

	public void setProductImgSrc(String productImgSrc) {
		this.productImgSrc = productImgSrc;
	}
    
  
}
