<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SecuredPage1.aspx.cs" Inherits="electionProject.SecuredPage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>סקר הסקרים</h1>
    <table style="margin: auto">
        <tr><th> ערוץ </th><th> הליכוד </th><th>  יש עתיד  </th><th>תקווה חדשה</th><th>ימינה</th><th>   המשותפת   </th>
            <th>יהדות התורה</th><th>שס</th><th>ישראל ביתנו</th><th>מרצ</th><th>העבודה</th><th>כחול לבן</th><th>הישראלים</th>
        </tr>
        <tr><td>קשת 12</td><td>29</td><td>16</td><td>15</td><td>14</td><td>10</td>
            <td>8</td><td>8</td><td>7</td><td>5</td><td>4</td><td>4</td><td>0</td></tr>

        <tr><td>רשת 13</td><td>32</td><td>18</td>
            <td>14</td><td>10</td><td>10</td><td>7</td><td>6</td><td>6</td><td>5</td><td>4</td><td>4</td><td>4</td></tr>

        <tr><td>כאן 11</td><td>28</td><td>13</td><td>18</td><td>14</td><td>11</td><td>7</td>
            <td>8</td><td>5</td><td>4</td><td>0</td><td>4</td><td>8</td></tr>

    </table>
    <br />
    <h1>חלוקת הגושים</h1>
    <table>
        <tr>
            <th>ערוץ</th>
            <th>גוש נתניהו</th>
            <th>גוש נגד נתניהו</th>
            <th>ימינה</th>
        </tr>

        <tr>
            <td>קשת 12</td>
            <td style="background-color: aqua">59</td>
            <td style="background-color: darkseagreen">61</td>
            <td style="background-color: gold">14</td>
        </tr>

         <tr>
            <td>רשת 13</td>
            <td style="background-color: aqua">55</td>
            <td style="background-color: darkseagreen">65</td>
            <td style="background-color: gold">10</td>
        </tr>

        <tr>
            <td>כאן 11</td>
            <td style="background-color: aqua">57</td>
            <td style="background-color: darkseagreen">63</td>
            <td style="background-color: gold">14</td>
        </tr>
    </table>
   <br />
        <button class="btn">להרשמה לסקר</button>
   <br /><br />
</asp:Content>