using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace electionProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string loginMsg = "";
        public string welcomeMsg = "";
        public string securedPage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["userFname"].ToString();
            welcomeMsg = "<b> שלום  " + name + " </b><br/> ";

            if (Session["userFname"].ToString() == "אורח")
            {
                loginMsg += "<a href = 'login.aspx'>התחברות משתמש</a><br/>";
                loginMsg += "<a href = 'AdminLogin.aspx'>כניסת מנהל</a>";
            }
            else
            {
                loginMsg += "<a href = 'updateUser.aspx'>עדכון פרטים</a><br/>";
                loginMsg += "<a href = 'logout.aspx'>התנתקות</a><br/>";
                securedPage += "<a href='securedPage1.aspx'>לרשומים בלבד</a>";

            }
            if (Session["admin"].ToString() == "yes")
                loginMsg += "<a href = AdminPage.aspx>דף ניהול</a>";
        }
    }
}