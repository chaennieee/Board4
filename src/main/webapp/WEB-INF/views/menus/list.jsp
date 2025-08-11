<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"     %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet"  href="/css/common.css" />
<!-- SCSS 문법가능하게하는 라이브러리 
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
 -->

<style>
   td {text-align: center;}
   
   tr:first-child {
   	   background-color : skyblue;
   	   font-weight : bold;  
   	   /* SCSS 문법 (sass 문법중에 하나)
   	   : 별도 라이브러리 필요*/
   	   td {
       	   border-color: black;
   	   	   color: white;
       }      
   }
   
   td[colspan="8"] {
       text-align : right; 
   }  	   
   
   /*
   tr:first-child  td {
       border-color:white;
   }
   */
   
</style> 

</head>
<body>
  <main>
	<h2>회원 목록</h2>
	<table>
	  <tr>
	    <td>USERID</td>
	    <td>PASSWORD</td>
	    <td>USERNAME</td>
	    <td>EMAIL</td>
	    <td>LEVEL</td>
	    <td>INDATE</td>
	    <td>삭제</td>
	    <td>수정</td>
	  </tr>
	  
	  <tr>
	    <td colspan="8">
	      <a href="/Menus/WriteForm">회원가입</a>
	    </td>
	  </tr>
	
	  <c:forEach  var="menu" items = "${ menuList }" >
	  <tr>
	    <td>${ menu.userid   }</td>
	    <td>${ menu.passwd }</td>
	    <td>${ menu.username  }</td>	   
	    <td>${ menu.email  }</td>	   
	    <td>${ menu.memlevel  }</td>	   
	    <td>${ menu.indate  }</td>	   
	    <td><a href="/Menus/Delete?userid=${menu.userid}">삭제</a></td>
	    <td><a href="/Menus/UpdateForm?userid=${menu.userid}">수정</a></td>
	  </tr>
	  </c:forEach>
	  
	</table>
  </main>	
</body>
</html>




