using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace electionProject
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string msgAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"].ToString() == "no")
            {
                msgAdmin = "אינך רשאי לצפות בדף הניהול";
            }
            else
            {
                msgAdmin = "<h3> <a href=showTable.aspx>צפייה בכל הרשומים</a></h3>";
                msgAdmin += "<h3> <a href=AdminSimpleQuery.aspx>שליפה לפי חתכים</a></h3>";
                msgAdmin += "<h3> <a href=AdminDeleteUser.aspx>מחיקת משתמש</a></h3>";
            }


        }
    }
}