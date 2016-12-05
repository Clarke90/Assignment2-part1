<%@ Page Title="back" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="back.aspx.cs" Inherits="workoutplanner.back" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Back Workouts </h1>
    <asp:GridView id="grdback" runat="server" CssClass="table table-stripped">

    </asp:GridView>
</asp:Content>
