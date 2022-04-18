using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace electionProject
{
    public partial class showTable : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            string sqlSelect = "SELECT * FROM " + tableName;

            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length == 0)
                msg = "אין נרשמים";
            else
            {
                msg = "there are " + length + " registrants";
                
                st += "<tr>";
                st += "<th> User Name </th>";
                st += "<th> Full Name </th>";
                st += "<th> Party Name </th>";
                st += "<th> Prime Minister </th>";
                st += "<th> Email </th>";
                st += "<th> Gender </th>";
                st += "<th> Password </th>";
                st += "</ tr>";
               
                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["userName"] + " </ td >";
                    st += "<td>" + table.Rows[i]["fullName"] + " </ td >";
                    st += "<td>" + table.Rows[i]["party"] + " </ td >";
                    st += "<td>" + table.Rows[i]["pr"] + " </ td >";
                    st += "<td>" + table.Rows[i]["email"] + " </ td >";
                    st += "<td>" + table.Rows[i]["gender"] + " </ td >";
                    st += "<td>" + table.Rows[i]["password"] + " </ td >";
                    st += "</tr>";
                }
            }
        }
    }
}