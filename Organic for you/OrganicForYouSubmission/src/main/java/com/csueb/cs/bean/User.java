/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
@Table(name = "User")
public class User{
    
	@Id
	@Column(name = "user_id")
	private int user_id;
	
	@Column(name = "firstName")
    private String firstName;
	
	@Column(name = "lastName")
    private String lastName;
	
	@Column(name = "email")
    private String email;
	
	@Column(name = "phoneNumber")
    private String phoneNumber;
    
    @Column(name = "password")
    private String password;
    
    @Column(name = "passwordConfirm")
    private String passwordConfirm;
    
    @Column(name = "role")
    private String role;
    
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User(){
    
    }
    
    public User(int user_id,String firstName, String lastName, String email, String phoneNumber,
            String password, String passwordConfirm ){
        
    	this.user_id = user_id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.passwordConfirm = passwordConfirm;
        
    }
    
    public int getUserId() {
		return user_id;
	}

	public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

}
