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
	public String foodTrackerMain() {

		logger.info("foodTrackerMain 들어옴");

		return "WEB-INF/foodTracker/foodTrackerMain";
	}
	
	@RequestMapping(value = "foodTrackerMealLog.do", method = RequestMethod.GET)
	public String foodTrackerMealLog() {

		logger.info("foodTrackerMealLog 들어옴");

		return "WEB-INF/foodTracker/foodTrackerMealLog";
	}
	
	@RequestMapping(value = "foodTrackerFoodList.do", method = RequestMethod.GET)
	public String foodTrackerFoodList() {

		logger.info("foodTrackerFoodList 들어옴");

		return "WEB-INF/foodTracker/foodTrackerFoodList";
	}
	
	@RequestMapping(value = "foodTrackerFoodDetail.do", method = RequestMethod.GET)
	public String boardWrite() {

		logger.info("foodTrackerFoodDetail 들어옴");

		return "WEB-INF/foodTracker/foodTrackerFoodDetail";
	}
}
