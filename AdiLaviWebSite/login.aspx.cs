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
                Response.Redirect("menahel.aspx");
            else
            {
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE email = N'" + email + "' " +
                    "AND pasword = N'" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);

                if (!userExists)

                    stResult = "אימייל או סיסמה שגויים";
                else
                    stResult = "משתמש רשום";
            }
        }
    }
}