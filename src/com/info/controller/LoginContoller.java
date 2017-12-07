package com.info.controller;
                                          
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Login;
import com.info.entity.Student;
import com.info.service.DeveloperService;
import com.info.service.StudentService;

@Controller
public class LoginContoller                     
{
	@Autowired
	private DeveloperService developerservice;
	
	@Autowired
	private StudentService studentService;   

	@PostMapping("/login")
	public ModelAndView login(@ModelAttribute Login login,HttpServletRequest request,HttpSession session)
	{
		ModelAndView mav=new ModelAndView("successDef");  
		
		if(login.getRole().equals("developer"))
		{
			
		developerservice.verify_dev(login);
		}
		else if(login.getRole().equals("student"))
		{
			
			
			studentService.verify_stu(login);
			session=request.getSession();
			  
			 session.setAttribute("st_email", login.getEmail());
			 
			 
			  String email=(String)session.getAttribute("st_email");
			 System.out.println("Session email is"+email);
			 	 
			  Student student=studentService.getRecord(email);
			 
			  
			    mav.addObject("student", student);
		}
		return mav;
	}
	      
}
