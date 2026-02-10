<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <font style ="color: black; font-size:45px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" >כניסה</font>
  <form name="formPage" method="post" runat="server">

כתובת מייל: <input type="email" name="email" id="email" placeholder="example@gmail.com" required> 
      <br /><br /> 
      סיסמה: <input type="password" name="password" id="password" placeholder="הכנס סיסמה" required> 
      <br /><br />
      <input id="Submit2" type="submit" value="שלח" /> <br /><br />
</form>

<br />


    <%= stResult %>    <br />
    
</asp:Content>

