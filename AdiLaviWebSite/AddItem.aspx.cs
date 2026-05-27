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
            string name = Request.Form["itemName"];
            string description = Request.Form["itemDescription"];
            string count = Request.Form["itemCount"];
            string price = Request.Form["itemPrice"];
            string continent = Request.Form["continent"]; // קליטת השדה מה-Select

            // בניית שאילתת ה-Insert לטבלה
            // שימי לב לשימוש ב-N לפני מחרוזות כדי לתמוך בעברית
            string sqlInsert = "INSERT INTO tItems (itemName, itemDescription, itemCount, itemPrice) " +
                               "VALUES (N'" + name + " (" + continent + ")', N'" + description + "', " + count + ", " + price + ")";

            // ביצוע השאילתה בעזרת מחלקת העזר
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            // הודעת אישור
            msg = "הפריט '" + name + "' נוסף בהצלחה למסד הנתונים! ✅";
        }
    }
}