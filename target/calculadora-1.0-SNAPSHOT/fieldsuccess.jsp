<%--
  Created by IntelliJ IDEA.
  User: Andrea Suarez
  Date: 02/12/2020
  Time: 11:44 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="model.Calculator" %>
<%
    float res = 0;
    Calculator calculator = (Calculator)request.getSession().getAttribute("Calculadora");
    String operacion = calculator.getOperacion();

    if (operacion.equals("suma")){
        res = calculator.getValor1() + calculator.getValor2();
    }
    else if (operacion.equals("resta")){
        res = calculator.getValor1() - calculator.getValor2();
    }
    else if (operacion.equals("multiplicacion")){
        res = calculator.getValor1() * calculator.getValor2();
    }
    else if (operacion.equals("division")){
        res = calculator.getValor1() / calculator.getValor2();
    }
    else if (operacion.equals("residuo")){
        res = (calculator.getValor1() % calculator.getValor2());
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Calculo exitoso</title>
</head>
<body>
    <div class="container" style="width: 40%; margin-left: 30%; margin-right: 30%; margin-top: 300px;">
        <h3>El resultado de la <%= operacion%> es : <%= res %></h3>
        <a href="index.jsp">Volver</a>
    </div>
</body>
</html>
