package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet02() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String[] hobby=request.getParameterValues("hobby");
		String major=request.getParameter("major");
		String area=request.getParameter("area");
	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>form태그 알아보기</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h3>form태그에서 받은 데이터</h3>");
		out.print("이름 : " + name + "<br>");
		out.print("아이디 : " + id +"<br>");
		out.print("비밀번호 : " + pw + "<br>");
		out.print("취미 : " + Arrays.toString(hobby)+"<br>");
		out.print("전공 : " + major + "<br>");
		out.print("사는지역 : " + area +"<br>");
		out.print("</body>");
		out.print("</html>");
	}

}
