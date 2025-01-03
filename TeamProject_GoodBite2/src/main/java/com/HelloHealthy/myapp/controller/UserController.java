package com.HelloHealthy.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(FoodTrackerController.class);
	
	@RequestMapping(value = "user/login.do", method = RequestMethod.GET)
	public String login() {

		logger.info("login 들어옴");

		return "WEB-INF/user/login";
	}
	
	@RequestMapping(value = "user/join.do", method = RequestMethod.GET)
	public String join() {

		logger.info("join 들어옴");

		return "WEB-INF/user/join";
	}
	
	@RequestMapping(value = "user/foundId.do", method = RequestMethod.GET)
	public String foundId() {

		logger.info("foundId 들어옴");

		return "WEB-INF/user/foundId";
	}
	
	@RequestMapping(value = "user/foundPwd.do", method = RequestMethod.GET)
	public String foundPwd() {

		logger.info("foundPwd 들어옴");

		return "WEB-INF/user/foundPwd";
	}
	
	@RequestMapping(value = "user/searchId.do", method = RequestMethod.GET)
	public String searchId() {

		logger.info("foundId 들어옴");

		return "WEB-INF/user/searchId";
	}
	
	@RequestMapping(value = "user/searchPwd.do", method = RequestMethod.GET)
	public String searchPwd() {

		logger.info("searchPwd 들어옴");

		return "WEB-INF/user/searchPwd";
	}
	
	@RequestMapping(value = "user/changePwd.do", method = RequestMethod.GET)
	public String changePwd() {

		logger.info("changePwd 들어옴");

		return "WEB-INF/user/changePwd";
	}
	
	@RequestMapping(value = "common/footer.do", method = RequestMethod.GET)
	public String footer() {

		logger.info("footer 들어옴");

		return "WEB-INF/common/footer";
	}
	
	@RequestMapping(value = "common/headerAfter.do", method = RequestMethod.GET)
	public String headerAfter() {

		logger.info("headerAfter 들어옴");

		return "WEB-INF/common/headerAfter";
	}
	
	@RequestMapping(value = "common/headerBefore.do", method = RequestMethod.GET)
	public String headerBefore() {

		logger.info("headerBefore 들어옴");

		return "WEB-INF/common/headerBefore";
	}
}
