<%@ Page Title="דף מנהל" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menahel.aspx.cs" Inherits="menahel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center; padding: 30px; font-family: 'Segoe UI', sans-serif;"> <% /* אזור עטיפה ראשי של דף הניהול: ממקם טקסט במרכז (text-align: center), מרווח פנימי 30px (padding) וגופן Segoe UI */ %>
        
    <%-- כותרת דף הניהול --%>
    <h1 style="color: #d32f2f; font-size: 42px; font-weight: bold; margin-bottom: 5px;">לוח בקרת מנהל 👑</h1> <% /* כותרת ראשית (h1) בצבע אדום (color), גודל 42px, כתב מודגש (font-weight: bold) ומרווח תחתון קטן של 5px (margin-bottom) */ %>
    <p style="color: #666; margin-bottom: 30px;">צפייה, סינון וחיפוש משתמשים רשומים במערכת</p> <% /* פסקת תיאור (p) בצבע אפור (color: #666) ומרווח חיצוני תחתון של 30px כדי להתרחק מהטופס */ %>

    <%-- הנה החלק שהיה חסר: טופס החיפוש של המנהל! --%>
    <div style="background-color: #ffebee; display: inline-block; padding: 20px; border-radius: 12px; margin-bottom: 35px; text-align: right; box-shadow: 0 4px 10px rgba(0,0,0,0.05); border: 1px solid #ffcdd2;"> <% /* תיבת טופס החיפוש: רקע ורדרד (background-color), גודל לפי התוכן (display: inline-block), מרווח פנימי 20px, פינות עגולות 12px, יישור ימינה, צל ומסגרת אדומה עדינה */ %>
        <strong style="color: #c62828; font-size: 16px;">🔍 מסנני חיפוש (LIKE):</strong> <% /* תגית טקסט מודגש (strong) בצבע אדום כהה שמציינת שהחיפוש מתבצע בעזרת פקודת LIKE ב-SQL (חיפוש חלקי) */ %>
        <br /><br /> <% /* שתי תגיות ירידת שורה (br) כדי ליצור רווח אנכי בתוך תיבת החיפוש */ %>
        
        <%-- שדה ראשון: חיפוש לפי שם --%>
        <label style="font-weight: bold; color: #444;">חפש לפי שם:</label> <% /* תגית תווית (label) מודגשת בצבע אפור כהה המציינת את תפקיד שדה הטקסט שלידה */ %>
        <input type="text" name="fullname" placeholder="הקלד חלק מהשם..." style="padding: 8px; margin: 0 10px; border: 1px solid #ccc; border-radius: 6px; width: 180px;" /> <% /* שדה קלט מסוג טקסט (input type="text") עם שם משתנה לקוד (name), טקסט רמז קבוע (placeholder), מרווחים, מסגרת עדינה, פינות עגולות ורוחב של 180px */ %>
        
        <%-- שדה שני: חיפוש לפי אימייל --%>
        <label style="font-weight: bold; color: #444;">חפש לפי מייל:</label> <% /* תגית תווית (label) מודגשת עבור שדה החיפוש של האימייל */ %>
        <input type="text" name="email" placeholder="הקלד חלק מהמייל..." style="padding: 8px; margin: 0 10px; border: 1px solid #ccc; border-radius: 6px; width: 180px;" /> <% /* שדה קלט טקסט עבור האימייל, בעיצוב זהה לשדה השם לשמירה על אחידות */ %>
        
        <%-- כפתור שמבצע את ה-PostBack ושולח את נתוני החיפוש לקוד ה-cs --%>
        <input type="submit" value="סנן משתמשים 🎯" style="background-color: #d32f2f; color: white; border: none; padding: 9px 20px; border-radius: 6px; font-weight: bold; cursor: pointer;" /> <% /* כפתור שליחה (input type="submit") שמבצע PostBack ומעביר את הנתונים לשרת, מעוצב באדום עם טקסט לבן, ללא מסגרת, ומשנה את העכבר ליד (cursor: pointer) */ %>
    </div> <% /* סגירת תיבת ה-div של טופס החיפוש */ %>

    <br /> <% /* תגית ירידת שורה ליצירת מרווח בין טופס החיפוש לטבלה שמתחתיו */ %>

    <%-- אזור הצגת הטבלה הדינמית שמגיעה מקוד השרת (C#) --%>
    <div style="max-width: 1000px; margin: 0 auto; overflow-x: auto;"> <% /* תיבת עטיפה לטבלה: רוחב מקסימלי 1000px, מירכוס התיבה (margin: 0 auto), ומאפשרת פס גלילה אופקי במסכים קטנים כדי שהטבלה לא תיחתך (overflow-x: auto) */ %>
        <%= st %> <% /* פקודת שרת להדפסה ישירה (Response.Write): שותלת בדף את המשתנה המחרוזתי st שמכיל את קוד ה-HTML של טבלת המשתמשים שנבנתה ב-C# */ %>
    </div> <% /* סגירת תיבת ה-div שעוטפת את הטבלה הדינמית */ %>

</div> <% /* סגירת תיבת ה-div הראשית של דף הניהול */ %>
</asp:Content> 