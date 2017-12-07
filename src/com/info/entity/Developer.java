package com.info.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Developer 
{
	private String name;
	
	@Id
//	@GeneratedValue       sometimes developer table do not get created by using this annotation
	private String email;
	
	private String password;
	
	private String mob;

	@ManyToOne
	private Company company;

	public Developer()
	{
		super();
	}

	public Developer(String name, String email, String password, String mob, Company company)
	{
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mob = mob;
		this.company = company;
	}

	public String getName()
	{
	
		return name;
	}

	public void setName(String name)
	{
	
		this.name = name;
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

	public String getMob()
	{
	
		return mob;
	}

	public void setMob(String mob)
	{
	
		this.mob = mob;
	}

	public Company getCompany()
	{
	
		return company;
	}

	public void setCompany(Company company)
	{
	
		this.company = company;
	}

	
}
