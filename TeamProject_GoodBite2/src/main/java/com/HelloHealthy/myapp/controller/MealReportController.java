package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/mealReport/")
public class MealReportController {
	
	private static final Logger logger = LoggerFactory.getLogger(MealReportController.class);
	
	@RequestMapping(value = "mealreport.do", method=RequestMethod.GET)
	public String mealreport() {
		
		logger.info("mealreport>>>?");
		
		String path = "WEB-INF/mealReport/mealreport";
		return path;
	}
}
