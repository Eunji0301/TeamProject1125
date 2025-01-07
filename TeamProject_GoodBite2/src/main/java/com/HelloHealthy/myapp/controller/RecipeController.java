package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/recipe/")
public class RecipeController {
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@RequestMapping(value = "recipeContents.do", method = RequestMethod.GET)
	public String recipeContents() {

		logger.info("recipeContents 들어옴");

		return "WEB-INF/recipe/recipeContents";
	}
	
	@RequestMapping(value = "recipeList.do", method = RequestMethod.GET)
	public String recipeList() {

		logger.info("recipeList 들어옴");

		return "WEB-INF/recipe/recipeList";
	}
}
