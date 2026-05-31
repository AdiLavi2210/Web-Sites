<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 20px;"> <% /* אזור עטיפה ראשי: טקסט במרכז (text-align: center), גופן Segoe UI ומרווח פנימי של 20 פיקסלים (padding) */ %>
        
    <%-- באנר ראשי מעוצב --%>
    <div style="background: linear-gradient(135deg, #26c6da, #0288d1); color: white; padding: 40px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); margin-bottom: 40px;"> <% /* תיבת באנר: רקע מדורג (background: linear-gradient), טקסט לבן (color: white), מרווח פנימי 40px (padding), פינות עגולות 15px (border-radius), אפקט צל (box-shadow) ומרווח חיצוני תחתון 40px (margin-bottom) */ %>
        <h1 style="font-size: 42px; margin: 0 0 10px 0; font-weight: bold;">ברוכים הבאים לעדי מסביב לעולם! 🌍</h1> <% /* כותרת ראשית גדולה (h1) בגודל 42 פיקסלים, איפוס שוליים עם מרווח תחתון של 10 פיקסלים (margin) ובכתב מודגש (font-weight: bold) */ %>
        <p style="font-size: 18px; opacity: 0.95; max-width: 700px; margin: 0 auto; line-height: 1.6;"> <% /* פסקת תיאור: גודל גופן 18px, אטימות של 95% (opacity), רוחב מקסימלי 700px (max-width), מירכוס התיבה (margin: 0 auto) וגובה שורה 1.6 לקריאות (line-height) */ %>
            המדריך המושלם שלכם לחופשה חלומית בחו"ל. כאן תמצאו המלצות חמות על יעדים נחשקים, <% /* שורת טקסט רגילה המציגה את תחילת תיאור האתר */ %>
            טיפים חסכוניים לטיסות, ומערכת חכמה לניהול פריטים ואטרקציות שלא תרצו לפספס בטיול הבא שלכם! <% /* שורת טקסט רגילה המציגה את המשך תיאור האתר */ %>
        </p> <% /* סגירת תגית פסקת התיאור של הבאנר */ %>
    </div> <% /* סגירת תיבת ה-div של הבאנר הראשי המעוצב */ %>

    <%-- קוביות מידע שיווקיות ומזמינות --%>
    <h2 style="color: #0288d1; font-size: 28px; margin-bottom: 25px;">מה תמצאו אצלנו באתר? 👀</h2> <% /* כותרת משנית (h2) בצבע כחול, גודל גופן 28 פיקסלים ומרווח חיצוני תחתון של 25 פיקסלים */ %>
        
    <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap; margin-bottom: 40px;"> <% /* תיבת עטיפה לכרטיסיות: סידור גמיש (display: flex), מירכוס האלמנטים (justify-content: center), רווח של 20px בין הכרטיסיות (gap), שבירת שורות במסכים קטנים (flex-wrap: wrap) ומרווח תחתון 40px */ %>
            
        <%-- כרטיסייה 1 --%>
        <div style="background-color: white; border-top: 4px solid #26c6da; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;"> <% /* כרטיסייה 1: רקע לבן (background-color), פס עליון תכלת בעובי 4px (border-top), רוחב 250px (width), מרווח פנימי 20px (padding), פינות עגולות 10px (border-radius), צל עדין ויישור לימין (text-align: right) */ %>
            <h3 style="color: #01579b; margin-top: 0;">🗺️ המלצות לפי יבשות</h3> <% /* כותרת כרטיסייה קטנה (h3) בצבע כחול כהה ואיפוס המרווח העליון (margin-top: 0) */ %>
            <p style="font-size: 14px; color: #666; line-height: 1.5;">בגלריה הייחודית שלנו תוכלו לטייל בין 6 היבשות השונות ולגלות את היעדים הכי שווים בכל אחת מהן.</p> <% /* פסקת תיאור לכרטיסייה: גודל 14px, צבע טקסט אפור (color: #666) וגובה שורה 1.5 */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסייה 1 */ %>

        <%-- כרטיסייה 2 --%>
        <div style="background-color: white; border-top: 4px solid #0288d1; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;"> <% /* כרטיסייה 2: עיצוב זהה לכרטיסייה הראשונה, רק עם פס עליון בצבע כחול שונה (border-top: 4px solid #0288d1) לגיוון */ %>
            <h3 style="color: #01579b; margin-top: 0;">🎒 ניהול פריטים אישי</h3> <% /* כותרת כרטיסייה קטנה (h3) בצבע כחול כהה ואיפוס המרווח העליון (margin-top: 0) */ %>
            <p style="font-size: 14px; color: #666; line-height: 1.5;">רשומים באתר? מעולה! תוכלו להוסיף, לעדכן ולנהל את רשימת הציוד והפריטים שלכם לטיסה בקלות.</p> <% /* פסקת תיאור לכרטיסייה: גודל 14px, צבע טקסט אפור (color: #666) וגובה שורה 1.5 */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסייה 2 */ %>

        <%-- כרטיסייה 3 --%>
        <div style="background-color: white; border-top: 4px solid #0056b3; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;"> <% /* כרטיסייה 3: עיצוב זהה לכרטיסיות הקודמות, רק עם פס עליון בצבע כחול כהה (border-top: 4px solid #0056b3) */ %>
            <h3 style="color: #01579b; margin-top: 0;">🔍 חיפוש </h3> <% /* כותרת כרטיסייה קטנה (h3) בצבע כחול כהה ואיפוס המרווח העליון (margin-top: 0) */ %>
            <p style="font-size: 14px; color: #666; line-height: 1.5;">מערכת החיפוש שלנו מאפשרת לכם למצוא משתמשים ושותפים לטיול בצורה מהירה ומתוחכמת.</p> <% /* פסקת תיאור לכרטיסייה: גודל 14px, צבע טקסט אפור (color: #666) וגובה שורה 1.5 */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסייה 3 */ %>

    </div> <% /* סגירת תיבת ה-div של קונטיינר ה-Flexbox הכללי שמחזיק את הכרטיסיות */ %>
</div> <% /* סגירת תיבת ה-div הראשית והעליונה ביותר של עטיפת הדף */ %>
</asp:Content>