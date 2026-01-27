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
    public string goodluck = "";


    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            name =  Request.Form["fullname"];
            email = Request.Form["email"];
            pasword = Request.Form["pasword"];
            age = Request.Form["age"];
            gender = Request.Form["gender"];
            textareStr = Request.Form["text"];

            string sqlInsert = "insert into tUsers values (N'" + name + "'," + "N'" + email +
                   "'," + "N'" + pasword + "'," + 
                   //...
                   age + "," +
                   //...
                   "',N'" + gender + "'," + "N'" + textareStr + "')";


            MyAdoHelper.DoQuery("MyDB.mdf",sqlInsert);
            goodluck = "נרשמת בהצלחה! :";
            
        }
    }
}