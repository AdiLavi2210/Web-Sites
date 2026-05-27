<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menahel.aspx.cs" Inherits="menahel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 30px;">
        <%-- כותרת דף ניהול --%>
        <h1 style="color: #d32f2f; font-size:45px; font-family: 'Segoe UI', sans-serif; font-weight: bold;">לוח בקרה - מנהל מערכת</h1>
        
        <div style="background-color: #fff; border-top: 5px solid #d32f2f; display: inline-block; padding: 25px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); min-width: 400px; text-align: right;">
            
            <p style="font-size: 18px; color: #333;">שלום **מנהלת האתר**, כאן תוכלי לצפות בנתוני המשתמשים ולנהל את התוכן.</p>
            
            <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;" />

            <%-- כאן יוצגו הנתונים (הטבלה שה-C# מייצר) --%>
            <div style="overflow-x: auto;">
                <%= st %>
            </div>

        </div>
    </div>
</asp:Content>