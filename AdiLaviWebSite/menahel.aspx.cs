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
        {
            email = Request.Form["email"];
            fullname = Request.Form["fullname"];
        

        // אוסף את כל הרשומות
        string sql = "SELECT * FROM tUsers WHERE " +
        "email = N'" + email + "'  AND " +
        "fullname = N'" + fullname + "'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            st += "<table border='1'>";
            st += "<tr>";
            st += "<th>שם פרטי ומשפחה</td>";
            st += "<th>מייל</td>";
            st += "<th>סיסמה</td>";
            st += "<th>גיל</td>";
            st += "<th>מגדר</td>";
            st += "<th>טקסט חופשי</td>";
            st += "</tr>";

            // לולאה על השורות
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                // לולאה על העמודות
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td>";
                    st += dt.Rows[i][j];
                    st += "</td>";
                }

                st += "</tr>";
            }

            st += "</table>";

        }
        }
    }
}
        
    
