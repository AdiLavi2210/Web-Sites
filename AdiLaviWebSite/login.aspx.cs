using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :  System.Web.UI.Page
{
    public string email;
    public string pasword;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            email = "email:" + Request.Form["email"];
            pasword = "pasword:" + Request.Form["pasword"];
        }
    }
}