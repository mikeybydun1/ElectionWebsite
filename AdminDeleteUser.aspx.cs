using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace electionProject
{
    public partial class AdminDeleteUser : System.Web.UI.Page
    {
        public string msg = "", st = "", deletMsg = "", sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<h3> אינך רשאי לצפות בדף הניהול </h3>";
            }
            else
            {
                string dbName = "usersDB.mdf";
                string tableName = "usersTbl";
                sqlSelect = "Select * from " + tableName;

                DataTable table = Helper.ExecuteDataTable(dbName, sqlSelect);
                string userToDelete = "";

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "אין נרשמים";
                }
                else
                {
                    st += "<tr>";
                    st += "<th> User Name </th>";
                    st += "<th> Full Name </th>";
                    st += "<th> Party Name </th>";
                    st += "<th> Prime Minister </th>";
                    st += "<th> Email </th>";
                    st += "<th> Gender </th>";
                    st += "<th> Password </th>";
                    st += "<th> delet user </th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td>" + table.Rows[i]["userName"] + "</td>";
                        st += "<td>" + table.Rows[i]["fullName"] + "</td>";
                        st += "<td>" + table.Rows[i]["party"] + "</td>";
                        st += "<td>" + table.Rows[i]["pr"] + " </td>";
                        st += "<td>" + table.Rows[i]["email"] + "</td>";
                        st += "<td>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td>" + table.Rows[i]["password"] + "</td>";
                        
                        userToDelete = table.Rows[i]["userName"].ToString();
                        st += "<td> <a href = AdminDeleteRecord.aspx?userName=" + userToDelete + " >delete</a> </td>";
                        st += "</tr>";
                    }
                }
            }
        }
    }
}