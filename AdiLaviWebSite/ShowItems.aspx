<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowItems.aspx.cs" Inherits="ShowItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:black; font-size:45px;">רשימת הפריטים באתר</h1>
    
    <br />
    <%-- כאן תודפס הטבלה מה-CS --%>
    <%= st %>
</asp:Content>

