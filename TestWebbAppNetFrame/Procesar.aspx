<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Procesar.aspx.cs" Inherits="TestWebbAppNetFrame.Procesar" %>

<%
    String nombre = Request.Params["nombre"];

    Response.Write("Hola que tal "+nombre);
%>

<a href="Default.aspx">Volver</a>
