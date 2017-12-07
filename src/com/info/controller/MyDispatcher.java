package com.info.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Controller
@RequestMapping(value={"","/login"})
public class MyDispatcher 
{
	@RequestMapping("/")
	public ModelAndView  homePage() 
	{
		System.out.println("login runned 1");
		ModelAndView mv = new ModelAndView("loginTileDef");
		
	   /* mv.addObject("developer",new Developer());
	    mv.addObject("company", new Company());*/
		
	    Developer developer=new Developer();
		Company company=new Company();
	    
		List<Developer> developers=new ArrayList<>();
		developers.add(developer);
		
	    company.setDevelopers(developers);

	    Map<String, Object> model=new HashMap<>();
	    model.put("developer",developer);
	    model.put("company", company);
	    model.put("student", new Student());
	    model.put("login", new Login());
	    
	    mv.addAllObjects(model);
	   /*
	    mv.addObject("student",new Student());
*/
	   
	                	
		System.out.println("check2: login runned 2");
		
		mv.addObject("title", "-- Secure | Login --");
		mv.addObject("name", "Work For Developer");
		mv.addObject("company", "www.kssofttech.com");
		mv.addObject("greating", "wellcome sr");
		
		System.out.println("login runned 3");
		return mv;
	}
}
