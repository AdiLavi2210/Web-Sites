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
        { // בודק האם הדף נטען מחדש בעקבות לחיצה על כפתור השליחה (PostBack)
            email = Request.Form["email"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה המייל ומכניס למשתנה email
            password = Request.Form["password"]; // שולף מהטופס את מה שהמשתמש הקליד בשדה הסיסמה ומכניס למשתנה password

            if (email == "adiMenahelet2210@gmail.com" && password == "adi2010") // האם הפרטים שהוקלדו תואמים בדיוק לפרטי המנהלת
            { 
                Session["name"] = "עדי המנהלת"; // שומר משתנה סשן גלובלי שמחזיק את השם של המנהלת כדי להציג אותו ברחבי האתר
                Session["nihol"] = "ok"; // שומר משתנה סשן שמסמן שהמשתמש הנוכחי הוא מנהל, לצורך הרשאות גישה לדפים חסומים
                Response.Redirect("menahel.aspx"); // מעביר (מנתב) את הדפדפן של המנהלת באופן אוטומטי לדף הניהול הסגור
            } 

            else // בלוק else שיתבצע במידה והפרטים שהוקלדו הם לא של המנהלת (כלומר, מדובר במשתמש רגיל או אורח)
            { 
                string sqlSelect = "SELECT * FROM tUsers " + "WHERE email = N'" + email + "' " + "AND pasword = N'" + password + "'"; // בונה שאילתת SQL לבדיקה האם קיים בטבלת המשתמשים (tUsers) משתמש עם המייל והסיסמה שהוקלדו (ה-N מיועד לתמיכה בעברית)

                System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect); // שולח את השאילתה למסד הנתונים בעזרת מחלקת העזר ומקבל את התוצאה לתוך אובייקט טבלה בזיכרון (DataTable)

                if (dt.Rows.Count == 0)
                { // בודק האם חזרו 0 שורות מטבלת הנתונים (כלומר, לא נמצא משתמש כזה במערכת)

                    stResult = "אימייל או סיסמא שגויים"; // מכניס הודעת שגיאה למשתנה stResult כדי שהיא תופיע למשתמש על המסך ב-HTML
                    Session["name"] = "אורח"; // מגדיר את משתנה הסשן של השם כ"אורח" מכיוון שההתחברות נכשלה
                } 
                else 
                { 
                  
                    Session["user"] = "ok"; // שומר משתנה סשן שמסמן שהמשתמש הנוכחי מחובר בהצלחה כמשתמש רשום באתר
                    Session["name"] = dt.Rows[0]["fullname"].ToString(); // שולף מהשורה הראשונה שחזרה מהדאטה-בייס (אינדקס 0) את הערך של העמודה fullname ומכניס אותו לסשן
                    Response.Redirect("home.aspx"); // מעביר את המשתמש שהתחבר בהצלחה ישירות אל דף הבית של האתר
                }
            }
        }
    }
}