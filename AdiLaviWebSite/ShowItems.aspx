<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowItems.aspx.cs" Inherits="ShowItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center; padding: 30px; font-family: 'Segoe UI', sans-serif;"> <% /* אזור עטיפה ראשי של דף החיפוש: ממקם את הכל במרכז (text-align: center), מרווח פנימי 30px וגופן Segoe UI */ %>
        
    <h1 style="color: #0288d1; font-size: 40px; font-weight: bold;">חיפוש יעדים ואטרקציות 🔍</h1> <% /* כותרת ראשית (h1) בצבע תכלת-כחול, גודל גופן 40px ובכתב מודגש */ %>
    <p style="color: #666;">מצאו את הפריטים או היעדים המושלמים לפי התקציב והשם שמתאים לכם</p> <% /* פסקת תיאור קטנה באפור (color: #666) שמסבירה לגולש מה עושים בדף */ %>

    <div style="background-color: white; display: inline-block; padding: 25px; border-radius: 15px; box-shadow: 0 8px 25px rgba(0,0,0,0.1); text-align: right; min-width: 500px; border-top: 6px solid #26c6da; margin-bottom: 30px;"> <% /* תיבת טופס החיפוש הלבנה: גודל לפי התוכן (inline-block), מרווח פנימי 25px, פינות עגולות 15px, צל חזק, יישור לימין, רוחב מינימלי 500px, פס עליון מעוצב בתכלת ומרווח תחתון 30px */ %>
        <div style="display: flex; gap: 15px;"> <% /* קונטיינר פנימי מסוג Flexbox כדי להציג את שני שדות החיפוש זה לצד זה בשורה אחת עם רווח של 15px ביניהם (gap) */ %>
            
            <div style="flex: 1;"> <% /* תיבה עבור השדה הראשון: התכונה flex: 1 גורמת לה להתפרס באופן שווה ולתפוס חצי מהרווח הזמין בשורה */ %>
                <label style="font-weight: bold; color: #333;">שם היעד/הפריט (או חלק ממנו):</label> <% /* תווית (label) מודגשת בצבע אפור כהה המציינת את תפקיד שדה הטקסט */ %>
                <input type="text" name="searchName" placeholder="לדוגמה: לונדון" style="width: 100%; padding: 10px; margin-top: 8px; border: 1px solid #ddd; border-radius: 8px;" /> <% /* שדה קלט מסוג טקסט (type="text") עם שם משתנה לקוד (name), טקסט רמז, רוחב מלא בתוך חצי השורה שלו, מרווחים, מסגרת ופינות עגולות */ %>
            </div> <% /* סגירת תיבת חצי השורה השמאלי (שדה השם) */ %>

            <div style="flex: 1;"> <% /* תיבה עבור השדה השני: גם היא מקבלת flex: 1 כדי להתחלק חצי-חצי ברווח עם השדה הראשון */ %>
                <label style="font-weight: bold; color: #333;">מחיר מקסימלי (ב-₪):</label> <% /* תווית מודגשת עבור שדה המחיר */ %>
                <input type="number" name="searchPrice" placeholder="לדוגמה: 500" style="width: 100%; padding: 10px; margin-top: 8px; border: 1px solid #ddd; border-radius: 8px;" /> <% /* שדה קלט מסוג מספר (type="number") שמאפשר להקליד רק ספרות ומציג חצים להעלאה והורדה של הערך, בעיצוב זהה לשדה הראשון לאחידות */ %>
            </div> <% /* סגירת תיבת חצי השורה הימני (שדה המחיר) */ %>

        </div> <% /* סגירת תיבת ה-Flexbox שסידרה את השדות זה לצד זה */ %>

        <input type="submit" name="submit" value="צא לחיפוש! 🚀"  <% /* כפתור שליחה מסוג submit עם שם וטקסט שמוצג על הכפתור */ %>
               style="width: 100%; background: linear-gradient(135deg, #26c6da, #0288d1); color: white; border: none; padding: 12px; border-radius: 8px; font-size: 16px; cursor: pointer; font-weight: bold; margin-top: 20px;" /> <% /* עיצוב כפתור: רוחב מלא בתיבה, רקע מדורג, טקסט לבן, ללא מסגרת, מרווח פנימי 12px, פינות עגולות, עכבר הופך ליד (cursor: pointer), כתב מודגש ומרווח עליון להתרחקות מהשדות */ %>
    </div> <% /* סגירת תיבת טופס החיפוש הלבנה הגדולה */ %>

    <br /> <% /* תגית ירידת שורה ליצירת מרווח אנכי */ %>

    <div style="display: inline-block; min-width: 700px; margin-top: 10px;"> <% /* תיבת עטיפה להצגת תוצאות החיפוש: מוצגת כאלמנט בשורה (inline-block), בעלת רוחב מינימלי של 700px ומרווח עליון של 10px */ %>
        <%= printString %> <% /* פקודת שרת של ASP.NET המדפיסה ישירות לדף את ערך המשתנה printString (המכיל את טבלת תוצאות החיפוש הדינמית שנבנתה ב-C#) */ %>
    </div> <% /* סגירת תיבת עטיפת התוצאות */ %>

</div> <% /* סגירת תיבת ה-div הראשית של כל דף החיפוש */ %>
</asp:Content>