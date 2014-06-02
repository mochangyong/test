<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Request Test3</title>

</head>
<body>
<h1>쿠키 , URL.URI,요청방식에 관련된 정보 예제</h1>
<table border = "1">
<tr>
<td>쿠키정보</td>
<% 
 Cookie[] cookie=request.getCookies();

if(cookie==null){
	%>
	<td>쿠키가  존재하지 않습니다.</td>
	<% }else{
		
		for( int i= 0; i<cookie.length; i++){
		%>
		<td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)&nbsp;&nbsp;</td>
		<%
		}
		
	}
		%>
</tr>
<tr>
<td>서버도네임명</td>
<td><%=request.getServerName() %></td>
</tr>	




</table>
</body>
</html>