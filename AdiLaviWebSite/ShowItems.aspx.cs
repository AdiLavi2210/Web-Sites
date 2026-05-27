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
            string name = Request.Form["searchName"];
            string price = Request.Form["searchPrice"];

            string sqlSearch = "SELECT * FROM tItems WHERE 1=1";

            if (!string.IsNullOrEmpty(name))
            {
                sqlSearch += " AND itemName LIKE N'%" + name + "%'";
            }

            if (!string.IsNullOrEmpty(price))
            {
                sqlSearch += " AND itemPrice <= " + price;
            }

            // תיקון השגיאה הרביעית: שלחנו רק את ה-sqlSearch בלי ה-MDF, כמו שמחלקת העזר שלך אוהבת!
            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSearch);

            if (dt.Rows.Count == 0)
            {
                printString = "<div style='color: #d32f2f; font-weight: bold; font-size: 18px;'>לא נמצאו פריטים העונים על תנאי החיפוש 🥲</div>";
            }
            else
            {
                printString = "<table border='1' style='width: 100%; border-collapse: collapse; font-family: sans-serif; text-align: right; box-shadow: 0 4px 15px rgba(0,0,0,0.05); border: none;'>";
                printString += "<tr style='background-color: #0288d1; color: white; font-weight: bold;'>";
                printString += "<th style='padding: 12px;'>מזהה</th>";
                printString += "<th style='padding: 12px;'>שם הפריט/יעד</th>";
                printString += "<th style='padding: 12px;'>תיאור</th>";
                printString += "<th style='padding: 12px;'>כמות במלאי</th>";
                printString += "<th style='padding: 12px;'>מחיר</th>";
                printString += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string bgColor = (i % 2 == 0) ? "#f9f9f9" : "#ffffff";

                    printString += "<tr style='background-color: " + bgColor + "; border-bottom: 1px solid #ddd;'>";
                    printString += "<td style='padding: 10px; color: #666;'>" + dt.Rows[i]["Id"] + "</td>";
                    printString += "<td style='padding: 10px; font-weight: bold; color: #01579b;'>" + dt.Rows[i]["itemName"] + "</td>";
                    printString += "<td style='padding: 10px; color: #444;'>" + dt.Rows[i]["itemDescription"] + "</td>";
                    printString += "<td style='padding: 10px;'>" + dt.Rows[i]["itemCount"] + "</td>";
                    printString += "<td style='padding: 10px; font-weight: bold; color: #2e7d32;'>" + dt.Rows[i]["itemPrice"] + " ₪</td>";
                    printString += "</tr>";
                }

                printString += "</table>";
            }
        }
    }
}