<%-- 
    Document   : login
    Created on : 14/07/2020, 02:59:31 PM
    Author     : Monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../multimedia/icono.png" rel="shortcut icon">
        <link href="css/estilos1.css" rel="stylesheet" type="text/css"/>
        <title>Iniciar Sesion</title>
    </head>
    <body>
        <script type="text/javascript">
        function validarPasswd() {
            var p1 = document.getElementById("pas1").value;
            var p2 = document.getElementById("pas2").value;
            var espacios = false;
            var cont = 0;
            // Este bucle recorre la cadena para comprobar
            // que no todo son espacios
            while (!espacios && (cont < p1.length)) {
                if (p1.charAt(cont) == " ")
                    espacios = true;
                cont++;
            }
            if (espacios) {
                alert("La contraseña no puede contener espacios en blanco");
                return false;
            }
            if (p1.length == 0 || p2.length == 0) {
                alert("Los campos de la password no pueden quedar vacios");
                return false;
            }
            if (p1 != p2) {
                alert("Las passwords deben de coincidir");
                return false;
            } else {
                return true;
            }
        }
        function soloLetras(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
            especiales = "8-37-39-46";
            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }
            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                return false;
            }
        }
        function solonumeros(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            numeros = "0123456789";
            especiales = "8-37-39-46";
            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }
            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
                return false;
            }
        }
    </script>
        <div class="login-box">
            <img class="avatar" src="multimedia/icono.png">
            <h1>Iniciar Sesión</h1>
            <form>
                <label for="usuario">Usuario</label>
                <input name="txtUsu" type="text" placeholder="Usuario" autofocus required="" maxlength="16" minlength="3"
                       onkeypress="return soloLetras(event)">
                
                <label for="password">Contraseña</label>
                <input name="txtContra" type="password" placeholder="Contraseña" required="" maxlength="16" minlength="3"
                       pattern="(?=.*\d)(?=.*[a-záéíóúüñ]).*[A-ZÁÉÍÓÚÜÑ].*"
                       accept=""title="Debe tener al menos una mayúscula, una minúscula y un dígito">
                
                <input name="btn" type="submit" value="Iniciar Sesion">
            </form>
        </div>
    </body>
</html>
