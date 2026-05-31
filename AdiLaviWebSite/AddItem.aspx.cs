using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddItem : System.Web.UI.Page
{
    public string msg = ""; // משתנה להצגת הודעה למשתמש

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם המשתמש לחץ על כפתור הסאבמיט (PostBack)
        if (IsPostBack)
        {
            // קליטת הנתונים מהטופס בעזרת Request.Form
            string name = Request.Form["itemName"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה שם היעד/הפריט ומכניס למשתנה name
            string description = Request.Form["itemDescription"]; // שולף מהטופס את הטקסט הארוך שהוקלד בתיבת ה-textarea ומכניס למשתנה description
            string count = Request.Form["itemCount"]; // שולף מהטופס את מספר הכמות שנבחר בשדה המספרי ומכניס למשתנה המחרוזתי count
            string price = Request.Form["itemPrice"]; // שולף מהטופס את מספר המחיר שהוקלד בשדה המספרי ומכניס למשתנה המחרוזתי price
            string continent = Request.Form["continent"]; // קליטת השדה מה-Select // שולף מהטופס את ערך האפשרות שנבחרה מתוך תפריט הבחירה הנפתח (היבשת באנגלית) ומכניס למשתנה continent
                                                          // בניית שאילתת ה-Insert לטבלה
                                                          // שימי לב לשימוש ב-N לפני מחרוזות כדי לתמוך בעברית
            string sqlInsert = "INSERT INTO tItems (itemName, itemDescription, itemCount, itemPrice) " + "VALUES (N'" + name + " (" + continent + ")', N'" + description + "', " + count + ", " + price + ")"; // בונה שאילתת SQL מסוג INSERT להוספת רשומה חדשה לטבלת tItems, תוך שרשור משתני הטופס; שימי לב ששם היבשת משורשר בסוגריים לצד שם הפריט, והמספרים (count ו-price) לא עטופים בגרשים
                                                                                                                                                                                                               // ביצוע השאילתה בעזרת מחלקת העזר
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // מפעיל פעולה ממחלקת העזר שמבצעת ומריצה את שאילתת ההוספה (INSERT) ישירות על קובץ מסד הנתונים MyDB.mdf ומעדכנת אותו בפועל
                                                        // הודעת אישור
            msg = "הפריט '" + name + "' נוסף בהצלחה למסד הנתונים! ✅"; // מכניס הודעת הצלחה ירוקה ומפורטת למשתנה msg (הכוללת את שם הפריט שנוסף) כדי שהיא תודפס ותוצג למשתמש על המסך ב-HTML
        }
    }
}