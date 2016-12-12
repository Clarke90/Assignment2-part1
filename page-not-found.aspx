<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="page-not-found.aspx.cs" Inherits="workoutplanner.page_not_found" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-sm-6">
            <h1>Whoa, you're lost buddy!</h1>
            <h2>You don't find Chuck Norris, Chuck Norris finds you.</h2>
            <a href="chest.aspx">Get outta here!</a>
        </div>
        <div class="col-sm-6">
            <img src="images/chuck.jpg" alt="Chuck Norris 404 image" />
        </div>
    </div>
</asp:Content>
