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
            name = Request.Form["fullname"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה השם המלא ומכניס למשתנה name
            email = Request.Form["email"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה המייל ומכניס למשתנה email
            pasword = Request.Form["pasword"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה הסיסמה ומכניס למשתנה pasword
            age = Request.Form["age"]; // שולף מהטופס את מה שהמשתמש הקליד/בחר בשדה הגיל ומכניס למשתנה age
            gender = Request.Form["gender"]; // שולף מהטופס את מה שהמשתמש בחר בשדה המגדר ומכניס למשתנה gender
            textareStr = Request.Form["text"]; // שולף מהטופס את מה שהמשתמש הקליד בתיבת הטקסט החופשית (textarea) ומכניס למשתנה textareStr

            string sqlSelect = "SELECT * FROM tUsers " + "WHERE email = N'" + email + "' "; // בונה שאילתת SQL כדי לבדוק האם קיים כבר משתמש בטבלה עם המייל שהוקלדו (ה-N מיועד לתמיכה בעברית)
            bool exists = MyAdoHelper.IsExist(sqlSelect); // מפעיל פעולה ממחלקת העזר שמחזירה אמת (true) אם המייל כבר קיים במסד הנתונים, ושקר (false) אם הוא לא קיים

            if (exists) // תנאי הבודק האם המשתנה exists שווה ל-true (כלומר, המייל כבר תפוס במערכת)
            { 
                goodluck = "מייל שהוכנס קיים במערכת, הכנס אימייל חדש"; // מכניס הודעת שגיאה/אזהרה למשתנה goodluck כדי להציג אותה למשתמש על המסך ב-HTML
            } 
            else // בלוק else שיתבצע במידה והמייל פנוי (כלומר, exists שווה ל-false וההרשמה יכולה להמשיך)
            { 
                string sqlInsert = "insert into tUsers values (N'" + name + "'," + "N'" + email + "'," + "N'" + pasword + "'," + age + "," + "N'" + gender + "'," + "N'" + textareStr + "')"; // בונה שאילתת SQL מסוג INSERT כדי להכניס את כל נתוני המשתמש החדש לטבלה, שימי לב שהגיל (age) לא עטוף בגרשים כי הוא מספר

                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // מפעיל פעולה ממחלקת העזר שמבצעת את שאילתת ההרשמה (INSERT) ומעדכנת בפועל את קובץ מסד הנתונים (MyDB.mdf)

                Session["user"] = "ok"; // שומר משתנה סשן שמסמן שהמשתמש הנוכחי מחובר כעת בהצלחה כמשתמש רשום באתר
                Session["name"] = name; // שומר את השם שהמשתמש הרגע הקליד בטופס בתוך משתנה הסשן של השם, כדי להציג אותו בדפי האתר

                Response.Redirect("home.aspx");

            }
        }
    }
}