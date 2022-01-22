package com.java.jsp;

public class Student {
	//자바빈 규약
	//1. 빈이 페키지화 되어 있어야 한다. (default페키지가 아닌, 지정된 패키지에 있어야 한다.)
	//2. 기본생정자를 반드시 가지고 있어야 한다.
	//(getter / setter로 필드값을 할당할 목적으로 만들어졌으므로 기본생정자가 있어야 한다.
	//3.맴버벼수의 접근제한자는 private으로 선언한다.
	//4.멤버변수에 접근하기 위한 public 접근제한자인 getter / setter 메소드가 있어야 한다.
	
	private int StudentID;
	private String name;
	private int age;
	private int grade;
	
	public int getStudentID() {
		return StudentID;
	}

	public void setStudentID(int studentID) {
		StudentID = studentID;
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

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public Student() {
		
	}
}
