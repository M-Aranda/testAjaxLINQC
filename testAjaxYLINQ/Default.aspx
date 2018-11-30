<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testAjaxYLINQ.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="JavaScript/js.js"></script>
        <script>
            function agregar() {
                var sexo = $("#sexo").val();
                // alert(rutUsuario);// alert() debeise no usarse, pero se puede
                $.ajax({
                    type: 'POST',
                    url: '../Controller/test.ashx',
                    data: {
                        nombre: sexo
                    }
                })
            }
        </script>


</head>
<body>
    <form id="f1" action="" method="post" runat="server">
        <input type="text" id="sexo" name="sexo" placeholder="Sexo: " required>
        <br>
        <input type="submit" value="registrar" onclick="agregar()">

    </form>
</body>
</html>
