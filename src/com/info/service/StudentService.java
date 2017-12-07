package com.info.service;

import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

public interface StudentService {

	void register(Student student);

	void verify_stu(Login login);
	 
	public Student getRecord(String email);
	

}
