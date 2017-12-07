package com.info.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.DeveloperDAO;
import com.info.dao.StudentDAO;
import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Service
public class StudentServiceImpl implements StudentService 
{
	@Autowired
	private StudentDAO studentDAO;
	
	
	@Override
	@Transactional
	public void register(Student student)
	{
		studentDAO.register(student);
	}


	@Override
    @Transactional
	public void verify_stu(Login login)
	{
		studentDAO.verify_stu(login);
	}


	@Override
	@Transactional
	public Student getRecord(String email) {
		// TODO Auto-generated method stub
		return studentDAO.getRecord(email);
	}








	

  
	
}
