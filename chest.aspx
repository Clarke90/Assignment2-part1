<%@ Page Title="Chest" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chest.aspx.cs" Inherits="workoutplanner.chest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Chest Workouts</h1>

    <asp:GridView ID="grdChest" runat="server">

    </asp:GridView>
</asp:Content>
