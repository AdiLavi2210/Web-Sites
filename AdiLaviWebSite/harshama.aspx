<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harshama.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language ="javascript">

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
        function validateForm() {
            // 1. קליטת הערכים מתוך השדות של הטופס
            var fullname = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("pasword").value;

            // 2. בדיקה ששם מלא לא ריק וארוך מ-2 אותיות
            if (fullname == "" || fullname.length < 2) {
                alert("בבקשה תכתבי שם מלא תקין (לפחות 2 אותיות) חחח");
                return false; // עוצר את שליחת הטופס לשרת!
            }

            // 3. בדיקה שהאימייל מכיל @ (בדיקה בסיסית וסופר חשובה לבגרות)
            if (email.indexOf("@") == -1) {
                alert("האימייל לא תקין, חסר @!");
                return false;
            }

            // 4. בדיקה שהסיסמה חזקה מספיק (למשל, לפחות 6 תווים)
            if (password.length < 6) {
                alert("הסיסמה קצרה מדי! שימי לפחות 6 תווים כדי שיהיה מאובטח");
                return false;
            }

            // אם הכל תקין - הטופס יישלח בהצלחה
            return true;
        }
    </script>

    <div style="text-align: center; padding: 20px;">
        <%-- כותרת מעוצבת --%>
        <h1 style="color: #0288d1; font-size:45px; font-family: 'Segoe UI', sans-serif; font-weight: bold;">הצטרפו לקהילת המטיילים</h1>
        <
        <div style="background-color: white; display: inline-block; padding: 30px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); text-align: right; min-width: 350px;">
            
            <%-- שימי לב: הסרתי את תג ה-form כי הוא כבר קיים ב-MasterPage --%>

            שם מלא: <br />
            <input type="text" name="fullname" id="fullname" placeholder="הכנס שם מלא" required style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px;">
            <span id ="fnErr"></span>
            <br />

            כתובת מייל: <br />
            <input type="email" name="email" id="email" placeholder="example@gmail.com" required style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px;">
            <span id ="emailErr"></span>
            <br />

            סיסמה: <br />
            <input type="password" name="pasword" id="pasword" placeholder="הכנס סיסמה" required style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px;">
            <br />

            גיל: <br />
            <input type="number" name="age" id="age" placeholder="הכנס גיל" min="1" max="120" required style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px;">
            <br />

            מין: <br />
            <div style="margin: 5px 0 15px 0;">
                <input type="radio" name="gender" value="זכר" id="gender_male" checked> זכר 
                <input type="radio" name="gender" value="נקבה" id="gender_female" style="margin-right: 10px;"> נקבה 
                <input type="radio" name="gender" value="אחר" id="gender_other" style="margin-right: 10px;"> אחר
            </div>

            הערות נוספות: <br />
            <textarea rows="4" name="text" id="text" placeholder="מה היעד הבא שלך?" style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px; font-family: sans-serif;"></textarea>
            <br />

            <input id="Submit1" type="submit" value="הירשם עכשיו ✈️" style="width: 100%; background-color: #0288d1; color: white; border: none; padding: 12px; border-radius: 5px; font-size: 18px; cursor: pointer; font-weight: bold;" />
        </div>

        <br /><br />
        <div style="color: #2e7d32; font-weight: bold; font-size: 1.2em;">
            <%= goodluck %>
        </div>
    </div>
</asp:Content>