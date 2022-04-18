<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="electionProject.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script>
         function chkAdmin() {
             var aName = document.getElementById("aName").value;
             if (aName.length < 4) {
                 document.getElementById("errAdmin").value = "שם מנהל קצר מדי";
                 document.getElementById("errAdmin").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("errAdmin").style.display = "none";
             return true;
         }

         function chkpass() {
             var pass = document.getElementById("pass").value;
             if (pass.length < 3) {
                 document.getElementById("errpass").value = "סיסמה קצרה מדי";
                 document.getElementById("errpass").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("errpass").style.display = "none";
             return true;
         }

         function chkForm() {
             if (chkAdmin() == false) { return false; }
             if (chkpass() == false) { return false; }
             return true;
         }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style> 
 .btn:hover{
  background-color: #00e6e6;
  color: white;
}

        .btn {
            background-color: #ddd;
            border-color: darkslategray;
            color: black;
            padding: 4px 17px;
            text-align: right;
            font-size: 19px;
            transition: 0.3s;
            font-family: 'Varela Round';
            border-radius: 4px;
        }
  </style>

    <h1>התחברות מנהל</h1>
    <h1><%= msg %></h1>
    <h2><%= sqlLogin %></h2>
     <form id="register" method="post" runat="server" onsubmit="return chkForm()">
        <table class="loginTbl" style="width: 800px; height: 240px">
            <tr>
              <td>שם משתמש</td>
              <td><input type="text" id="aName" size="20px" name="aName">
              <input type="text" class="err" id="errAdmin" name="errAdmin" /></td>

          </tr>
          
          <tr>
              <td>סיסמה</td>
              <td><input type="password" id="pass" name="pass">
              <input type="text" class="err" id="errpass" name="errpass" /></td>

          </tr>

          <tr>
              <td colspan="2"><input class="btn" type="submit" name="submit" value="התחבר" /></td>
          </tr>
        </table>
    </form>

    </br>
    </br>

</asp:Content>
