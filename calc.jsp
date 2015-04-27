<%@ page contentType="text/html; charset=euc-kr"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head> 
<body> 
 
<h2> 
<% 
request.setAttribute("name", "가길동"); 
request.setAttribute("tot", new Integer(190)); 
request.setAttribute("avg", 95); 
%> 
 
Scriptlet을 이용한 경우<BR><BR> 
<% 
String name = (String)request.getAttribute("name"); 
Object  obj = request.getAttribute("tot"); 
Integer tot = (Integer)obj; 
//int tot = itg.intValue(); 
int avg = (Integer)(request.getAttribute("avg"));
 
out.println("성명: " + name + "<br>"); 
out.println("총점: " + (tot) + "<br>"); 
out.println("가산점: " + (tot+5) + "점<br>"); 
out.println("평균: " + (avg+3) + "점<br>"); 
%> 
 
<br><br>
<HR> 
EL을 사용한 경우<BR><BR>
성명:${name}<br> 
총점:${tot}<br> 
가산점:${tot+5} 점<br> 
평균:${avg+3} 점<br> 
</h2> 
 
</body> 
</html> 
