<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; padding: 30px; font-family: 'Segoe UI', sans-serif;">
        
        <h1 style="color: #0288d1; font-size: 40px; font-weight: bold;">הוספת יעד או פריט חדש 🎒</h1>
        <p style="color: #666;">מלאו את הפרטים כדי להוסיף המלצה חדשה למערכת</p>

        <div style="background-color: white; display: inline-block; padding: 30px; border-radius: 15px; box-shadow: 0 8px 25px rgba(0,0,0,0.1); text-align: right; min-width: 400px; border-top: 6px solid #0288d1;">
            
            <%-- שם הפריט / יעד --%>
            <label style="font-weight: bold; color: #333;">שם היעד או הפריט:</label><br />
            <input type="text" name="itemName" placeholder="לדוגמה: לונדון / תיק גב" required style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" />
            <br />

            <%-- בחירת יבשת - שדה רשימה (Select) חובה לבגרות! --%>
            <label style="font-weight: bold; color: #333;">בחר יבשת:</label><br />
            <select name="continent" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px; background-color: white;">
                <option value="Europe">אירופה</option>
                <option value="Asia">אסיה</option>
                <option value="North_America">צפון אמריקה</option>
                <option value="South_America">דרום אמריקה</option>
                <option value="Africa">אפריקה</option>
                <option value="Australia">אוסטרליה</option>
            </select>
            <br />

            <%-- תיאור הפריט --%>
            <label style="font-weight: bold; color: #333;">תיאור קצר:</label><br />
            <textarea name="itemDescription" rows="3" placeholder="ספר קצת על היעד או הפריט..." style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px; font-family: sans-serif;"></textarea>
            <br />

            <div style="display: flex; gap: 15px;">
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #333;">כמות במלאי:</label>
                    <input type="number" name="itemCount" value="1" min="1" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" />
                </div>
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #333;">מחיר (ב-₪):</label>
                    <input type="number" name="itemPrice" placeholder="0" style="width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ddd; border-radius: 8px;" />
                </div>
            </div>

            <%-- שדה בחירה מרובה (Checkbox) חובה לבגרות! --%>
            <div style="margin: 10px 0 20px 0; background-color: #f1f8ff; padding: 10px; border-radius: 8px;">
                <input type="checkbox" name="isEssential" value="yes" id="essential" />
                <label for="essential" style="color: #01579b; cursor: pointer;"> האם זהו פריט חובה לטיסה?</label>
            </div>

            <input type="submit" name="submit" value="הוסף פריט לרשימה ✨" 
                   style="width: 100%; background: linear-gradient(135deg, #0288d1, #26c6da); color: white; border: none; padding: 15px; border-radius: 8px; font-size: 18px; cursor: pointer; font-weight: bold;" />
        </div>

        <%-- הצגת הודעת הצלחה --%>
        <div style="margin-top: 20px; color: #2e7d32; font-weight: bold;">
            <%= msg %>
        </div>
    </div>
</asp:Content>