<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harshama.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%/* אזור ה-head של הדף - נשאר ריק לבקשת המבנה המקורי של הפרויקט */%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">

        // פונקציית בדיקת השם המלא 
        function checkFullName() {
            // שליפת הערך (הטקסט) שהוקלד בתוך שדה הקלט בעל מזהה fullname ומניתו לתוך המשתנה name
            var name = document.getElementById("fullname").value;

            // בדיקה א': האם אורך המחרוזת קטן מ-2 תווים (תופס גם מקרה של שדה ריק)
            if (name.length < 2) {
                // שיתלת הודעת שגיאה מתאימה בתוך אלמנט ה-span הייעודי שיושב מתחת לשדה
                document.getElementById("fnErr").innerHTML = "שם חייב להכיל לפחות שני תווים";
                return false; // החזרת ערך שקרי המעיד על כך שהבדיקה הספציפית הזו נכשלה
            }

            // בדיקה ב': האם אורך המחרוזת גדול מ-15 תווים (בדיקת חסם עליון למניעת שמות ארוכים מדי או הצפות)
            if (name.length > 15) {
                // עדכון תוכן ה-span של השגיאה בטקסט החדש
                document.getElementById("fnErr").innerHTML = "שם ארוך מדי";
                return false; // החזרת שקר לעצירת רצף התקינות של השדה הנוכחי
            }

            // אם הקוד עבר את שני תנאי ה-if, המשמעות היא שהערך תקין לחלוטין והפונקציה מחזירה אמת
            return true;
        }

        // פונקציית בדיקת תקינות האימייל
        function checkEmail() {
            // קליטת הערך משדה האימייל לתוך משתנה מקומי בשם email
            var email = document.getElementById("email").value;

            // בדיקת חובה קלאסית לבגרות: שימוש ב-indexOf כדי לבדוק האם התו @ לא קיים בכלל במחרוזת (מחזיר 1-)
            if (email.indexOf("@") == -1) {
                // שיתלת הודעת שגיאה ברורה למשתמש בתוך אלמנט ה-span של האימייל
                document.getElementById("emailErr").innerHTML = "האימייל לא תקין, חסר @";
                return false; // סימון שהאימייל אינו תקין והחזרת שקר
            }

            // אם נמצא סימן ה-@, הפונקציה מחזירה אמת והשדה מאושר
            return true;
        }

        // פונקציית בדיקת תקינות הסיסמה
        function checkPassword() {
            // שליפת הערך החסוי משדה הסיסמה והשמתו במשתנה password
            var password = document.getElementById("pasword").value;

            // בדיקת אורך מינימלי: מוודא שהסיסמה מכילה לפחות 6 תווים להגברת רמת האבטחה באתר
            if (password.length < 6) {
                // כתיבת הודעת אזהרה מתאימה בתוך ה-span הייעודי של שגיאות הסיסמה
                document.getElementById("passwordErr").innerHTML = "הסיסמה קצרה מדי! לפחות 6 תווים";
                return false; // הבדיקה נכשלה, מוחזר ערך שקרי
            }

            // אם אורך הסיסמה 6 תווים ומעלה, הפונקציה מחזירה אמת
            return true;
        }

        // פונקציית הניהול הראשית של הטופס (מרכזת את כל תתי-הבדיקות)
        function checkAll() {
            // איפוס שדות השגיאה: מוחק את הודעות השגיאה הקודמות מהמסך בכל פעם שלוחצים על כפתור השליחה מחדש
            document.getElementById("fnErr").innerHTML = "";
            document.getElementById("emailErr").innerHTML = "";
            document.getElementById("passwordErr").innerHTML = "";

            // הגדרת משתנה דגל (Flag) מסוג בוליאני, המניח מראש שכל הנתונים בטופס תקינים (true)
            var result = true;

            // קריאה לפונקציית בדיקת השם המלא ובדיקה האם היא החזירה ערך שקרי
            if (checkFullName() == false) {
                result = false; // עדכון הדגל ל-false (הטופס לא יישלח), אך הריצה נמשכת כדי לבדוק גם את השדות הבאים
            }

            // קריאה לפונקציית בדיקת האימייל באמצעות אופרטור השלילה (!) – שווה ערך לבדיקה האם התוצאה היא false
            if (!checkEmail()) {
                result = false; // עדכון הדגל ל-false במקרה של אימייל שגוי
            }

            // קריאה לפונקציית בדיקת הסיסמה ובחינת תקינותה
            if (checkPassword() == false) {
                result = false; // עדכון הדגל ל-false במידה והסיסמה קצרה מדי
            }

            // החזרת התוצאה הסופית של הדגל: ערך true יאשר לדפדפן לשלוח את הטופס, ערך false יבטל את השליחה
            return result;
        }
    </script>

    <div style="text-align: center; padding: 20px;">
        <%/* כותרת מעוצבת של דף ההרשמה בצבע תכלת וגופן Segoe UI מודגש */%>
        <h1 style="color: #0288d1; font-size:45px; font-family: 'Segoe UI', sans-serif; font-weight: bold;">הצטרפו לקהילת המטיילים</h1>
        
        <%/* קופסת הלבנה של הטופס: מיושרת לימין, בעלת פינות עגולות ואפקט צל מודרני */%>
        <div style="background-color: white; display: inline-block; padding: 30px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); text-align: right; min-width: 350px;">
            
            <%/* הערה חשובה: אין כאן תג form עצמאי מכיוון שהדף משתמש ב-MasterPage, שבו כבר קיים תג form runat=server שמקיף ומנהל את כל האתר */%>

            שם מלא: <br />
            <%/* שדה קלט מסוג טקסט לקליטת השם המלא של המשתמש */%>
            <input type="text" name="fullname" id="fullname" placeholder="הכנס שם מלא" required style="width: 100%; padding: 8px; margin: 5px 0 5px 0; border: 1px solid #ccc; border-radius: 5px;">
            <%/* אלמנט ה-span הייעודי שבו נשתול באמצעות ה-JavaScript את הודעת השגיאה של השם בצבע אדום בולט */%>
            <span id="fnErr" style="color: #d32f2f; font-size: 13px; font-weight: bold; display: block; margin-bottom: 10px;"></span>

            כתובת מייל: <br />
            <%/* שדה קלט ייעודי לאימייל, כולל הגדרת placeholder המציג דוגמה לפורמט הרצוי */%>
            <input type="email" name="email" id="email" placeholder="example@gmail.com" required style="width: 100%; padding: 8px; margin: 5px 0 5px 0; border: 1px solid #ccc; border-radius: 5px;">
            <%/* אלמנט ה-span שבו נשתול את הודעת השגיאה של האימייל במידה וחסר התו @ */%>
            <span id="emailErr" style="color: #d32f2f; font-size: 13px; font-weight: bold; display: block; margin-bottom: 10px;"></span>

            סיסמה: <br />
            <%/* שדה קלט מסוג password המסתיר את התווים המוקלדים (מציג נקודות/כוכביות) מטעמי פרטיות */%>
            <input type="password" name="pasword" id="pasword" placeholder="הכנס סיסמה" required style="width: 100%; padding: 8px; margin: 5px 0 5px 0; border: 1px solid #ccc; border-radius: 5px;">
            <%/* אלמנט ה-span שבו נשתול את הודעת השגיאה של הסיסמה אם היא קצרה מ-6 תווים */%>
            <span id="passwordErr" style="color: #d32f2f; font-size: 13px; font-weight: bold; display: block; margin-bottom: 10px;"></span>

            גיל: <br />
            <%/* שדה קלט מספרי לקביעת הגיל, מוגבל בטווח שבין 1 ל-120 באמצעות תכונות min ו-max */%>
            <input type="number" name="age" id="age" placeholder="הכנס גיל" min="1" max="120" required style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px;">
            <br />

            מין: <br />
            <%/* שדות בחירה מסוג רדיו: שימוש באותו מאפיין name (בשם gender) מבטיח שהמשתמש יוכל לבחור רק אפשרות אחת מתוך השלוש */%>
            <div style="margin: 5px 0 15px 0;">
                <input type="radio" name="gender" value="זכר" id="gender_male" checked> זכר 
                <input type="radio" name="gender" value="נקבה" id="gender_female" style="margin-right: 10px;"> נקבה 
                <input type="radio" name="gender" value="אחר" id="gender_other" style="margin-right: 10px;"> אחר
            </div>

            הערות נוספות: <br />
            <%/* תיבת טקסט ארוכה ורספונסיבית בת 4 שורות המאפשרת למשתמש להקליד טקסט חופשי */%>
            <textarea rows="4" name="text" id="text" placeholder="מה היעד הבא שלך?" style="width: 100%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px; font-family: sans-serif;"></textarea>
            <br />

            <%/* כפתור מסוג submit ששולח את הטופס; הגדרת onclick="return checkAll();" מבטיחה שאם הפונקציה תחזיר false, השליחה תיעצר מיידית בדפדפן והנתונים לא יישלחו לשרת */%>
            <input id="Submit1" type="submit" value="הירשם עכשיו ✈️" onclick="return checkAll();" style="width: 100%; background-color: #0288d1; color: white; border: none; padding: 12px; border-radius: 5px; font-size: 18px; cursor: pointer; font-weight: bold;" />
        </div>

        <br /><br />
        <%/* אזור שרת דינמי המדפיס ישירות לתוך קוד ה-HTML את ערכו של המשתנה השרתי goodluck (למשל, הודעת הצלחה ירוקה לאחר רישום מוצלח במסד הנתונים) */%>
        <div style="color: #2e7d32; font-weight: bold; font-size: 1.2em;">
            <%= goodluck %>
        </div>
    </div>
</asp:Content>