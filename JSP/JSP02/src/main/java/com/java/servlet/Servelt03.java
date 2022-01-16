package com.java.servlet;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servelt03")
public class Servelt03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servelt03() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		//init 메소드 : 서플릿 초기화작업 수행시 자동으로 호출되는 메소드
		//서블릿 최초 요청시에 단 한번 살행된다.
		System.out.println("init() 실행");
	}

	public void destroy() {
		//destroy 메소드 : 서블릿 마무리 작업 수행시 자동으로 호출되는 메소드
		//서블릿 종료시 단 한번 실행된다.
		System.out.println("destroy() 실행");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청시마다 호출되는 메소드
		System.out.println("doGet() 실행");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 실행");
	}

	//메소드를 만든 후에 이 메소드가 선처리 되는 메소드임을 이노테이셔으로 지정해 준다.
	@PostConstruct
	public void postConstruct() {
		System.out.println("선처리 postConstruct 메소드");
	}
	@PreDestroy
	public void preDestroy() {
		System.out.println("후처리 preDestroy 메소드");
	}
}
