<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menahel.aspx.cs" Inherits="menahel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <font style ="color: black; font-size:45px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" >מנהל</font>
        
    <form name="menahel" method="post" runat="server">

    שם מלא: <input type="text" name="fullname" id="fullname" placeholder="הכנס שם מלא" required>
    <br /><br />

    כתובת מייל: <input type="email" name="email" id="email" placeholder="example@gmail.com" required>
    <br /><br />

 <input id="Submit1" type="submit" value="שלח" />

        </form>
    <%  = st %>    <br />

</asp:Content>

