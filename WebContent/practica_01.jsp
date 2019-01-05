<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web JSP</title>
</head>
<body>
<h1>Primer JSP</h1>
	<%
		Date d= new Date();
		String ahora= DateFormat.getDateInstance().format(d);
		out.println("Hola Mundo JSP \n");
		out.println(ahora+"\n");
	%>

	<%
		int numero = 7, factorial = 1;
		for(int i=numero; i>1; i--) {
    	factorial *= i;
    	out.println("\n"+ factorial+"\n");
		}
	%>
</body>
</html>