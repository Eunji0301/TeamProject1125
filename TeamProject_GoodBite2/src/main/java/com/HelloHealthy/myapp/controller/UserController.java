package com.HelloHealthy.myapp.controller;


import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;


import javax.servlet.http.HttpServletRequest;

//import org.json.JSONArray;
//import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.HelloHealthy.myapp.domain.UserVo;
import com.HelloHealthy.myapp.service.UserService;
import com.HelloHealthy.myapp.util.UserIp;

@Controller
@RequestMapping(value = "/")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
//	@Autowired 
//	private UserIp userIp;
//
//	@Autowired 
//	private UserService userService;
	
	@RequestMapping(value = "user/userLogin.do", method = RequestMethod.GET)
	public String login() {

		logger.info("login 들어옴");

		return "WEB-INF/user/userLogin";
	}
	
	@RequestMapping(value = "user/userJoin.do", method = RequestMethod.GET)
	public String join() {

		logger.info("join 들어옴");

		return "WEB-INF/user/userJoin";
	}

//	@RequestMapping(value = "user/userJoinAction.do", method = RequestMethod.POST)
//	public String joinAction(UserVo uv, HttpServletRequest request, RedirectAttributes rttr)throws IOException, Exception {
//		logger.info("joinAction 들어옴");
//		logger.info(uv.getuId());
//		logger.info(uv.getuPwd());
//		logger.info(uv.getuName());
//		logger.info(uv.getuGender());
//		logger.info(uv.getuBirth());
//		logger.info(uv.getuPhone());
//		logger.info(uv.getuNickName());
//		logger.info(uv.getuMail());
//		logger.info(uv.getuThumbnail());
//		logger.info(uv.getuIp());
//		logger.info(uv.getuTOSAgreement());
//		logger.info(uv.getuPIPConsent());
//		
//
//		uv.setuThumbnail("themnailBasic.png");
//		String ip = userIp.getUserIp(request);
//		uv.setuIp(ip);
//		uv.setuRole("USER");
//		
//		int value = userService.userInsert(uv);
//		
//		String path = "";
//		if (value == 1) {
//			path = "redirect:/user/userLogin.do";
//		} else {
//			rttr.addFlashAttribute("msg", "입력이 잘못 되었습니다.");
//			path = "redirect:/user/userJoin.do";
//		}
//		
//		return path;
//	}
	
	@RequestMapping(value = "user/userFoundId.do", method = RequestMethod.GET)
	public String foundId() {

		logger.info("foundId 들어옴");

		return "WEB-INF/user/userFoundId";
	}
	
	@RequestMapping(value = "user/userFoundPwd.do", method = RequestMethod.GET)
	public String foundPwd() {

		logger.info("foundPwd 들어옴");

		return "WEB-INF/user/userFoundPwd";
	}
	
	@RequestMapping(value = "user/userSearchId.do", method = RequestMethod.GET)
	public String searchId() {

		logger.info("foundId 들어옴");

		return "WEB-INF/user/userSearchId";
	}
	
	@RequestMapping(value = "user/userSearchPwd.do", method = RequestMethod.GET)
	public String searchPwd() {

		logger.info("searchPwd 들어옴");

		return "WEB-INF/user/userSearchPwd";
	}
	
	@RequestMapping(value = "user/userChangePwd.do", method = RequestMethod.GET)
	public String changePwd() {

		logger.info("changePwd 들어옴");

		return "WEB-INF/user/userChangePwd";
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
