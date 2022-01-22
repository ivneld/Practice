package com.java.jsp;

public class Member {
	//아이디 비밀번호 이름 나이의 프로퍼티를 만들자
	//기본생정자와
	private String id;
	private String pw;
	private String name;
	private int age;
	
	public Member() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
