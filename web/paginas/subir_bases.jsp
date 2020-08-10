<%-- 
    Document   : subir_bases
    Created on : 14/07/2020, 07:24:01 PM
    Author     : Monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilo_base.css" rel="stylesheet" type="text/css"/>
        <link href="../multimedia/icono.png" rel="shortcut icon">
        <title>Subir Bases</title>
        <script type="text/javascript">
            function Confirmar() {
            var mensaje = confirm("¿Seleccionaste el Archivo?");
                if (mensaje) {
                    alert("¡Archivo subido!");
                }else {
                    alert("¡No has seleccionado nada!");
                }
            }
</script>
    </head>
    <body>
    <center>
        <p aling="center" style="font-family: Times New Roman;">En este apartado solo podras subir los archivos</p>
        <p aling="center" style="font-family: Times New Roman;">Solo podra subir archivos .txt</p>
        <br><br>
        <input type="file" name="archivo" accept=".txt">
        <br><br>
        <input type="button" onclick="Confirmar()" value="Subir Archivo" />
    </center>
    </body>
</html>
