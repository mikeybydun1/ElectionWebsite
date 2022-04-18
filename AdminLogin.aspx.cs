using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace electionProject
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlLogin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string an = Request.Form["aName"];
                string pass = Request.Form["pass"];
                string dbName = "usersDB.mdf";
                string tableName = "adminTbl";

                sqlLogin = "select * from " + tableName + " where aName = '" + an + "' and pass = '" + pass + "'";

                DataTable table = Helper.ExecuteDataTable(dbName, sqlLogin);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אינך מנהל ואין לך הרשאה";
                else
                {
                    Session["admin"] = "yes";
                    Session["userFName"] = "מנהל";
                    Response.Redirect("AdminPage.aspx");
                }
            }
        }
    }
}