using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class asp_net : System.Web.UI.Page
{
    public string strkefel;

    protected void Page_Load(object sender, EventArgs e)
    {
        strkefel = "<table style='border-collapse:collapse; text-align:center; font-family:Arial;'>";

        for (int i = 0; i <= 10; i++)
        {
            strkefel += "<tr>";

            for (int j = 0; j <= 10; j++)
            {
                if (i == 0 && j == 0)
                {
                    strkefel += "<td style='background:red; border:1px solid black; width:40px; height:40px;'>×</td>";
                }
                else if (i == 0) 
                {
                    strkefel += "<td style='background:lightblue; border:1px solid black; font-weight:bold; width:40px; height:40px;'>";
                    strkefel += j;
                    strkefel += "</td>";
                }
                else if (j == 0)  
                {
                    strkefel += "<td style='background:lightgreen; border:1px solid black; font-weight:bold; width:40px; height:40px;'>";
                    strkefel += i;
                    strkefel += "</td>";
                }
                else 
                {
                    strkefel += "<td style='background:white; border:1px solid black; width:40px; height:40px;'>";
                    strkefel += i * j;
                    strkefel += "</td>";
                }
            }

            strkefel += "</tr>";
        }

        strkefel += "</table>";
    }
}
