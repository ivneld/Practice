<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function joinFormCheck(){
		var id = document.joinForm.id.value;
		var pw = document.joinForm.pw.value;
		var pwCheck = document.joinForm.pwCheck.value;
		var name = document.joinForm.name.value;
		
		if(id == null || id == ""){
			alert("아이디는 필수사항 입니다.");
			document.joinForm.id.focus();
			return;
		}
		if(id.length <4 ){
			alert("아이디는 4글자 이상이어야 합니다.");
			document.joinForm.id.focus();
			return;		
		}
		if(pw == null || pw == ""){
			alert("비밀번호는 필수사항 입니다.");
			document.joinForm.pw.focus();
			return;
		}
		if(pw!=pwCheck){
			alert("비밀번호가 일치하지 않습니다.");
			document.joinForm.pw.focus();
			return;
		}
		if(name == null || name == ""){
			alert("이름는 필수사항 입니다.");
			document.joinForm.name.focus();
			return;
		}
		document.joinForm.submit();
	}
</script>
</head>
<body>
	<h2>회원가입</h2>
	<form action="joinCheck.jsp" method="post" name="joinForm">
		아이디 : <input type="text" name="id" size="10"><br>
		비밀번호 : <input type="password" name="pw" size="10"><br>
		비밀번호 확인 : <input type="password" name="pwCheck" size="10"><br>
		
		이름 : <input type="text" name="name" size="10"><br>
		이메일 : <input type="text" name="email" size="20"><br>
		주소 : <input type="text" name="address" size="20"><br>
		
		<input type="button" value="회원가입" onclick="joinFormCheck()">
	</form>
</body>
</html>