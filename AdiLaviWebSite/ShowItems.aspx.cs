using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShowItems : System.Web.UI.Page
{
    public string st = ""; // המשתנה שיחזיק את קוד ה-HTML של הטבלה
    protected void Page_Load(object sender, EventArgs e)
    {
        // שאילתה לשליפת כל הפריטים מהטבלה החדשה
        string sql = "SELECT * FROM tItems";

        // הפעלת השאילתה וקבלת הנתונים לתוך טבלה זמנית בזיכרון
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "<h3>אין פריטים במערכת</h3>";
        }
        else
        {
            // בניית כותרות הטבלה
            st += "<table border='1' style='width:80%; text-align:center;'>";
            st += "<tr style='background-color: lightgray;'>";
            st += "<th>קוד פריט</th>";
            st += "<th>שם הפריט</th>";
            st += "<th>תיאור</th>";
            st += "<th>כמות</th>";
            st += "<th>מחיר</th>";
            st += "</tr>";

            // לולאה שעוברת על כל השורות שחזרו מהמסד
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                st += "<td>" + dt.Rows[i]["Id"] + "</td>";
                st += "<td>" + dt.Rows[i]["itemName"] + "</td>";
                st += "<td>" + dt.Rows[i]["itemDescription"] + "</td>";
                st += "<td>" + dt.Rows[i]["itemCount"] + "</td>";
                st += "<td>" + dt.Rows[i]["itemPrice"] + "</td>";
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}