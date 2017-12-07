   package com.info.dao;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;

@Repository
public class DeveloperDAOImpl implements DeveloperDAO 
{
	@Autowired
	private SessionFactory sessionFactory;

	public void register(Developer developer, Company company)
	{
		Session session=sessionFactory.getCurrentSession();
		
		try 
		{
			System.out.println("check3:  DeveloperDAOImpl "+developer.getEmail());

			session.save(company);
			session.save(developer);
			

		}
		catch (Exception e) 
		{
			System.out.println("exception occured");
		}
	}

	@Override
	public void verify_dev(Login login)
	{
		String email=login.getEmail();
		String password=login.getPassword();
		String encp=DigestUtils.md5Hex(password);
		
		
		Session session=sessionFactory.getCurrentSession();
		
		Query query= session.createQuery("Select email,password from Developer");
		List<Object> allDeveloperslist = query.list();
		
		for(Object developer: allDeveloperslist)
		{
			Object[] dev_details=(Object[]) developer;
			
			System.out.println("info At index [0] is ===>>>"+dev_details[0]);
			System.out.println("info at index [1] is ===>>>"+dev_details[1]);
			
			if(dev_details[0].equals(email) && dev_details[1].equals(encp))
			{
				System.out.println("validation is successfull");
			}
			
			else
			{
				System.out.println("Invalid userEmail or Password");
			}
		}
		
	}

}
