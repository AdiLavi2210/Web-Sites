<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 30px; font-family: 'Segoe UI', sans-serif;"> <% /* אזור עטיפה ראשי של דף ההוספה: ממקם את הכל במרכז (text-align: center), מרווח פנימי 30px וגופן Segoe UI */ %>
        
    <h1 style="color: #0288d1; font-size: 40px; font-weight: bold;">הוספת יעד או פריט חדש 🎒</h1> <% /* כותרת ראשית (h1) בצבע תכלת-כחול, גודל גופן 40px ובכתב מודגש */ %>
    <p style="color: #666;">מלאו את הפרטים כדי להוסיף המלצה חדשה למערכת</p> <% /* פסקת תיאור באפור המנחה את המשתמש למלא את פרטי הטופס */ %>

    <div style="background-color: white; display: inline-block; padding: 30px; border-radius: 15px; box-shadow: 0 8px 25px rgba(0,0,0,0.1); text-align: right; min-width: 400px; border-top: 6px solid #0288d1;"> <% /* תיבת הטופס הלבנה: מוצגת כגוש בשורה (inline-block), מרווח פנימי 30px, פינות עגולות 15px, צל, יישור ימינה, רוחב מינימלי 400px ופס מעוצב עליון בכחול */ %>
            
        <%-- שם הפריט / יעד --%>
        <label style="font-weight: bold; color: #333;">שם היעד או הפריט:</label><br /> <% /* תווית (label) מודגשת עבור שדה שם הפריט, וירידת שורה (br) */ %>
        <input type="text" name="itemName" placeholder="לדוגמה: לונדון / תיק גב" required style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" /> <% /* שדה קלט טקסט קצר עם שם משתנה לקוד (name), טקסט רמז, שדה חובה (required), ברוחב מלא ופינות עגולות */ %>
        <br /> <% /* תגית ירידת שורה ליצירת מרווח בין האלמנטים */ %>

        <%-- בחירת יבשת - שדה רשימה (Select) חובה לבגרות! --%>
        <label style="font-weight: bold; color: #333;">בחר יבשת:</label><br /> <% /* תווית מודגשת עבור תפריט בחירת היבשת, וירידת שורה */ %>
        <select name="continent" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px; background-color: white;"> <% /* תגית פתיחה של תפריט בחירה נפתח (select) עם שם משתנה לקוד, מעוצב עם מסגרת ורקע לבן */ %>
            <option value="Europe">אירופה</option> <% /* אפשרות בחירה ראשונה (option): הערך שיישלח לקוד בשרת הוא Europe, והטקסט שיוצג למשתמש הוא אירופה */ %>
            <option value="Asia">אסיה</option> <% /* אפשרות בחירה שנייה עבור אסיה */ %>
            <option value="North_America">צפון אמריקה</option> <% /* אפשרות בחירה שלישית עבור צפון אמריקה */ %>
            <option value="South_America">דרום אמריקה</option> <% /* אפשרות בחירה רביעית עבור דרום אמריקה */ %>
            <option value="Africa">אפריקה</option> <% /* אפשרות בחירה חמישית עבור אפריקה */ %>
            <option value="Australia">אוסטרליה</option> <% /* אפשרות בחירה שישית עבור אוסטרליה */ %>
        </select> <% /* תגית סגירה של תפריט הבחירה הנפתח (select) */ %>
        <br /> <% /* תגית ירידת שורה */ %>

        <%-- תיאור הפריט --%>
        <label style="font-weight: bold; color: #333;">תיאור קצר:</label><br /> <% /* תווית מודגשת עבור תיבת תיאור הפריט, וירידת שורה */ %>
        <textarea name="itemDescription" rows="3" placeholder="ספר קצת על היעד או הפריט..." style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px; font-family: sans-serif;"></textarea> <% /* אזור טקסט חופשי מרובה שורות (textarea) עם שם משתנה לקוד, גובה של 3 שורות (rows), טקסט רמז, ועיצוב רוחב מלא */ %>
        <br /> <% /* תגית ירידת שורה */ %>

        <div style="display: flex; gap: 15px;"> <% /* קונטיינר מסוג Flexbox כדי להציג את שדות הכמות והמחיר זה לצד זה עם רווח של 15px ביניהם */ %>
            <div style="flex: 1;"> <% /* תיבה עבור שדה הכמות התופסת חצי מהשורה בזכות flex: 1 */ %>
                <label style="font-weight: bold; color: #333;">כמות במלאי:</label> <% /* תווית מודגשת עבור שדה הכמות במלאי */ %>
                <input type="number" name="itemCount" value="1" min="1" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" /> <% /* שדה קלט מספרי (type="number") עם ערך התחלתי 1 (value) וערך מינימלי מותר של 1 (min) כדי שלא יהיה ניתן להקליד כמות שלילית */ %>
            </div> <% /* סגירת תיבת חצי השורה השמאלי (שדה הכמות) */ %>
            <div style="flex: 1;"> <% /* תיבה עבור שדה המחיר התופסת את החצי השני של השורה בזכות flex: 1 */ %>
                <label style="font-weight: bold; color: #333;">מחיר (ב-₪):</label> <% /* תווית מודגשת עבור שדה המחיר */ %>
                <input type="number" name="itemPrice" placeholder="0" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" /> <% /* שדה קלט מספרי עבור המחיר, עם רמז 0 ועיצוב התואם לשאר השדות */ %>
            </div> <% /* סגירת תיבת חצי השורה הימני (שדה המחיר) */ %>
        </div> <% /* סגירת תיבת ה-Flexbox שסידרה את הכמות והמחיר זה לצד זה */ %>

        <%-- שדה בחירה מרובה (Checkbox) חובה לבגרות! --%>
        <div style="margin: 10px 0 20px 0; background-color: #f1f8ff; padding: 10px; border-radius: 8px;"> <% /* תיבת עטיפה קטנה עבור תיבת הסימון: בעלת רקע כחלחל בהיר, מרווח פנימי ופינות עגולות */ %>
            <input type="checkbox" name="isEssential" value="yes" id="essential" /> <% /* תיבת סימון (type="checkbox") עם שם משתנה לקוד, ערך שיישלח לשרת אם היא מסומנת (value="yes") ותעודה מזהה (id) לקשר אותה לתווית */ %>
            <label for="essential" style="color: #01579b; cursor: pointer;"> האם זהו פריט חובה לטיסה?</label> <% /* תווית עבור תיבת הסימון המקושרת אליה באמצעות תכונת for הזהה ל-id של הצ'קבוקס, משנה את העכבר ליד (cursor: pointer) */ %>
        </div> <% /* סגירת תיבת עטיפת ה-Checkbox */ %>

        <input type="submit" name="submit" value="הוסף פריט לרשימה ✨"  <% /* כפתור שליחה מסוג submit עם שם וטקסט שמוצג על פניו */ %>
               style="width: 100%; background: linear-gradient(135deg, #0288d1, #26c6da); color: white; border: none; padding: 15px; border-radius: 8px; font-size: 18px; cursor: pointer; font-weight: bold;" /> <% /* עיצוב כפתור: רוחב מלא, רקע מדורג, טקסט לבן, ללא מסגרת, מרווח פנימי 15px, פינות עגולות, גודל גופן 18px ועכבר הופך ליד */ %>
    </div> <% /* סגירת תיבת הטופס הלבנה הגדולה */ %>

    <%-- הצגת הודעת הצלחה --%>
    <div style="margin-top: 20px; color: #2e7d32; font-weight: bold;"> <% /* תיבת div המיועדת להודעת הצלחה: מרווח עליון 20px, צבע טקסט ירוק כהה וכתב מודגש */ %>
        <%= msg %> <% /* פקודת שרת של ASP.NET המדפיסה ישירות לדף את ערך המשתנה המחרוזתי msg (המכיל הודעת 'הפריט נוסף בהצלחה!' שנבנתה ב-C# לאחר ההוספה) */ %>
    </div> <% /* סגירת תיבת הודעת ההצלחה */ %>
</div> <% /* סגירת תיבת ה-div הראשית של דף ההוספה */ %>
</asp:Content>