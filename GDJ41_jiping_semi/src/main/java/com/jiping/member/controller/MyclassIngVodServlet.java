package com.jiping.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jiping.lecture.model.vo.Lecture;
import com.jiping.member.model.service.MemberService;
import com.jiping.member.model.vo.Member;

/**
 * Servlet implementation class MyclassIngVodServlet
 */
@WebServlet(name="IngVod", urlPatterns={"/member/myclassIngVod.do"})
public class MyclassIngVodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyclassIngVodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");		
		Member m=new MemberService().selectMember(email);
		
		List<Lecture> list=new MemberService().lectureVodList(email);
		int count=new MemberService().lectureVodListCount(email);
		
		request.setAttribute("count", count);
		request.setAttribute("lectureList", list);
		request.setAttribute("loginMember", m);
		
		
		
		request.getRequestDispatcher("/views/member/myClassIngUserVod.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
