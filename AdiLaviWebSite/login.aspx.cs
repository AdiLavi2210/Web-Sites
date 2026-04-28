using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string email;
    public string password;
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            email = Request.Form["email"];
            password = Request.Form["password"];

            if (email == "adiMenahelet2210@gmail.com" && password == "adi2010")
            {
                Session["name"] = "עדי המנהלת";
                Session["nihol"] = "ok";
                Response.Redirect("menahel.aspx");
            }

            else
            {
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE email = N'" + email + "' " +
                    "AND pasword = N'" + password + "'";


                
                System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                if (dt.Rows.Count == 0) {

                    stResult = "אימייל או סיסמא שגויים";
                    Session["name"] = "אורח";
                }
                else
                { 
                    //stResult = "משתמש רשום";
                    Session["ok"] = dt.Rows[0]["fullname"];
                    Session["name"] = "משתמש רשום";
                    Response.Redirect("home.aspx");
               }
            }
        }
    }
}