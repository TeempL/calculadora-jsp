<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/calculadora.css">
</head>
<body>
	<% 
			double resultado = 0;
			String error = "";
			String view = request.getParameter("view");
			
			double calculo1 = 0;
			double calculo2 = 0;
			
		try{	
			if(request.getParameter("soma") != null && request.getParameter("soma").equals("+")){
				resultado = Double.parseDouble(request.getParameter("calculo1")) + Double.parseDouble(request.getParameter("calculo2"));
			}else if(request.getParameter("subtrai") != null && request.getParameter("subtrai").equals("-")){
				resultado = Double.parseDouble(request.getParameter("calculo1")) - Double.parseDouble(request.getParameter("calculo2"));
			}else if(request.getParameter("multiplica") != null && request.getParameter("multiplica").equals("*")){
				resultado = Double.parseDouble(request.getParameter("calculo1")) * Double.parseDouble(request.getParameter("calculo2"));
			}else if(request.getParameter("elevado") != null && request.getParameter("elevado").equals("x²")){
				resultado = Math.pow(Double.parseDouble(request.getParameter("calculo1")), Double.parseDouble(request.getParameter("calculo2")));			
			}else if(request.getParameter("divide") != null && request.getParameter("divide").equals("/")){
				try{
					resultado = Double.parseDouble(request.getParameter("calculo1")) / Double.parseDouble(request.getParameter("calculo2"));

				}catch(NullPointerException e){
					throw new RuntimeException("Impossivel divir por 0!", e);
				}
			}else{
				error = "Bem vindo!!";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>

	<form>
    	<span style="color: blue; font-size: 17px"><%=error%></span>
    	<h3>Calculadora</h3>
    	
    <input class="mostra" type="text" readonly="readonly" name="view" value="<%=resultado%>">
  	
    <br>
    <input placeholder="Digite aqui:" type="text" name="calculo1">
      <br>
    	
      <br>
    <input placeholder="Digite aqui:" type="text" name="calculo2">
  	
    <input type="submit" value="+" name="soma">
   
    <input type="submit" value="-" name="subtrai">
    
    <input type="submit" value="*" name="multiplica">

    <input type="submit" value="/" name="divide">
    <input type="submit" value="x²" name="elevado">
    
    </form>
</body>
</html>