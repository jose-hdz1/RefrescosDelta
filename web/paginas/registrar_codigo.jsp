<%-- 
    Document   : registrar_codigo
    Created on : 14/07/2020, 04:19:25 PM
    Author     : Monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../multimedia/icono.png" rel="shortcut icon">
        <link href="../css/estilos3.css" rel="stylesheet" type="text/css"/>
        <title>¡Registro de Codigos!</title>
    </head>
    <body>
        <div class="login-box">
            <img class="avatar" src="../multimedia/premio.png">
            <h1>Ingresa Códigos</h1>
            <form>
                <label for="codigo">Código</label>
                <input name="txtCod" type="text" placeholder="Ingrese Código" autofocus required="" maxlength="9">
                
                <input name="btR" type="submit" value="Registrar" onclick="alert('50 Puntos Registrados')">
            </form>
        </div>
        <br>
        <a href="index.html"><img src='../multimedia/salir.png' width="100" height="100"></a>
    </body>
</html>
