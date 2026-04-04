<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:black; font-size:45px; font-family:sans-serif;">הוספת פריט חדש</h1>

    <form name="formAddItem" method="post" runat="server">
        שם הפריט: <input type="text" name="itemName" placeholder="הכנס שם פריט" required />
        <br /><br />

        תיאור הפריט: 
        <br />
        <textarea rows="3" cols="30" name="itemDescription" placeholder="הכנס תיאור"></textarea>
        <br /><br />

        כמות: <input type="number" name="itemCount" placeholder="0" required />
        <br /><br />

        מחיר: <input type="number" name="itemPrice" placeholder="0" required />
        <br /><br />

        <input id="Submit1" type="submit" value="הוסף פריט למערכת" />
    </form>

    <br />
    <%-- כאן נציג הודעת הצלחה או שגיאה --%>
    <%= msg %> 

</asp:Content>

