package com.jiping.lecture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jiping.lecture.model.sevice.LectureService;
import com.jiping.lecture.model.vo.LectureComment;
import com.jiping.payment.model.vo.Payment;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/lecture/review.do")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		int lectureNo=Integer.parseInt(request.getParameter("lectureNo"));
		String writer= request.getParameter("writer");
//		int rating=Integer.parseInt(request.getParameter("rating"));
		String rating=request.getParameter("rating");
		String content=request.getParameter("commentContent");
		int lecNo=Integer.parseInt(request.getParameter("letureNo")); //lectureno
		int ref=Integer.parseInt(request.getParameter("lecutreCommentRef"));
		int lev=Integer.parseInt(request.getParameter("level"));
		String type=request.getParameter("lectureType");
		
		
		//리뷰등록
		LectureComment lc= LectureComment.builder().writer(writer).starRate(rating).commentContent(content)
				.lectureNo(lecNo).commentRef(ref).commentLevel(lev).build();
		
		
		int result= new LectureService().insertComment(lc);
		
		
		String msg="";
		String loc="/lecture/lecture.do?lectureNo="+lc.getLectureNo();
		if(result>0) {
			msg="리뷰를 등록하였습니다.";
		}else {
			msg="리뷰등록에 실패하였습니다.";
		}
		
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.setAttribute("lc", lc);
		
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
