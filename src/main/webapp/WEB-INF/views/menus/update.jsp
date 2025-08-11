<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet"  href="/css/common.css" />

<style>
	
	td {
	   padding : 10px;
	   width : 700px;
	   text-align: center; 	   
	}
	
	td:nth-of-type(1) {
	   width: 200px;
	} 
	
	input { width : 100%; }
	input[type=submit] { width:100px; }
	

</style>

</head>
<body>
  <main>
	<h2>정보 수정</h2>
	<form action="/Menus/Update" method="POST">
	  <table>
	    <tr>
	      <td>아이디</td>
	      <td><input type="text" name="userid" 
	                value="${ menu.userid }" readonly /></td>
	    </tr>
	    <tr>
	      <td>이전 비밀번호</td>
	      <td><input type="password" id="pwd1" value="${ menu.passwd }"/></td>
	    </tr>
	    <tr>
	      <td>새 비밀번호</td>
	      <td><input type="password" name="passwd" id="pwd2" value="${ menu.passwd }"/></td>
	    </tr>
	    <tr>
	      <td>비밀번호 확인</td>
	      <td><input type="password" id="pwd3" value="${ menu.passwd }"/></td>
	    </tr>
	    <tr>
	      <td>이름</td>
	      <td><input type="text" name="username"  value="${ menu.username }"/></td>
	    </tr>
	    <tr>
	      <td>이메일</td>
	      <td><input type="text" name="email" value="${ menu.email }" /></td>
	    </tr>
	    <tr>	      
	      <td colspan="2">
	      <input type="submit" value="등록" />
	      </td>
	    </tr>
	  </table>
	</form>
  </main>	
    
  <script>
  const  formEl = document.querySelectorAll("form")[0];
  
  formEl.addEventListener('submit', function(e) {
  	// alert('ok')
  	
  	const  inputEl2 = document.querySelector('#pwd1')
  	if( inputEl2.value.trim() == '' ) {
  		alert('이전 비밀번호가 입력되지 않았습니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl2.focus();
  		return false
  	}
  	
  	if( '${menu.passed}' != inputEl2.value) {
  		alert('이전 비밀번호가 틀립니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl2.focus();
  		return false
  	}
  	
  	const  inputEl3 = document.querySelector('#pwd2')
  	if( inputEl3.value.trim() == '' ) {
  		alert('새 비밀번호가 입력되지 않았습니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl3.focus();
  		return false
  	}
  	
  	const  inputEl4 = document.querySelector('#pwd3')
  	if( inputEl4.value.trim() == '' ) {
  		alert('새 비밀번호가 입력되지 않았습니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl4.focus();
  		return false
  	}
  	
  	const  inputEl5 = document.querySelector('[name="username"]')
  	if( inputEl5.value.trim() == '' ) {
  		alert('이름이 입력되지 않았습니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl5.focus();
  		return false
  	} 
  	
  	const  inputEl6 = document.querySelector('[name="email"]')
  	if( inputEl6.value.trim() == '' ) {
  		alert('이메일이 입력되지 않았습니다')
  		e.stopPropagation();
  		e.preventDefault();
  		inputEl6.focus();
  		return false
  	} 
  })
    
  </script>
  
  
  
</body>
</html>



