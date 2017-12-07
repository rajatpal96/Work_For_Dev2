package com.info.service;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;

public interface DeveloperService 
{
	void register(Developer developer, Company company);

	void verify_dev(Login login);

}
