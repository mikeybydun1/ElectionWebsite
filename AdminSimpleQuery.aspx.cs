using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace electionProject
{
    public partial class AdminShowQuery : System.Web.UI.Page
    {
        public string st = "", msg = "", sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string field = Request.Form["field"];
                string value = Request.Form["value"];

                string dbName = "usersDB.mdf";
                string tableName = "usersTbl";

                string sqlSelect = "select * from " + tableName + " where (" + field + " like '%" + value + "%');";
                sql = sqlSelect;
                DataTable table = Helper.ExecuteDataTable(dbName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "אין נרשמים";
                }
                else
                {
                    st += "<tr>";
                    st += "<th> שם משתמש </th>";
                    st += "<th> שם מלא </th>";
                    st += "<th> שם מפלגה </th>";
                    st += "<th> ראש ממשלה </th>";
                    st += "<th> אימייל </th>";
                    st += "<th> מגדר </th>";
                    st += "<th> סיסמה </th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td>" + table.Rows[i]["userName"] + "</td>";
                        st += "<td>" + table.Rows[i]["fullName"] + "</td>";
                        st += "<td>" + table.Rows[i]["party"] + "</td>";
                        st += "<td>" + table.Rows[i]["pr"] + "</td>";
                        st += "<td>" + table.Rows[i]["email"] + "</td>";
                        st += "<td>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td>" + table.Rows[i]["password"] + "</td>";
                        st += "</tr>";
                    }
                    msg = length + " נרשמו ";
                }
            }    
        }
    }
}