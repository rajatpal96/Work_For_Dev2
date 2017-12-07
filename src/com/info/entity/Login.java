package com.info.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Login
{
	
	private String role;
	@Id
	private String email;
	private String password;
	
	public Login()
	{

		super();
	}

	public Login(String role, String email, String password)
	{

		super();
		this.role = role;
		this.email = email;
		this.password = password;
	}

	public String getRole()
	{
	
		return role;
	}

	public void setRole(String role)
	{
	
		this.role = role;
	}

	public String getEmail()
	{
	
		return email;
	}

	public void setEmail(String email)
	{
	
		this.email = email;
	}

	public String getPassword()
	{
	
		return password;
	}

	public void setPassword(String password)
	{
	
		this.password = password;
	}
	
	
}
