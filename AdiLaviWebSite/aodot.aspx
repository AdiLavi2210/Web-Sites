<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aodot.aspx.cs" Inherits="aodot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 30px;">
        
        <%-- כותרת הדף --%>
        <h1 style="color: #0288d1; font-size: 45px; font-weight: bold; margin-bottom: 10px;">קצת עליי ועל המסע שלי ✈️</h1>
        <p style="color: #666; font-size: 18px; margin-bottom: 40px;">נעים מאוד, אני עדי – וזה הסיפור שמאחורי האתר</p>

        <div style="display: flex; justify-content: center; align-items: center; gap: 50px; flex-wrap: wrap; text-align: right; max-width: 1000px; margin: 0 auto; background-color: white; padding: 40px; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1);">
            
            <%-- צד ימין: תמונה שלך --%>
            <div style="flex: 1; min-width: 300px; text-align: center;">
                <div style="position: relative; display: inline-block;">
                    <%-- מסגרת מעוצבת לתמונה --%>
                    <div style="width: 250px; height: 250px; border-radius: 50%; border: 8px solid #26c6da; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.2);">
                        <%-- כאן תשימי את התמונה שלך - פשוט תחליפי את ה-SRC לשם הקובץ של התמונה שלך --%>
                        <img src="imges/me.jpg" alt="עדי" style="width: 100%; height: 100%; object-fit: cover;" onerror="this.src='https://via.placeholder.com/250?text=Your+Photo';">
                    </div>
                    <%-- אלמנט עיצובי של מטוס קטן ליד התמונה --%>
                    <div style="position: absolute; bottom: 10px; right: 10px; background: white; border-radius: 50%; padding: 10px; font-size: 25px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">🛫</div>
                </div>
            </div>

            <%-- צד שמאל: הטקסט עלייך --%>
            <div style="flex: 1.5; min-width: 300px;">
                <h3 style="color: #0288d1; border-bottom: 2px solid #e3f2fd; padding-bottom: 10px; margin-bottom: 20px;">למה בחרתי דווקא בעולם הטיסות?</h3>
                
                <p style="line-height: 1.8; color: #444; font-size: 16px;">
                    מאז שאני זוכרת את עצמי, ההנאה הכי גדולה שלי היא הרגע הזה בנמל התעופה – 
                    ההתרגשות מהלא נודע, תחושת החופש הממכרת והידיעה שבעוד כמה שעות אני אהיה במקום חדש, 
                    עם תרבות אחרת, נופים עוצרי נשימה וחוויות שיישארו איתי לכל החיים.
                </p>

                <p style="line-height: 1.8; color: #444; font-size: 16px;">
                    עבורי, לטוס זה לא רק לעבור ממקום למקום. זו הדרך שלי לנשום, להתרחב ולגלות את עצמי מחדש. 
                    האופק הפתוח והחופש המוחלט הם מה שהניעו אותי לבנות את האתר הזה – 
                    כדי לחלוק את האהבה הזו לעולם ולעזור לאחרים לתכנן את המסע הבא שלהם בצורה הטובה ביותר.
                </p>
            </div>

        </div>

        <%-- כפתור חזרה הביתה --%>
        <div style="margin-top: 40px;">
            <a href="home.aspx" style="color: #0288d1; text-decoration: none; font-weight: bold; font-size: 16px; border: 2px solid #0288d1; padding: 10px 25px; border-radius: 30px; transition: 0.3s;">
                בחזרה למסע 🌍
            </a>
        </div>
    </div>
</asp:Content>