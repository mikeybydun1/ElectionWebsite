<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="electionProject.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script>
        function chkfullName() {
            var fullName = document.getElementById("fullName").value;
            if (fullName.length < 3) {
                document.getElementById("errfullName").value = "שם קצר מדי";
                document.getElementById("errfullName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("errfullName").style.display = "none";
            return true;
        }

        function chkparty() {
            var party = document.getElementById("party").value;
            if (party.length < 3) {
                document.getElementById("errparty").value = "שם מפלגה קצר מדי";
                document.getElementById("errparty").style.display = "inline";
                return false;
            }
            else
                document.getElementById("errparty").style.display = "none";
            return true;
        }

        function chkpr() {
            var pr = document.getElementById("pr").value;
            if (pr.length < 3) {
                document.getElementById("errpr").value = "שם רהמ קצר מדי";
                document.getElementById("errpr").style.display = "inline";
                return false;
            }
            else
                document.getElementById("errpr").style.display = "none";
            return true;
        }

        function chkpassword() {
            var password = document.getElementById("password").value;
            if (pass.length < 4) {
                document.getElementById("errpassword").value = "סיסמה צריכה להכיל לפחות 5 תווים";
                document.getElementById("errpassword").style.display = "inline";
                return false;
            }
            else
                document.getElementById("errpassword").style.display = "none";
            return true;
        }

      function chkgender() {
          var gender = document.getElementById("gender").value;
          if (gender.length > 1) {
              document.getElementById("errgender").value = "המגדר יכול להכיל אות יחידה בלבד";
              document.getElementById("errgender").style.display = "inline";
              return false;
          }
          else
              document.getElementById("errgender").style.display = "none";
          return true;
      }

        function chkForm() {
            if (chkfullName() == false) { return false; }
            if (chkparty() == false) { return false; }
            if (chkpr() == false) { return false; }
            if (chkpassword() == false) { return false; }
            if (chkgender() == false) { return false; }

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

    <h1>טופס עדכון פרטים</h1>
    <form method="post" runat="server" onsubmit="return chkForm()">
        <table border="3" style="text-align: right; margin: auto;
        font-family: 'Varela Round'; border: 1px solid darkblue; width: 900px; height: 350px; padding: 5px;
        text-align: center; border-spacing: 6px;">
            <tr>
                <td>שם משתמש</td>
                <td><input type="text" disabled="disabled" value="<%=un %>"/></td>
            </tr>

            <tr>
                <td>שם מלא</td>
                <td><input type="text" id="fullName" name="fullName" size="20" value="<%=fullName %>"/>
                <input type="text" class="err" id="errfullName" name="errfullName" /></td>

            </tr>

            <tr>
                <td>מפלגה</td>
                <td><input type="text" id="party" name="party" size="20" value="<%=party %>"/>
                <input type="text" class="err" id="errparty" name="errparty" /></td>
            </tr>
            
            <tr>
                <td>ראש ממשלה</td>
                <td><input type="text" id="pr" name="pr" size="20" value="<%=pr %>"/>
                <input type="text" class="err" id="errpr" name="errpr" /></td>
            </tr>

            <tr>
                <td>אימייל</td>
                <td><input type="text" id="email" name="email" size="20" value="<%=email %>"/></td>
            </tr>

            <tr>
                <td>מגדר</td>
                <td><input type="text" id="gender" name="gender" size="20" value="<%=gender %>"/>
                <input type="text" class="err" id="errgender" name="errgender" /></td>

            </tr>

            <tr>
                <td>סיסמה</td>
                <td><input type="text" id="password" name="password" size="20" value="<%=password %>"/>
                <input type="text" class="err" id="errpassword" name="errpassword" /></td>
        
            </tr>


            <tr>
                <td colspan="2"><input class="btn" type="submit" name="submit" value="לחץ לעדכון פרטים "/></td>
            </tr>
        </table>
    </form>

    <h2 style="direction: ltr"><%= sqlUpdate %></h2>
    <%= msg %>


</asp:Content>
