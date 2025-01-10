package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/challenge/")
public class ChallengeController {
	private static final Logger logger = LoggerFactory.getLogger(ChallengeController.class);
	
	@RequestMapping(value = "challengeList.do", method = RequestMethod.GET)
	public String challengeList() {

		logger.info("challengeList 들어옴");

		return "WEB-INF/challenge/challengeList";
	}

	@RequestMapping(value = "challengeContent.do", method = RequestMethod.GET)
	public String challengeContent() {

		logger.info("challengeContent 들어옴");

		return "WEB-INF/challenge/challengeContent";
	}
	
	@RequestMapping(value = "challengeWrite.do", method = RequestMethod.GET)
	public String challengeWrite() {

		logger.info("challengeWrite 들어옴");

		return "WEB-INF/challenge/challengeWrite";
	}

	@RequestMapping(value = "challengeModify.do", method = RequestMethod.GET)
	public String challengeModify() {

		logger.info("challengeModify 들어옴");

		return "WEB-INF/challenge/challengeModify";
	}
	
}
