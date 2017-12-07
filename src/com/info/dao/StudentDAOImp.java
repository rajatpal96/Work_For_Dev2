package com.info.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Repository
public class StudentDAOImp implements StudentDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void register(Student student)
	{
		Session session=sessionFactory.getCurrentSession();
		
		try 
		{
			System.out.println("check3:  DeveloperDAOImpl "+student.getEmail());
			session.save(student);
		}
		catch (Exception e) 
		{
			System.out.println("exception occured");
		}		
	}

	@Override
	public void verify_stu(Login login)
	{
		String email=login.getEmail();
		String password=login.getPassword();
		String encp=DigestUtils.md5Hex(password);
		
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("select email,password from Student");
		List<Object> allStudents = query.list();
		
		for(Object students:allStudents) {
Object[] stu_details=(Object[]) students;
			
			System.out.println("info At index [0] is ===>>>"+stu_details[0]);
			System.out.println("info at index [1] is ===>>>"+stu_details[1]);
			
			if(stu_details[0].equals(email) && stu_details[1].equals(encp))
			{
				System.out.println("validation is successfull");
			}
			
			else
			{
				System.out.println("Invalid userEmail or Password");
			}
		}
		  
		
		
		
	}

	@Override
	public Student getRecord(String email) {
		// TODO Auto-generated method stub
	 
		Session session=sessionFactory.getCurrentSession();
		
		Query query=session.getNamedQuery("Student.ByEmail");
		     
		   query.setString("STU_EMAIL", email);
		
		List<Student> students=query.list();
		
		Student student=new Student();
		
		  try
		  {
			  student=students.get(0);
		  }
		    catch(Exception e){
		    	System.out.println(e);
		    	
		    }
		return student;
	}
	   

	



}
