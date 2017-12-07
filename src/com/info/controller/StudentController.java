package com.info.controller;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Student;
import com.info.service.DeveloperService;
import com.info.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController 
{
	
	@Autowired
	private StudentService studentService;
	
	@PostMapping("/register")		
	public ModelAndView register(@ModelAttribute Student student, BindingResult bindingResult)
	{		
		String encpPassword=DigestUtils.md5Hex(student.getPassword());
		student.setPassword(encpPassword);
		
		studentService.register(student);
		
		ModelAndView mav=new ModelAndView("redirect:/");	
		
		
		
		return mav;
	}
	   
}
