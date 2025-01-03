package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/myChallenge/")
public class MyChallengeController {
	private static final Logger logger = LoggerFactory.getLogger(MyChallengeController.class);
	
	@RequestMapping(value = "myChallengeCertificationList.do", method = RequestMethod.GET)
	public String myChallengeCertificationList() {

		logger.info("myChallengeCertificationList 들어옴");

		return "WEB-INF/myChallenge/myChallengeCertificationList";
	}
	
	@RequestMapping(value = "myChallengeContents.do", method = RequestMethod.GET)
	public String myChallengeContents() {

		logger.info("myChallengeContents 들어옴");

		return "WEB-INF/myChallenge/myChallengeContents";
	}
	
	@RequestMapping(value = "myChallengeList.do", method = RequestMethod.GET)
	public String myChallengeList() {

		logger.info("myChallengeList 들어옴");

		return "WEB-INF/myChallenge/myChallengeList";
	}
	
	@RequestMapping(value = "myChallengeWrite.do", method = RequestMethod.GET)
	public String myChallengeWrite() {

		logger.info("myChallengeWrite 들어옴");

		return "WEB-INF/myChallenge/myChallengeWrite";
	}
}
