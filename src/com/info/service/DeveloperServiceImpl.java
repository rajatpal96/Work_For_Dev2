package com.info.service;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.DeveloperDAO;
import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;

@Service
public class DeveloperServiceImpl implements DeveloperService 
{
	@Autowired
	private DeveloperDAO developerDAO;

	@Override
	@Transactional
	public void register(Developer developer,Company company)
	{
		developerDAO.register(developer,company);
	}

	@Override
	@Transactional
	public void verify_dev(Login login)
	{

		developerDAO.verify_dev(login);
	}
}
