<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%-- כאן אפשר להוסיף עיצובים ספציפיים לדף הבית אם נרצה בעתיד --%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 20px;">
        
        <%-- באנר ראשי מעוצב --%>
        <div style="background: linear-gradient(135deg, #26c6da, #0288d1); color: white; padding: 40px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); margin-bottom: 40px;">
            <h1 style="font-size: 42px; margin: 0 0 10px 0; font-weight: bold;">ברוכים הבאים לעדי מסביב לעולם! 🌍</h1>
            <p style="font-size: 18px; opacity: 0.95; max-width: 700px; margin: 0 auto; line-height: 1.6;">
                המדריך המושלם שלכם לחופשה חלומית בחו"ל. כאן תמצאו המלצות חמות על יעדים נחשקים, 
                טיפים חסכוניים לטיסות, ומערכת חכמה לניהול פריטים ואטרקציות שלא תרצו לפספס בטיול הבא שלכם!
            </p>
        </div>

        <%-- קוביות מידע שיווקיות ומזמינות --%>
        <h2 style="color: #0288d1; font-size: 28px; margin-bottom: 25px;">מה תמצאו אצלנו באתר? 👀</h2>
        
        <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap; margin-bottom: 40px;">
            
            <%-- כרטיסייה 1 --%>
            <div style="background-color: white; border-top: 4px solid #26c6da; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;">
                <h3 style="color: #01579b; margin-top: 0;">🗺️ המלצות לפי יבשות</h3>
                <p style="font-size: 14px; color: #666; line-height: 1.5;">בגלריה הייחודית שלנו תוכלו לטייל בין 6 היבשות השונות ולגלות את היעדים הכי שווים בכל אחת מהן.</p>
            </div>

            <%-- כרטיסייה 2 --%>
            <div style="background-color: white; border-top: 4px solid #0288d1; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;">
                <h3 style="color: #01579b; margin-top: 0;">🎒 ניהול פריטים אישי</h3>
                <p style="font-size: 14px; color: #666; line-height: 1.5;">רשומים באתר? מעולה! תוכלו להוסיף, לעדכן ולנהל את רשימת הציוד והפריטים שלכם לטיסה בקלות.</p>
            </div>

            <%-- כרטיסייה 3 --%>
            <div style="background-color: white; border-top: 4px solid #0056b3; width: 250px; padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.05); text-align: right;">
                <h3 style="color: #01579b; margin-top: 0;">🔍 חיפוש מתקדם</h3>
                <p style="font-size: 14px; color: #666; line-height: 1.5;">מערכת החיפוש שלנו מאפשרת לכם למצוא משתמשים ושותפים לטיול בצורה מהירה ומתוחכמת.</p>
            </div>

        </div>

    </div>
</asp:Content>