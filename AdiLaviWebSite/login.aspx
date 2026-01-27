<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <font style ="color: black; font-size:45px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" >כניסה</font>
    כתובת מייל: <input type="email" name="email" id="email" placeholder="example@gmail.com" required>
<br /><br />

 סיסמה: <input type="pasword" name="pasword" id="pasword" placeholder="הכנס סיסמה" required>
<br /><br />

    <% = email %>    <br />
    <%  = pasword %>    <br />
</asp:Content>

