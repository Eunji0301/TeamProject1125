package com.HelloHealthy.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping(value = "/foodTracker/")
public class FoodTrackerController {

	private static final Logger logger = LoggerFactory.getLogger(FoodTrackerController.class);
	
	@RequestMapping(value = "foodTrackerMain.do", method = RequestMethod.GET)
	public String boardWrite() {

		logger.info("foodTrackerMain 들어옴");

		return "WEB-INF/foodTracker/foodTrackerMain";
	}
}
