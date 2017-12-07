package com.info.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GeneratorType;

@Entity
public class Company 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer dev_id;
	
	
	private String name;
	
	@Column(name="city")
	private String city;
	
	@Column(name="country")
	private String country;
	
	// mappedby will delete the the developer foreign key of developer from company table
	/*@OneToOne(mappedBy="company", cascade=CascadeType.ALL)  */
	
	@OneToMany(mappedBy="company", cascade=CascadeType.ALL)
	private List<Developer> developers;
	
	public Company() 
	{
		super();
	}

	public Company(String name, String city, String country, List<Developer> developers)
	{

		super();
		this.name = name;
		this.city = city;
		this.country = country;
		this.developers = developers;
	}

	public String getName()
	{
	
		return name;
	}

	public void setName(String name)
	{
	
		this.name = name;
	}

	public String getCity()
	{
	
		return city;
	}

	public void setCity(String city)
	{
	
		this.city = city;
	}

	public String getCountry()
	{
	
		return country;
	}

	public void setCountry(String country)
	{
	
		this.country = country;
	}

	public List<Developer> getDevelopers()
	{
	
		return developers;
	}

	public void setDevelopers(List<Developer> developers)
	{
	
		this.developers = developers;
	}

}
