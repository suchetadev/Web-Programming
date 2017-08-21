package com.csueb.cs.util;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.csueb.cs.bean.User;

@Service
public class UserUtils {

	public static void create(User u) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("OrganicForYouPU");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();

	}

	public static List<User> getUsers() {
		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();
		em.getTransaction().begin();
		List<User> users = em.createQuery("Select u From User u", User.class).getResultList();
		em.getTransaction().commit();
		return users;
	}

	public static boolean checkUser(User u) {

		boolean status = false;

		String user_email = u.getEmail();
		String user_password = u.getPassword();
		String result_password = null;

		System.out.println("Here is some .............................." + user_email);

		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();

		try {

			Query query = em.createQuery("SELECT u.password FROM User u WHERE u.email = :user_email_placeholder");
			Object result = query.setParameter("user_email_placeholder", user_email).getSingleResult();

			if (result != null) {

				result_password = (String) result;
				if (user_password.equals(result_password)) {
					status = true;
				}
			}

		} catch (NoResultException nre) {

		}
		return status;

	}

	public static boolean isAdmin(String user_email) {

		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();
		
		Query query = em.createQuery("SELECT u.role FROM User u WHERE u.email = :user_email_placeholder");
		Object result = query.setParameter("user_email_placeholder", user_email).getSingleResult();
        String user_role = (String)result;
		if(user_role.equals("ROLE_ADMIN")){
			
			return true;
		}
		
		return false;
	}

	public static User getUserById(int user_id) {

		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();


		Query query = em.createQuery("SELECT u FROM User u WHERE u.id = :user_id_placeholder");
		Object result = query.setParameter("user_id_placeholder", user_id).getSingleResult();

		
		return ((User) result);

	}

	public static void update(User user) {
		EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();
		
		

		// updateTransaction.begin();
		em.getTransaction().begin();
		Query query = em.createQuery(
				"UPDATE User SET firstName = :user_firstName_placeholder,lastName = :user_lastName_placeholder, email = :user_email_placeholder, phoneNumber = :user_phoneNumber_placeholder, password =:user_password_placeholder, passwordConfirm =:user_passwordConfirm_placeholder, role =:user_role_placeholder  WHERE user_id = :user_id_placeholder");
		query.setParameter("user_id_placeholder", user.getUser_id());
		query.setParameter("user_firstName_placeholder", user.getFirstName());
		query.setParameter("user_lastName_placeholder", user.getLastName());
		query.setParameter("user_email_placeholder", user.getEmail());
		query.setParameter("user_phoneNumber_placeholder", user.getPhoneNumber());
		query.setParameter("user_password_placeholder", user.getPassword());
		query.setParameter("user_passwordConfirm_placeholder", user.getPasswordConfirm());
		query.setParameter("user_role_placeholder", user.getRole());

		
		int updateCount = query.executeUpdate();

		if (updateCount > 0) {
			System.out.println("Done...");
		}

		em.getTransaction().commit();
	
	}

	public static void delete(int id){     
		
	EntityManager em = Persistence.createEntityManagerFactory("OrganicForYouPU").createEntityManager();
	
	em.getTransaction().begin();           
	Query createQuery= em.createQuery("delete from User  where user_id =:user_id_placeholder");           
	createQuery.setParameter("user_id_placeholder", id);           
	createQuery.executeUpdate();           
	em.getTransaction().commit();     
	
	}

}
