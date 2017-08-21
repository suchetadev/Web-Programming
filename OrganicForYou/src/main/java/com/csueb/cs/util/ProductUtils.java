package com.csueb.cs.util;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.csueb.cs.bean.Product;



/**
 *
 * @author sucheta
 */

public class ProductUtils {
     public static List<Product> getProducts(){
        
    	EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();
	    em.getTransaction().begin();
		List<Product> products = em.createQuery("Select p From Product p", Product.class).getResultList();
		em.getTransaction().commit();
		
        return products;
    }
    
     public static Product getProductById(int productId) {

 		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();


 		Query query = em.createQuery("SELECT p FROM Product p WHERE p.productId = :product_id_placeholder");
 		Object result = query.setParameter("product_id_placeholder", productId).getSingleResult();

 		
 		return ((Product) result);

 	}
     
     public static void create(Product p) {

 		EntityManagerFactory emf = Persistence.createEntityManagerFactory("OrganicForYouPU");
 		EntityManager em = emf.createEntityManager();
 		em.getTransaction().begin();
 		em.persist(p);
 		em.getTransaction().commit();

 	}
}
