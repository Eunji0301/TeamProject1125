package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/myFridge/")
public class MyFridgeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MyFridgeController.class);
	
	@RequestMapping(value = "fridge.do", method=RequestMethod.GET)
	public String fridge() {
		
		logger.info("fridge 들어오니");
		
		String path = "WEB-INF/myFridge/fridge";
		return path;
	}
}
