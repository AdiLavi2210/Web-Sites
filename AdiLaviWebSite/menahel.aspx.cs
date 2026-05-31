using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class menahel : System.Web.UI.Page
{
    public string email;
    public string fullname;
    public string st = ""; // <table>

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        { // בודק האם הדף נטען מחדש בעקבות לחיצה על כפתור הסינון (PostBack) ולא בפעם הראשונה
            email = Request.Form["email"]; // שולף מהטופס את מה שהמנהל הקליד בשדה החיפוש של האימייל ומכניס למשתנה
            fullname = Request.Form["fullname"]; // שולף מהטופס את מה שהמנהל הקליד בשדה החיפוש של השם המלא ומכניס למשתנה

            // אוסף את כל הרשומות
            string sql = "SELECT * FROM tUsers WHERE " + "email Like N'%" + email + "%'  AND " + "fullname Like N'%" + fullname + "%'"; // בונה מחרוזת של שאילתת SQL השולפת את כל המשתמשים שהמייל והשם שלהם מכילים את חלקי הטקסט שהוקלדו (בעזרת LIKE ו-%), ה-N מיועד לתמיכה בעברית

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql); // מפעיל פעולה ממחלקת העזר שמבצעת את השאילתה מול מסד הנתונים ומחזירה את התוצאות לתוך אובייקט מסוג DataTable (טבלה בזיכרון)

            if (dt.Rows.Count == 0)
            { // בודק האם מספר השורות בטבלה שהוחזרה שווה לאפס (כלומר, לא נמצאו משתמשים שמתאימים לחיפוש)
                st = "אין נתונים"; // מכניס למשתנה המחרוזתי st הודעה שאומרת שלא נמצאו נתונים, כדי שהיא תודפס ב-HTML
            } // סגירת בלוק ה-if (במקרה שאין נתונים)
            else
            { // בלוק ה-else שמסמן מה לעשות במידה וכן נמצאו משתמשים בטבלה
                // פתיחת תגית טבלה מעוצבת ב-HTML לתוך מחרוזת ה-st
                st += "<table border='1' style='width:100%; border-collapse:collapse; text-align:right;'>";
                // יצירת שורת הכותרות (הראש) של הטבלה שתואמת בדיוק לסדר העמודות במסד הנתונים!
                st += "<tr style='background-color:#d32f2f; color:white;'>";
                st += "<th>מזהה (ID)</th>";        // עמודה 0 בדאטה-בייס (Id)
                st += "<th>שם מלא</th>";          // עמודה 1 בדאטה-בייס (fullname)
                st += "<th>מייל</th>";            // עמודה 2 בדאטה-בייס (email)
                st += "<th>סיסמה</th>";          // עמודה 3 בדאטה-בייס (pasword)
                st += "<th>גיל</th>";             // עמודה 4 בדאטה-בייס (age)
                st += "<th>מגדר</th>";           // עמודה 5 בדאטה-בייס (gender)
                st += "<th>טקסט חופשי</th>";      // עמודה 6 בדאטה-בייס (text)
                st += "</tr>"; // סגירת שורת הכותרת

                // לולאה על השורות
                for (int i = 0; i < dt.Rows.Count; i++)
                { // לולאה חיצונית הרצה כמספר השורות (Rows.Count) שנמצאו בטבלה שחזרה ממסד הנתונים
                    st += "<tr>"; // מוסיפה למחרוזת ה-HTML תגית פתיחה של שורה חדשה בטבלה (tr) עבור המשתמש הנוכחי

                    // לולאה על העמודות
                    for (int j = 0; j < dt.Columns.Count; j++) // לולאה פנימית הרצה כמספר העמודות (Columns.Count) שיש לכל משתמש (כמו שם, מייל, סיסמה וכו')
                    { // פתיחת הבלוק של הלולאה הפנימית
                        st += "<td>"; // מוסיפה למחרוזת תגית פתיחה של תא רגיל בטבלה (td) עבור הנתון הספציפי
                        st += dt.Rows[i][j]; // שולפת מהטבלה את הנתון שנמצא בשורה ה-i ובעמודה ה-j ומשרשרת אותו לתוך התא בטבלה
                        st += "</td>"; // מוסיפה למחרוזת תגית סגירה של התא הנוכחי (td)
                    } // סגירת הבלוק של הלולאה הפנימית (עוברת לעמודה הבאה של אותו משתמש)

                    st += "</tr>";
                } // מוסיפה תגית סגירה לשורה הנוכחית (tr) וסוגרת את בלוק הלולאה החיצונית (עוברת למשתמש הבא)

                st += "</table>"; // מוסיפה תגית סגירה סופית לטבלה כולה (table) לאחר שכל המשתמשים והנתונים שלהם הוכנסו

            }
        }
    }
}
        
    
