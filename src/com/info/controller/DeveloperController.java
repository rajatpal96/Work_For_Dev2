package com.info.controller;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.service.DeveloperService;

@Controller
@RequestMapping("/developer")
public class DeveloperController
{
	@Autowired
	private DeveloperService developerservice;
	
	@PostMapping("/register")		
	public ModelAndView register(@ModelAttribute Developer developer, BindingResult bindingResult)
	{		
		String encpPassword=DigestUtils.md5Hex(developer.getPassword());
		developer.setPassword(encpPassword);
		
		Company company=developer.getCompany();
		developer.setCompany(company);
		
		developerservice.register(developer,company);
	
		ModelAndView mav=new ModelAndView("redirect:/");	
		
		System.out.println("company name is: "+company.getName());
		System.out.println("company city is: "+company.getCity());
		System.out.println("developer name is: "+developer.getName());
		System.out.println("developer email  is: "+developer.getEmail());
		
		return mav;
	}
	
}
