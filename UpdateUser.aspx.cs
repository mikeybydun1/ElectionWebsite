using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace electionProject
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        public string msg = "", sqlUpdate = "", sqlSelect = "";
        public string un, fullName, party, pr, email, gender, password;
        protected void Page_Load(object sender, EventArgs e)
        {
            un = Session["uName"].ToString();
            string dbName = "usersDB.mdf";
            string tableName = "usersTbl";
            if (un == "אורח")
            {
                msg = "אינך רשום במערכת שלנו";
                Response.Redirect("homePage1.aspx");
            }

            sqlSelect = $"select * from {tableName} where userName = '{un}'";
            DataTable table = Helper.ExecuteDataTable(dbName, sqlSelect);

            fullName = table.Rows[0]["fullName"].ToString();
            party = table.Rows[0]["party"].ToString();
            pr = table.Rows[0]["pr"].ToString();
            email = table.Rows[0]["email"].ToString();
            gender = table.Rows[0]["gender"].ToString();
            password = table.Rows[0]["password"].ToString();

            msg = fullName;
            if (Request.Form["submit"] != null)
            {
                string fn = Request.Form["fullName"];
                string pa = Request.Form["party"];
                string pr = Request.Form["pr"];
                string email = Request.Form["email"];
                string gen = Request.Form["gender"];
                string pass = Request.Form["password"];
                sqlUpdate =
                    $"UPDATE {tableName} " +
                    $"SET fullName= '{fn}', party= N'{pa}', pr= '{pr}', email= '{email}', gender= '{gen}', password= '{pass}'" +
                    $"WHERE userName= '{un }'";
                Helper.DoQuery(dbName, sqlUpdate);
                msg = "עדכון בוצע בהצלחה";
            }
        }
    }
}