using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddItem : System.Web.UI.Page
{
    // משתנה להצגת הודעות בדף ה-aspx
    public string msg = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // 1. שליפת הנתונים מהטופס לפי ה-name של ה-input
            string itemName = Request.Form["itemName"];
            string itemDescription = Request.Form["itemDescription"];
            string itemCount = Request.Form["itemCount"];
            string itemPrice = Request.Form["itemPrice"];

            // 2. בניית שאילתת ה-Insert
            // שימי לב: אנחנו מפרטים את שמות העמודות כי ה-ID נוצר אוטומטית!
            string sqlInsert = "INSERT INTO tItems (itemName, itemDescription, itemCount, itemPrice) " +
                               "VALUES (N'" + itemName + "', N'" + itemDescription + "', " +
                               itemCount + ", " + itemPrice + ")";

            // 3. הרצת השאילתה מול מסד הנתונים
            // וודאי ששם הקובץ MyDB.mdf תואם למה שיש לך ב-App_Data
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            // 4. עדכון הודעה למשתמש
            msg = "הפריט '" + itemName + "' נוסף בהצלחה למערכת!";
        }
    }
}