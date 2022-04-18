<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDeleteUser.aspx.cs" Inherits="electionProject.AdminDeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>טבלת משתמשים למחיקה</h1>
    <table border="3" style="text-align: right; margin: auto;
        font-family: 'Varela Round'; border: 1px solid darkblue; width: 900px; height: 350px; padding: 5px;
        text-align: center; border-spacing: 6px;">
        <%= st %>
        <%= deletMsg %>
        <%= sqlSelect %>
    </table>

</asp:Content>
