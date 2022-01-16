package com.java.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet05")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet05() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Enumeration<String> enumeration=request.getParameterNames();
		//반환값이 Enumeration유형으로 요청 페이지의 모든 파라미터 이름이 저장된 목록을 반환한다.
		
		while(enumeration.hasMoreElements()) {
			//다음 읽어올 요소가 남아 있는지 확인
			//있으면 true, 없으면 false
			String name=enumeration.nextElement();
			//다음 요소를 읽어온다.
			
			String[] values = request.getParameterValues(name);
			
			for(String value : values) { //향상된 for문
				System.out.println("name : " + name + ", value : " + value);
			
			}
		}
	}

}
