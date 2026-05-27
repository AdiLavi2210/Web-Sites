<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowItems.aspx.cs" Inherits="ShowItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 30px; font-family: 'Segoe UI', sans-serif;">
        
        <h1 style="color: #0288d1; font-size: 40px; font-weight: bold;">חיפוש יעדים ואטרקציות 🔍</h1>
        <p style="color: #666;">מצאו את הפריטים או היעדים המושלמים לפי התקציב והשם שמתאים לכם</p>

        <div style="background-color: white; display: inline-block; padding: 25px; border-radius: 15px; box-shadow: 0 8px 25px rgba(0,0,0,0.1); text-align: right; min-width: 500px; border-top: 6px solid #26c6da; margin-bottom: 30px;">
            <div style="display: flex; gap: 15px;">
                
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #333;">שם היעד/הפריט (או חלק ממנו):</label>
                    <input type="text" name="searchName" placeholder="לדוגמה: לונדון" style="width: 100%; padding: 10px; margin-top: 8px; border: 1px solid #ddd; border-radius: 8px;" />
                </div>

                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #333;">מחיר מקסימלי (ב-₪):</label>
                    <input type="number" name="searchPrice" placeholder="לדוגמה: 500" style="width: 100%; padding: 10px; margin-top: 8px; border: 1px solid #ddd; border-radius: 8px;" />
                </div>

            </div>

            <input type="submit" name="submit" value="צא לחיפוש! 🚀" 
                   style="width: 100%; background: linear-gradient(135deg, #26c6da, #0288d1); color: white; border: none; padding: 12px; border-radius: 8px; font-size: 16px; cursor: pointer; font-weight: bold; margin-top: 20px;" />
        </div>

        <br />

        <div style="display: inline-block; min-width: 700px; margin-top: 10px;">
            <%= printString %>
        </div>

    </div>
</asp:Content>