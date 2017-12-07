package com.info.dao;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;

public interface DeveloperDAO
{

	void register(Developer developer, Company company);

	void verify_dev(Login login);

}
