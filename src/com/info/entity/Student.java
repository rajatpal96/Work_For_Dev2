package com.info.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;

@Entity
@NamedQueries({
@NamedQuery(name="Student.ByEmail",query="from Student where email=:STU_EMAIL")
})
public class Student 
{
	private String name;
	
	@Id
	private String email;
	
	private String password;
	private String mob;
	private String Skills;
	
	public Student() {
		super();
	}

	public Student(String name, String email, String password, String mob, String skills)
	{

		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mob = mob;
		Skills = skills;
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

	public String getSkills()
	{
	
		return Skills;
	}

	public void setSkills(String skills)
	{
	
		Skills = skills;
	}
	
}
