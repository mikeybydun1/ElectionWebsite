<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="showTable.aspx.cs" Inherits="electionProject.showTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1 {
            color: darkslateblue;
            text-align: center;
            font-family: Assistant;
            font-size: 43px;
        }

        h2 {
            font-size: 36px;
        }

        p {
            color: darkblue;
            font-family: Assistant
        }



        table {
            border: 1px solid darkblue;
            width: 600px;
            height: auto;
            font-family: 'Varela Round';
            text-align: center;
            font-size: 32px;
            border-spacing: 4px;
            background-color: lavenderblush;
        }

        td
        {
            border: 1px solid darkblue;
            width: 15%;
            height: 30px;
            font-family: 'Varela Round';
            text-align: center;
            font-size: 24px;
            border-spacing: 4px;
            background-color: lavenderblush;
        }
        th {
            background-color: lightgray;
            color: blueviolet;
            border-spacing: 16px;
            font-family: 'Varela Round';

        }
        .btn {
    background-color: #ddd;
    border-color: darkslategray;
    color: black;
    padding: 12px 24px;
    text-align: center;
    font-size: 19px;
    margin-left: 30px;
    transition: 0.3s;
    font-family: 'Varela Round';
}

    .btn:hover {
        background-color: #00cccc;
        color: white;
    }
    </style>

    <h1> טבלת משתמשים </h1>

    <table style="border: 1px solid black; margin: 0px auto">
        <%= st %>
    </table>
    
    <h3><%= msg %></h3>

</asp:Content>
