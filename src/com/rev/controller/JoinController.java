package com.rev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rev.dao.MemberDAO;
import com.rev.vo.MemberVO;

public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/accounts.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String birthday = req.getParameter("birthday");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mDto = new MemberVO();
		mDto.setId(id);
		mDto.setPwd(pwd);
		mDto.setName(name);
		mDto.setBirthday(birthday);
		int joinResult = mDao.join(mDto);
		System.out.println("join result");
		if (joinResult == 1) {
			req.setAttribute("joinResult", joinResult);
			HttpSession session = req.getSession();
			session.setAttribute("sessionID", id);
			RequestDispatcher rd = req.getRequestDispatcher("/base.jsp");
			rd.forward(req, resp);
		} else {
			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
			rd.forward(req, resp);
		}
	}
	
}