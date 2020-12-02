<%--
  Created by IntelliJ IDEA.
  User: Andrea Suarez
  Date: 02/12/2020
  Time: 03:40 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Calculadora</title>
</head>
<body>
    <div class="container" style="width: 40%; margin-left: 30%; margin-right: 30%;">
        <h1><b>Calculadora</b></h1>
        <form method="post" action="calculate.do">
            <div class="form-group">
                <label for="valor1">Valor1:</label>
                <input class="form-control" type="number" name="valor1" id="valor1" placeholder="Escribe el valor 1..." required>
            </div>
            <div class="form-group">
                <input type="hidden" name="operacion" id="operacion">
                <label for="valor2">Valor2:</label>
                <input class="form-control" type="number" name="valor2" id="valor2" placeholder="Escribe el valor 2..." required>
            </div>

            <button data-destino="suma" class="btn btn-secondary" style="background-color: crimson; border-bottom-color: black; color: whitesmoke">Suma</button>
            <button data-destino="resta" class="btn btn-secondary" style="background-color: darkgoldenrod; border: black; color: whitesmoke">Resta</button>
            <button data-destino="multiplicacion" class="btn btn-secondary" style="background-color: darkcyan; border: black; color: whitesmoke">Multiplicación</button>
            <button data-destino="division" class="btn btn-secondary" style="background-color: navy; border: black; color: whitesmoke">División</button>
            <button data-destino="residuo" class="btn btn-secondary" style="background-color: deeppink; border: black; color: whitesmoke">Resuido</button>
        </form>
    </div>
</body>
</html>

<script>
    $("button").click(function (){
        var operacion = $(this).data('destino');
        $("#operacion").val(operacion);
    });
</script>
