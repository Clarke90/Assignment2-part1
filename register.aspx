<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="workoutplanner.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     <div class="modal-dialog">
        <div class="modal-content">
            <h1>Register</h1>
            <p>Register in seconds to get access to workouts, updated daily!</p>
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" CssClass="col-sm-offset-3"/>
            </div>

            <div class="form-group">
                <label for="txtUsername" class="control-label col-sm-3">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" required />
            </div>

            <div class="form-group">
                <label for="txtPassword" class="control-label col-sm-3">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" required TextMode="Password" />
            </div>

            <div class="form-group">
                <label for="txtConfirm" class="control-label col-sm-3">Confirm Password:</label>
                <asp:TextBox ID="txtConfirm" runat="server" required TextMode="Password" />
                <asp:CompareValidator runat="server" ControlToValidate="txtPassword" 
                     ControlToCompare="txtConfirm" Operator="Equal" CssClass="alert alert-danger"
                     ErrorMessage="Passwords do not match" />
            </div>

            <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-success col-sm-offset-3"
                Text="Register" OnClick="btnRegister_Click" />
            </div>
    </div>

</asp:Content>
