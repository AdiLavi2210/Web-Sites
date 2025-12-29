<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harshama.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:black; font-size:45px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">הרשמה</h1>

    <form name="formPage" method="post" runat="server">
        שם מלא: <input type="text" name="fullname" id="fullname" placeholder="הכנס שם מלא" required>
        <br /><br />

        כתובת מייל: <input type="email" name="email" id="email" placeholder="example@mail.com" required>
        <br /><br />

        גיל: <input type="number" name="age" id="age" placeholder="הכנס גיל" min="1" max="120" required>
        <br /><br />

        מין:
        <br />
        זכר <input type="radio" name="gender" value="זכר" id="gender_male" checked>
        נקבה <input type="radio" name="gender" value="נקבה" id="gender_female">
        אחר <input type="radio" name="gender" value="אחר" id="gender_other">
        <br /><br />

        הערות נוספות:
        <br />
        <textarea rows="5" cols="30" name="notes" id="notes" placeholder="הכנס הערות"></textarea>
        <br /><br />

        <input id="Submit1" type="submit" value="שלח" />
    </form>
</asp:Content>

