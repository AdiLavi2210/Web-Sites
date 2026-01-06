using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string name;
    public string email;
    public string pasword;
    public string age;
    public string gender;
    public string textareStr;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            name = "name:" + Request.Form["fullname"];
            email = "email:" + Request.Form["email"];
            pasword = "pasword:" + Request.Form["pasword"];
            age = "age:" + Request.Form["age"];
            gender = "gender:" + Request.Form["gender"];
            textareStr = "text:" + Request.Form["text"];
            
        }
    }
}