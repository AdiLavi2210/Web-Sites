<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 40px;">
        <%-- כותרת בסטייל של האתר --%>
        <h1 style="color: #0288d1; font-size:48px; font-family: 'Segoe UI', sans-serif; font-weight: bold; margin-bottom: 30px;">כניסה למטיילים רשומים</h1>

        <%-- תיבת ההתחברות --%>
        <div style="background-color: white; display: inline-block; padding: 40px; border-radius: 15px; box-shadow: 0 8px 20px rgba(0,0,0,0.15); text-align: right; min-width: 320px;">
            
            <%-- שים לב: הסרתי את תג ה-form כדי לפתור את השגיאה מהצילום מסך --%>
            
            <label style="font-weight: bold; color: #333;">כתובת מייל:</label> <br />
            <input type="email" name="email" id="email" placeholder="example@gmail.com" required 
                   style="width: 100%; padding: 12px; margin: 8px 0 20px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box;">
            <br />

            <label style="font-weight: bold; color: #333;">סיסמה:</label> <br />
            <input type="password" name="password" id="password" placeholder="הכנס סיסמה" required 
                   style="width: 100%; padding: 12px; margin: 8px 0 25px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box;">
            <br />

            <input id="Submit2" type="submit" value="יאללה, טסים! 🛫" 
                   style="width: 100%; background: linear-gradient(135deg, #0288d1, #26c6da); color: white; border: none; padding: 15px; border-radius: 8px; font-size: 18px; cursor: pointer; font-weight: bold; transition: 0.3s;" />
        </div>

        <br /><br />
        <%-- הצגת הודעת השגיאה (אם המייל או הסיסמה לא נכונים) --%>
        <div style="color: #d32f2f; font-weight: bold; font-size: 1.1em;">
            <%= stResult %>
        </div>
    </div>
</asp:Content>