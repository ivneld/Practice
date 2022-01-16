package com.java.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Servlet06")
public class Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet06() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletConfig config=this.getServletConfig();
		//ServletConfig 객체는 서블릿이 초기화되는 동안 참조해야 할 정보를 전달해주는 역할을 헌다.
		//서블릿이 초기화 될 때 참조해야 하는 정보를 가지고 있다가 전달해 준다.
		
		String id = config.getInitParameter("id");
		String pw = config.getInitParameter("pw");
		
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
	}


}
