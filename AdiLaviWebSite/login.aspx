<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 40px;"> <% /* אזור עטיפה ראשי של דף ההתחברות: ממקם את כל התוכן במרכז (text-align: center) ונותן מרווח פנימי של 40 פיקסלים */ %>
    <%-- כותרת בסטייל של האתר --%>
    <h1 style="color: #0288d1; font-size:48px; font-family: 'Segoe UI', sans-serif; font-weight: bold; margin-bottom: 30px;">כניסה למטיילים רשומים</h1> <% /* כותרת ראשית (h1) בצבע תכלת-כחול, גודל גופן 48px, גופן Segoe UI, כתב מודגש ומרווח תחתון של 30px */ %>

    <%-- תיבת ההתחברות --%>
    <div style="background-color: white; display: inline-block; padding: 40px; border-radius: 15px; box-shadow: 0 8px 20px rgba(0,0,0,0.15); text-align: right; min-width: 320px;"> <% /* תיבת הטופס הלבנה: צבע רקע לבן, גודל לפי התוכן (display: inline-block), מרווח פנימי 40px, פינות עגולות 15px, אפקט צל חזק, יישור לימין ורוחב מינימלי של 320px */ %>
                        
        <label style="font-weight: bold; color: #333;">כתובת מייל:</label> <br /> <% /* תווית (label) מודגשת בצבע אפור כהה עבור שדה המייל, ותגית ירידת שורה (br) כדי שהשדה הבא יתחיל מתחתיה */ %>
        <input type="email" name="email" id="email" placeholder="example@gmail.com" required  <% /* שדה קלט מסוג אימייל (type="email") שמבצע ולידציה אוטומטית למבנה של מייל, עם שם ותעודה, טקסט רמז (placeholder), והגדרה כשדה חובה (required) */ %>
               style="width: 100%; padding: 12px; margin: 8px 0 20px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box;"> <% /* עיצוב שדה המייל: רוחב מלא, מרווח פנימי 12px, מרווחים חיצוניים, מסגרת אפורה עדינה, פינות עגולות 8px, ותכונת box-sizing שמונעת מהשדה לחרוג מהתיבה בגלל המרווחים */ %>
        <br /> <% /* תגית ירידת שורה כדי להפריד בין שדה המייל לשדה הסיסמה */ %>

        <label style="font-weight: bold; color: #333;">סיסמה:</label> <br /> <% /* תווית (label) מודגשת עבור שדה הסיסמה, וירידת שורה */ %>
        <input type="password" name="password" id="password" placeholder="הכנס סיסמה" required  <% /* שדה קלט מסוג סיסמה (type="password") שמסתיר את התווים המוקלדים (מציג כוכביות או נקודות), עם שם, תעודה, רמז, ומוגדר כשדה חובה (required) */ %>
               style="width: 100%; padding: 12px; margin: 8px 0 25px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box;"> <% /* עיצוב שדה הסיסמה: זהה לשדה המייל, עם מרווח חיצוני תחתון מעט גדול יותר (25px) כדי ליצור מרחק לפני כפתור השליחה */ %>
        <br /> <% /* תגית ירידת שורה כדי להפריד בין שדה הסיסמה לכפתור */ %>

        <input id="Submit2" type="submit" value="יאללה, טסים! 🛫"  <% /* כפתור שליחה (type="submit") עם מזהה (id) וטקסט שמוצג על הכפתור (value) */ %>
               style="width: 100%; background: linear-gradient(135deg, #0288d1, #26c6da); color: white; border: none; padding: 15px; border-radius: 8px; font-size: 18px; cursor: pointer; font-weight: bold; transition: 0.3s;" /> <% /* עיצוב כפתור: רוחב מלא, רקע מדורג מכחול לתכלת, טקסט לבן, ללא מסגרת, מרווח פנימי 15px, פינות עגולות, גודל גופן 18px, משנה את העכבר ליד (cursor: pointer), כתב מודגש, ואפקט מעבר חלק (transition) */ %>
    </div> <% /* סגירת תיבת ה-div הלבנה של הטופס */ %>

    <br /><br /> <% /* שתי תגיות ירידת שורה כדי ליצור רווח משמעותי בין הטופס לבין הודעת השגיאה */ %>
    <%-- הצגת הודעת השגיאה (אם המייל או הסיסמה לא נכונים) --%>
    <div style="color: #d32f2f; font-weight: bold; font-size: 1.1em;"> <% /* תיבת div המיועדת להודעת שגיאה: צבע טקסט אדום, כתב מודגש וגודל גופן מעט גדול מהרגיל (1.1em) */ %>
        <%= stResult %> <% /* פקודת הדפסה של ASP.NET המציגה ישירות לדף את המשתנה המחרוזתי stResult (המכיל הודעת שגיאה אם הפרטים שגויים, או ריק אם הכל תקין) */ %>
    </div> <% /* סגירת תיבת הודעת השגיאה */ %>
</div> <% /* סגירת תיבת ה-div הראשית והעליונה ביותר שעוטפת את כל דף ההתחברות */ %>
</asp:Content>