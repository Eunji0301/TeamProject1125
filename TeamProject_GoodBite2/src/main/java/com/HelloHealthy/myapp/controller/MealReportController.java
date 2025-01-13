package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.HelloHealthy.myapp.domain.DiagnosisRecordVo;
import com.HelloHealthy.myapp.service.MealReportService;

@Controller
@RequestMapping(value = "/mealReport/")
public class MealReportController {
	
	private final MealReportService mealReportService;
	private static final Logger logger = LoggerFactory.getLogger(MealReportController.class);
	
	
	public MealReportController(MealReportService mealReportService) {
        this.mealReportService = mealReportService;
    }
	
	
	@RequestMapping(value = "mealreport.do", method=RequestMethod.GET)
	public String mealreport() {
		
		logger.info("mealreport>>>?");
		
		String path = "WEB-INF/mealReport/mealreport";
		return path;
	}
	
	@RequestMapping(value = "mealreportResult.do", method=RequestMethod.GET)
	public String mealreportResult() {
		
		logger.info("mealreportResult>>>?");
		
		String path = "WEB-INF/mealReport/mealreportResult";
		return path;
	}
	
	@RequestMapping(value = "dietaryQuestionnaire.do", method=RequestMethod.GET)
	public String dietaryQuestionnaire() {
		
		logger.info("dietaryQuestionnaire>>>?");
		
		String path = "WEB-INF/mealReport/dietaryQuestionnaire";
		return path;
	}
}
