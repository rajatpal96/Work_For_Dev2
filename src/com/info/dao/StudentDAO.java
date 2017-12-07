package com.info.dao;

import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

public interface StudentDAO {

	void register(Student student);

	void verify_stu(Login login);
	 
	public Student getRecord(String email);

}
