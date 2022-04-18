using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace electionProject
{
    public partial class AdminDeleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbName = "usersDB.mdf";
            string tableName = "usersTbl";

            if (Session["admin"].ToString() == "yes")
            {
                string uName = Request.QueryString["userName"].ToString();
                string sqlDelete = "delete from " + tableName + " where userName='" + uName + "'";
                Helper.DoQuery(dbName, sqlDelete);
                Response.Redirect("AdminDeleteUser.aspx");
            }
        }
    }
}