<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galeria.aspx.cs" Inherits="galeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 30px;"> <% /* אזור עטיפה ראשי של דף היבשות: ממקם את הכל במרכז (text-align: center), מרווח פנימי 30px וגופן Segoe UI */ %>
        
    <%-- כותרת הדף המעוצבת --%>
    <h1 style="color: #0288d1; font-size: 42px; font-weight: bold; margin-bottom: 10px;">מגלים את יבשות העולם 🗺️</h1> <% /* כותרת ראשית (h1) בצבע תכלת-כחול, גודל גופן 42px, בכתב מודגש ומרווח תחתון קטן של 10 פיקסלים */ %>
    <p style="color: #666; font-size: 18px; margin-bottom: 40px;">לחצו על היבשת שמעניינת אתכם כדי לגלות את היעדים הכי שווים!</p> <% /* פסקת הסבר לגולש בגוון אפור, גודל 18px ומרווח תחתון של 40 פיקסלים כדי להתרחק מרשת הכרטיסיות */ %>

    <%-- רשת (Grid) של 6 קוביות מעוצבות --%>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; max-width: 1100px; margin: 0 auto; padding: 10px;"> <% /* הגדרת רשת רספונסיבית (display: grid) המחשבת אוטומטית את מספר העמודות לפי רוחב המסך (repeat, auto-fit, minmax), עם רווח של 30px בין הכרטיסיות (gap), רוחב מקסימלי 1100px ומירכוס הרשת כולה */ %>
            
        <%-- קובייה 1: אירופה --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית אירופה: רקע לבן, פינות עגולות 15px, הסתרת חריגות תוכן (overflow: hidden), צל עדין ויישור טקסט לימין */ %>
            <img src="imges/Europe.png" alt="אירופה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית אירופה: נמתחת ל-100% מרוחב הכרטיסייה, גובה קבוע 200px, והתכונה object-fit: cover מונעת עיוות של התמונה ומקצצת אותה בצורה נקייה */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית לכרטיסייה שנותנת מרווח של 20 פיקסלים סביב הטקסט והכפתור */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אירופה 🏰</h3> <% /* כותרת הכרטיסייה (h3) בצבע כחול כהה, איפוס שוליים עליונים וצדדיים עם מרווח תחתון של 10 פיקסלים, וגודל 22px */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">תרבות עשירה, היסטוריה מפוארת, ערי בירה קלאסיות כמו פריז ולונדון, ונופים עוצרי נשימה.</p> <% /* פסקת תיאור היבשת באפור, גודל 14px, מרווח תחתון של 15px וגובה שורה 1.5 לקריאות נוחה */ %>
                <a href="ShowItems.aspx?continent=Europe" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באירופה ←</a> <% /* כפתור קישור: מפנה לדף ShowItems.aspx ומעביר בכתובת פרמטר (Query String) שהערך שלו הוא Europe, מעוצב כבלוק בשורה, רקע כחול, טקסט לבן, ללא קו תחתון, פינות עגולות בסגנון קפסולה וכתב מודגש */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית אירופה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית אירופה כולה */ %>

        <%-- קובייה 2: צפון אמריקה --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית צפון אמריקה: בעלת עיצוב אחיד ומקצועי התואם לחלוטין לכרטיסייה הראשונה */ %>
            <img src="imges/North_America.png" alt="צפון אמריקה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית צפון אמריקה בעיצוב השומר על פרופורציות נקיות */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית למרווח סביב הטקסט של צפון אמריקה */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">צפון אמריקה 🗽</h3> <% /* כותרת הכרטיסייה של צפון אמריקה */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">מהאורות הנוצצים של ניו יורק ולאס וגאס, ועד לפארקים הלאומיים הענקיים והטבע הפראי של קנדה.</p> <% /* פסקת תיאור קצרה על מאפייני צפון אמריקה */ %>
                <a href="ShowItems.aspx?continent=North_America" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל בצפון אמריקה ←</a> <% /* כפתור המפנה לדף השליפה ומעביר בכתובת את הערך North_America כפרמטר סינון */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית צפון אמריקה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית צפון אמריקה */ %>

        <%-- קובייה 3: דרום אמריקה --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית דרום אמריקה בעיצוב אחיד */ %>
            <img src="imges/South_America1.png" alt="דרום אמריקה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית דרום אמריקה */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית למרווח סביב הטקסט של דרום אמריקה */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">דרום אמריקה 🌴</h3> <% /* כותרת הכרטיסייה של דרום אמריקה */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">חופים טרופיים מטורפים, הקרנבל בברזיל, טרקים מטורפים בנופים של פרו ותרבות לטינית קצבית.</p> <% /* פסקת תיאור קצרה על מאפייני דרום אמריקה */ %>
                <a href="ShowItems.aspx?continent=South_America" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל בדרום אמריקה ←</a> <% /* כפתור המפנה לדף השליפה ומעביר בכתובת את הערך South_America כפרמטר סינון */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית דרום אמריקה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית דרום אמריקה */ %>

        <%-- קובייה 4: אסיה --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית אסיה בעיצוב אחיד */ %>
            <img src="imges/Asia.png" alt="אסיה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית אסיה */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית למרווח סביב הטקסט של אסיה */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אסיה ⛩️</h3> <% /* כותרת הכרטיסייה של אסיה */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">שילוב מטורף בין המודרניות העתידנית של טוקיו, המקדשים העתיקים בתאילנד והאוכל הכי טעים בעולם.</p> <% /* פסקת תיאור קצרה על מאפייני אסיה */ %>
                <a href="ShowItems.aspx?continent=Asia" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באסיה ←</a> <% /* כפתור המפנה לדף השליפה ומעביר בכתובת את הערך Asia כפרמטר סינון */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית אסיה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית אסיה */ %>

        <%-- קובייה 5: אפריקה --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית אפריקה בעיצוב אחיד */ %>
            <img src="imges/Africa.png" alt="אפריקה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית אפריקה */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית למרווח סביב הטקסט של אפריקה */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אפריקה 🦁</h3> <% /* כותרת הכרטיסייה של אפריקה */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">מסעות ספארי מרתקים, מפגש קרוב עם חיות בר, הפירמידות במצרים וטבע פראי ועוצמתי.</p> <% /* פסקת תיאור קצרה על מאפייני אפריקה */ %>
                <a href="ShowItems.aspx?continent=Africa" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באפריקה ←</a> <% /* כפתור המפנה לדף השליפה ומעביר בכתובת את הערך Africa כפרמטר סינון */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית אפריקה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית אפריקה */ %>

        <%-- קובייה 6: אוסטרליה  --%>
        <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;"> <% /* כרטיסיית אוסטרליה בעיצוב אחיד */ %>
            <img src="imges/Australia.png" alt="אוסטרליה" style="width: 100%; height: 200px; object-fit: cover;" /> <% /* תמונת כרטיסיית אוסטרליה */ %>
            <div style="padding: 20px;"> <% /* תיבת תוכן פנימית למרווח סביב הטקסט של אוסטרליה */ %>
                <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אוסטרליה 🏄</h3> <% /* כותרת הכרטיסייה של אוסטרליה */ %>
                <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">חופי גלישה מושלמים, שוניות אלמוגים צבעוניות, סידני המדהימה והנופים הירוקים של ניו זילנד.</p> <% /* פסקת תיאור קצרה על מאפייני אוסטרליה */ %>
                <a href="ShowItems.aspx?continent=Australia" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באוסטרליה ←</a> <% /* כפתור המפנה לדף השליפה ומעביר בכתובת את הערך Australia כפרמטר סינון */ %>
            </div> <% /* סגירת תיבת התוכן הפנימית של כרטיסיית אוסטרליה */ %>
        </div> <% /* סגירת תיבת ה-div של כרטיסיית אוסטרליה כולל */ %>

    </div> <% /* סגירת תיבת ה-div של קונטיינר ה-CSS Grid הראשי שמחזיק את כל 6 הכרטיסיות */ %>
</div> <% /* סגירת תיבת ה-div הכללית ועטיפת הדף כולה */ %>
</asp:Content>