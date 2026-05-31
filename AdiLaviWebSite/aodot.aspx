<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aodot.aspx.cs" Inherits="aodot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 30px;"> <% /* אזור עטיפה ראשי של דף אודות: ממקם את התוכן במרכז (text-align: center), קובע גופן נקי ומרווח פנימי של 30 פיקסלים */ %>
        
    <%-- כותרת הדף --%>
    <h1 style="color: #0288d1; font-size: 45px; font-weight: bold; margin-bottom: 10px;">קצת עליי ועל המסע שלי ✈️</h1> <% /* כותרת ראשית (h1) בצבע תכלת-כחול, גודל גופן 45px, כתב מודгש ומרווח תחתון קטן של 10 פיקסלים */ %>
    <p style="color: #666; font-size: 18px; margin-bottom: 40px;">נעים מאוד, אני עדי – וזה הסיפור שמאחורי האתר</p> <% /* פסקת משנה בצבע אפור (color: #666), בגודל גופן 18px עם מרווח תחתון של 40 פיקסלים כדי להתרחק מתיבת התוכן */ %>

    <div style="display: flex; justify-content: center; align-items: center; gap: 50px; flex-wrap: wrap; text-align: right; max-width: 1000px; margin: 0 auto; background-color: white; padding: 40px; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1);"> <% /* תיבת התוכן המרכזית: הגדרת Flexbox לסידור האלמנטים, מירכוס אנכי ואופקי, רווח של 50px בין התמונה לטקסט (gap), גרימת אלמנטים לרדת שורה במסכים קטנים (flex-wrap: wrap), יישור טקסט לימין, רקע לבן, פינות עגולות 20px ואפקט צל חזק */ %>
            
        <%-- צד ימין: תמונה שלך --%>
        <div style="flex: 1; min-width: 300px; text-align: center;"> <% /* עטיפת צד ימין (התמונה): מקבלת יחס חלוקה 1 ב-Flexbox, רוחב מינימלי של 300px כדי שלא תתכווץ מדי, ומירכוס פנימי של התוכן */ %>
            <div style="position: relative; display: inline-block;"> <% /* תיבה במיקום יחסי (position: relative) כדי שנוכל למקם את האמוג'י של המטוס באופן מוחלט ביחס אליה, וגודל לפי התוכן (inline-block) */ %>
                <%-- מסגרת מעוצבת לתמונה --%>
                <div style="width: 250px; height: 250px; border-radius: 50%; border: 8px solid #26c6da; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.2);"> <% /* מסגרת התמונה: רוחב וגובה קבועים של 250px, עיגול מושלם (border-radius: 50%), מסגרת עבה בצבע תכלת, הסתרת חריגות (overflow: hidden) כדי שהתמונה תיחתך לצורת עיגול, וצל קטן */ %>
                    <%-- כאן תשימי את התמונה שלך - פשוט תחליפי את ה-SRC לשם הקובץ של התמונה שלך --%>
                    <img src="imges/me.jpg" alt="עדי" style="width: 100%; height: 100%; object-fit: cover;" onerror="this.src='https://via.placeholder.com/250?text=Your+Photo';"> <% /* תמונת הפרופיל: נמתחת לכל אורך ורוחב המסגרת (100%), שומרת על פרופורציות בלי להתעוות (object-fit: cover), ומכילה אירוע onerror שמציג תמונת ברירת מחדל זמנית אם הקובץ imges/me.jpg לא נמצא */ %>
                </div> <% /* סגירת תיבת מסגרת התמונה העגולה */ %>
                <%-- אלמנט עיצובי של מטוס קטן ליד התמונה --%>
                <div style="position: absolute; bottom: 10px; right: 10px; background: white; border-radius: 50%; padding: 10px; font-size: 25px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">🛫</div> <% /* תיבת אימוג'י המטוס: ממוקמת במיקום מוחלט (position: absolute) בפינה הימנית התחתונה של התמונה, עם רקע לבן, עיגול מושלם, מרווח פנימי, גודל גופן 25px וצל עדין */ %>
            </div> <% /* סגירת התיבה בעלת המיקום היחסי */ %>
        </div> <% /* סגירת עטיפת צד ימין (אזור התמונה) */ %>

        <%-- צד שמאל: הטקסט עלייך --%>
        <div style="flex: 1.5; min-width: 300px;"> <% /* עטיפת צד שמאל (הטקסט): מקבלת יחס חלוקה גדול יותר של 1.5 ב-Flexbox כדי לתת לטקסט יותר מקום מאשר לתמונה, ורוחב מינימלי של 300px */ %>
            <h3 style="color: #0288d1; border-bottom: 2px solid #e3f2fd; padding-bottom: 10px; margin-bottom: 20px;">למה בחרתי דווקא בעולם הטיסות?</h3> <% /* כותרת משנית (h3) בצבע תכלת, עם קו תחתון עדין המשמש כקו מפריד (border-bottom), מרווח פנימי תחתון 10px ומרווח חיצוני תחתון 20px להתרחקות מהפסקה */ %>
                
            <p style="line-height: 1.8; color: #444; font-size: 16px;"> <% /* פסקת טקסט ראשונה: גובה שורה מרווח של 1.8 לקריאות, צבע טקסט אפור כהה וגודל גופן 16px */ %>
                מאז שאני זוכרת את עצמי, ההנאה הכי גדולה שלי היא הרגע הזה בנמל התעופה – 
                ההתרגשות מהלא נודע, תחושת החופש הממכרת והידיעה שבעוד כמה שעות אני אהיה במקום חדש, 
                עם תרבות אחרת, נופים עוצרי נשימה וחוויות שיישארו איתי לכל החיים.
            </p> <% /* סגירת פסקת הטקסט הראשונה */ %>

            <p style="line-height: 1.8; color: #444; font-size: 16px;"> <% /* פסקת טקסט שנייה בעיצוב זהה ומרווח הממשיכה את סיפור הרקע של האתר */ %>
                עבורי, לטוס זה לא רק לעבור ממקום למקום. זו הדרך שלי לנשום, להתרחב ולגלות את עצמי מחדש. 
                האופק הפתוח והחופש המוחלט הם מה שהניעו אותי לבנות את האתר הזה – 
                כדי לחלוק את האהבה הזו לעולם ולעזור לאחרים לתכנן את המסע הבא שלהם בצורה הטובה ביותר.
            </p> <% /* סגירת פסקת הטקסט השנייה */ %>
        </div> <% /* סגירת עטיפת צד שמאל (אזור הטקסט) */ %>

    </div> <% /* סגירת תיבת התוכן המרכזית הלבנה */ %>

    <%-- כפתור חזרה הביתה --%>
    <div style="margin-top: 40px;"> <% /* תיבת עטיפה לכפתור החזרה עם מרווח עליון של 40 פיקסלים כדי להתרחק מהגוש הלבן */ %>
        <a href="home.aspx" style="color: #0288d1; text-decoration: none; font-weight: bold; font-size: 16px; border: 2px solid #0288d1; padding: 10px 25px; border-radius: 30px; transition: 0.3s;"> <% /* כפתור קישור המפנה לדף הבית (home.aspx), מעוצב בצבע תכלת, ללא קו תחתון, כתב מודגש, מסגרת תכלת בעובי 2 פיקסלים, מרווח פנימי, פינות עגולות בסגנון קפסולה (30px) ואפקט מעבר חלק של 0.3 שניות */ %>
            בחזרה למסע 🌍
        </a> <% /* סגירת תגית קישור החזרה */ %>
    </div> <% /* סגירת תיבת עטיפת הכפתור */ %>
</div> <% /* סגירת תיבת ה-div הראשית והעליונה ביותר שעוטפת את כל דף אודות */ %>
</asp:Content>