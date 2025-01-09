package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/infoCardNews/")
public class InfoCardNewsController {
	
	private static final Logger logger = LoggerFactory.getLogger(InfoCardNewsController.class);
	
	@RequestMapping(value = "cardNewsList.do", method = RequestMethod.GET)
	public String cardNewsList() {

		logger.info("cardNewsList 들어옴");

		return "WEB-INF/infoCardNews/cardNewsList";
	}
	
	@RequestMapping(value = "cardNewsContents.do", method = RequestMethod.GET)
	public String cardNewsContents() {

		logger.info("cardNewsContents 들어옴");

		return "WEB-INF/infoCardNews/cardNewsContents";
	}
	
	@RequestMapping(value = "cardNewsWrite.do", method = RequestMethod.GET)
	public String cardNewsWrite() {

		logger.info("cardNewsWrite 들어옴");

		return "WEB-INF/infoCardNews/cardNewsWrite";
	}
	
	@RequestMapping(value = "cardNewsModify.do", method = RequestMethod.GET)
	public String cardNewsWriteAndModify() {

		logger.info("cardNewsModify 들어옴");

		return "WEB-INF/infoCardNews/cardNewsModify";
	}

}
