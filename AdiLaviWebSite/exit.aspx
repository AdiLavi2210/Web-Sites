<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="exit.aspx.cs" Inherits="exit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<font style="color: black; font-size:45px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">יציאה</font> 
<% 
    // משמיד את הסשן ומנקה את המשתנים
    Session.Abandon(); 
    
    // מנתב את המשתמש לדף ההתחברות
    Response.Redirect("login.aspx"); 
%>
</asp:Content>

