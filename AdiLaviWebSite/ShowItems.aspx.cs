using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowItems : System.Web.UI.Page
{
    public string printString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string name = Request.Form["searchName"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה שם היעד/הפריט ומכניס למשתנה name
            string price = Request.Form["searchPrice"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה המחיר המקסימלי ומכניס למשתנה price
            string sqlSearch = "SELECT * FROM tItems WHERE 1=1"; // בונה את בסיס שאילתת ה-SQL, כאשר התנאי 1=1 תמיד אמת ומאפשר לשרשר תנאי AND נוספים בצורה דינמית
            if (!string.IsNullOrEmpty(name))
            { // בדיקה האם משתנה השם אינו ריק (כלומר, המשתמש אכן הקליד שם לחיפוש)
                sqlSearch += " AND itemName LIKE N'%" + name + "%'";
            } // משרשר לשאילתה תנאי מסוג LIKE שמחפש פריטים ששמם מכיל את חלק הטקסט שהוקלד (תומך בעברית בזכות ה-N)
            if (!string.IsNullOrEmpty(price))
            { // בדיקה האם משתנה המחיר אינו ריק (כלומר, המשתמש הגביל את החיפוש לפי תקציב)
                sqlSearch += " AND itemPrice <= " + price;
            } // משרשר לשאילתה תנאי שמסנן ומחזיר רק פריטים שהמחיר שלהם קטן או שווה למחיר המקסימלי שהוקלד
              // תיקון השגיאה הרביעית: שלחנו רק את ה-sqlSearch בלי ה-MDF, כמו שמחלקת העזר שלך אוהבת!
            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSearch); // מפעיל פעולה ממחלקת העזר שמריצה את השאילתה הדינמית מול מסד הנתונים ומחזירה את התוצאות לטבלה בזיכרון (DataTable)
            if (dt.Rows.Count == 0)
            { // בודק האם מספר השורות בטבלה שחזרה שווה לאפס (כלומר, לא נמצא אף פריט שעונה על תנאי החיפוש)
                printString = "<div style='color: #d32f2f; font-weight: bold; font-size: 18px;'>לא נמצאו פריטים העונים על תנאי החיפוש 🥲</div>";
            } // מכניס למשתנה ההדפסה קוד HTML של תיבת אזהרה אדומה עם הודעה שלא נמצאו פריטים
            else
            { // בלוק else שיתבצע במידה וכן נמצאו פריטים במסד הנתונים
                printString = "<table border='1' style='width: 100%; border-collapse: collapse; font-family: sans-serif; text-align: right; box-shadow: 0 4px 15px rgba(0,0,0,0.05); border: none;'>"; // מתחיל לבנות את טבלת ה-HTML במחרוזת וקובע לה עיצוב של רוחב מלא, קריסת גבולות, גופן, יישור לימין, צל וללא מסגרת חיצונית
                printString += "<tr style='background-color: #0288d1; color: white; font-weight: bold;'>"; // מוסיף למחרוזת שורת כותרת (tr) לטבלה עם רקע כחול, טקסט לבן וכתב מודגש
                printString += "<th style='padding: 12px;'>מזהה</th>"; // מוסיף תא כותרת (th) לעמודת המזהה (Id) עם מרווח פנימי של 12 פיקסלים
                printString += "<th style='padding: 12px;'>שם הפריט/יעד</th>"; // מוסיף תא כותרת לעמודת שם הפריט
                printString += "<th style='padding: 12px;'>תיאור</th>"; // מוסיף תא כותרת לעמודת התיאור של הפריט
                printString += "<th style='padding: 12px;'>כמות במלאי</th>"; // מוסיף תא כותרת לעמודת כמות הפריטים במלאי
                printString += "<th style='padding: 12px;'>מחיר</th>"; // מוסיף תא כותרת לעמודת המחיר של הפריט
                printString += "</tr>"; // מוסיף תגית סגירה לשורת הכותרת של הטבלה

                for (int i = 0; i < dt.Rows.Count; i++) // לולאה הרצה כמספר השורות (הפריטים) שחזרו ממסד הנתונים כדי למלא את הטבלה בנתונים
                { // פתיחת בלוק לולאת השורות
                    string bgColor = (i % 2 == 0) ? "#f9f9f9" : "#ffffff"; // קובע משתנה לצבע רקע מתחלף: אם אינדקס השורה זוגי הרקע יהיה אפרפר בהיר, ואם אי-זוגי הרקע יהיה לבן (אפקט זברה לקריאות)

                    printString += "<tr style='background-color: " + bgColor + "; border-bottom: 1px solid #ddd;'>"; // מוסיף שורת נתונים חדשה לטבלה ומציב לה את צבע הרקע הדינמי שחושב ומסגרת תחתית אפורה עדינה
                    printString += "<td style='padding: 10px; color: #666;'>" + dt.Rows[i]["Id"] + "</td>"; // שולף את ערך עמודת ה-Id מהשורה ה-i בטבלה, משרשר אותו לתוך תא (td) מעוצב באפור ומציב בטבלה
                    printString += "<td style='padding: 10px; font-weight: bold; color: #01579b;'>" + dt.Rows[i]["itemName"] + "</td>"; // שולף את שם הפריט מהשורה ה-i, ומשרשר לתוך תא מודגש בצבע כחול
                    printString += "<td style='padding: 10px; color: #444;'>" + dt.Rows[i]["itemDescription"] + "</td>"; // שולף את תיאור הפריט מהשורה ה-i, ומשרשר לתוך תא בצבע אפור כהה
                    printString += "<td style='padding: 10px;'>" + dt.Rows[i]["itemCount"] + "</td>"; // שולף את כמות הפריטים מהשורה ה-i ומשרשר לתוך תא רגיל
                    printString += "<td style='padding: 10px; font-weight: bold; color: #2e7d32;'>" + dt.Rows[i]["itemPrice"] + " ₪</td>"; // שולף את מחיר הפריט מהשורה ה-i, משרשר לתוך תא מודגש בצבע ירוק ומוסיף את סימן השקל
                    printString += "</tr>"; // מוסיף תגית סגירה לשורת הנתונים הנוכחית
                } // סגירת בלוק לולאת השורות

                printString += "</table>"; // מוסיפה למחרוזת תגית סגירה סופית לטבלה כולה (table) לאחר שכל הפריטים הוכנסו
            }
        }
    }
}