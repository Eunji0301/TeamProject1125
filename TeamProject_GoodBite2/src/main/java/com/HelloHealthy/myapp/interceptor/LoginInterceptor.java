package com.HelloHealthy.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	// �α��� �� ȸ�������� ���ǿ� ��´�.

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// ����ä���ϱ� �� ó���ϴ� �޼���
		HttpSession session = request.getSession();

		if (session.getAttribute("midx") != null) {
			session.removeAttribute("midx");
			session.removeAttribute("memberId");
			session.removeAttribute("memberName");

			session.invalidate();
		}

		return true;
	}

	/**
	 * This implementation is empty.
	 */
	@Override
	public void postHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		// RedirectAttributes��  Model  ��ü�� ���� ���� ������.
		String midx = modelAndView.getModel().get("midx").toString();
		String memberName = modelAndView.getModel().get("memberName").toString();
		
		String memberId = modelAndView.getModel().get("memberId").toString();
		
		modelAndView.getModel().clear(); /// �Ķ���� �𵨰��� �����.
		
		HttpSession session = request.getSession();		
		if(midx != null) {
			session.setAttribute("midx", midx);
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberName", memberName);
			request.getSession();
		}
	}

}
