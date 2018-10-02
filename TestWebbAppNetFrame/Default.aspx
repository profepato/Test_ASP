<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestWebbAppNetFrame.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    </head>
    <body>
        <form action="SaludarHandler.ashx" id="form1">
            <h1>Handler ASHX</h1>
            <input type="text" name="nombre" placeholder="Ingrese su nombre"/>
            <input type="submit" />
        </form>

        <form action="Procesar.aspx" id="form2">
            <h1>Con ASP</h1>
            <input type="text" name="nombre" placeholder="Ingrese su nombre"/>
            <input type="submit" />
        </form>

        <% if (Session["nombre"] != null) {
                String nombre = Session["nombre"].ToString();

                Response.Write("Nombre sesión: "+nombre);
            } %>
    </body>
</html>
