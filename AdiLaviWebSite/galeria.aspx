<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galeria.aspx.cs" Inherits="galeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-family: 'Segoe UI', sans-serif; padding: 30px;">
        
        <%-- כותרת הדף המעוצבת --%>
        <h1 style="color: #0288d1; font-size: 42px; font-weight: bold; margin-bottom: 10px;">מגלים את יבשות העולם 🗺️</h1>
        <p style="color: #666; font-size: 18px; margin-bottom: 40px;">לחצו על היבשת שמעניינת אתכם כדי לגלות את היעדים הכי שווים!</p>

        <%-- רשת (Grid) של 6 קוביות מעוצבות --%>
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; max-width: 1100px; margin: 0 auto; padding: 10px;">
            
            <%-- קובייה 1: אירופה --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/Europe.png" alt="אירופה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אירופה 🏰</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">תרבות עשירה, היסטוריה מפוארת, ערי בירה קלאסיות כמו פריז ולונדון, ונופים עוצרי נשימה.</p>
                    <a href="ShowItems.aspx?continent=Europe" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באירופה ←</a>
                </div>
            </div>

            <%-- קובייה 2: צפון אמריקה --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/North_America.png" alt="צפון אמריקה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">צפון אמריקה 🗽</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">מהאורות הנוצצים של ניו יורק ולאס וגאס, ועד לפארקים הלאומיים הענקיים והטבע הפראי של קנדה.</p>
                    <a href="ShowItems.aspx?continent=North_America" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל בצפון אמריקה ←</a>
                </div>
            </div>

            <%-- קובייה 3: דרום אמריקה --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/South_America.png" alt="דרום אמריקה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">דרום אמריקה 🌴</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">חופים טרופיים מטורפים, הקרנבל בברזיל, טרקים מטורפים בנופים של פרו ותרבות לטינית קצבית.</p>
                    <a href="ShowItems.aspx?continent=South_America" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל בדרום אמריקה ←</a>
                </div>
            </div>

            <%-- קובייה 4: אסיה --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/Asia.png" alt="אסיה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אסיה ⛩️</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">שילוב מטורף בין המודרניות העתידנית של טוקיו, המקדשים העתיקים בתאילנד והאוכל הכי טעים בעולם.</p>
                    <a href="ShowItems.aspx?continent=Asia" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באסיה ←</a>
                </div>
            </div>

            <%-- קובייה 5: אפריקה --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/Africa.png" alt="אפריקה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אפריקה 🦁</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">מסעות ספארי מרתקים, מפגש קרוב עם חיות בר, הפירמידות במצרים וטבע פראי ועוצמתי.</p>
                    <a href="ShowItems.aspx?continent=Africa" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באפריקה ←</a>
                </div>
            </div>

            <%-- קובייה 6: אוסטרליה  --%>
            <div style="background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); text-align: right;">
                <img src="imges/Australia.png" alt="אוסטרליה" style="width: 100%; height: 200px; object-fit: cover;" />
                <div style="padding: 20px;">
                    <h3 style="color: #01579b; margin: 0 0 10px 0; font-size: 22px;">אוסטרליה 🏄</h3>
                    <p style="color: #666; font-size: 14px; margin-bottom: 15px; line-height: 1.5;">חופי גלישה מושלמים, שוניות אלמוגים צבעוניות, סידני המדהימה והנופים הירוקים של ניו זילנד.</p>
                    <a href="ShowItems.aspx?continent=Australia" style="display: inline-block; background-color: #0288d1; color: white; text-decoration: none; padding: 8px 18px; border-radius: 25px; font-weight: bold; font-size: 14px;">לטייל באוסטרליה ←</a>
                </div>
            </div>

        </div>

    </div>
</asp:Content>