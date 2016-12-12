<%@ Page Title="workout details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="workout-details.aspx.cs" Inherits="workoutplanner.workout_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Workout Details</h1>
    <div class="form-group">
        <label for="txtName" class="col-sm-3 control-label">Workout Name:</label>
        <asp:TextBox ID="txtName" runat="server" required />
    </div>
    <div class="form-group" >
        <label for="txtNum" class="col-sm-3 control-label">Workout Number</label>
        <asp:TextBox ID="txtNum" runat="server" required ValidationExpression="^[\s\S]{0,2}$" ErrorMessage="maximum 2 characters allowed" type="number" />
    </div>
      <div class="form-group" >
        <label for="txtIntensity" class="col-sm-3 control-label">Workout Intensity</label>
        <asp:TextBox ID="txtIntensity" runat="server" ValidationExpression="^[\s\S]{0,2}$" ErrorMessage="maximum 2 characters allowed" required type="number" />
    </div>
      <div class="form-group" >
        <label for="txtSetsNum" class="col-sm-3 control-label">Number of sets</label>
        <asp:TextBox ID="txtSetsNum" runat="server" ValidationExpression="^[\s\S]{0,2}$" ErrorMessage="maximum 2 characters allowed" required type="number"  />
    </div>
      <div class="form-group" >
        <label for="txtUrl" class="col-sm-3 control-label">Workout URL</label>
        <asp:TextBox ID="txtUrl" runat="server" required />
    </div>
    <asp:button class="btn btn-success col-sm-offset-3" id="btnSave" runat="server"
        text="Save" />
</asp:Content>
