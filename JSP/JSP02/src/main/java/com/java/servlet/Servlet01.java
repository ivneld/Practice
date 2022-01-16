package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL 맵핑은 어노테이션으로 달거나 또는 web.xml에 직접 작성하는 방법이 있다.
//@WebServlet("/HelloServlet")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request : 클라이언트로부터의 요청처리 객체 	(아이디와 비밀번호 정보)
		//response : 클라이언트의 응답처리 객체		(회원인지 아닌지)
		response.setCharacterEncoding("UTF-8");
		//UTF-8로 웹 브라우저에 보낸다.
		response.setContentType("text/html; charset=UTF-8");
		//웹 브라우저에게 html 문서를 UTF-8로 해석하라는 뜻
		
		PrintWriter out= response.getWriter();
		//웹 브라우저에게 출력하기 위한 출력스트림 얻기
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Servlet 시작!</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>서블릿 시작합니다.</h1>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
