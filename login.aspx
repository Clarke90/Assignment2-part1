<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="workoutplanner.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                 <h1>Login</h1>
                <p>Already have an account?</p>
            </div> 
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-sm-offset-3"
                          />
                    </div>
                    <div class="form-group">
                        <label for="txtUsername" class="control-label col-sm-3">Username:</label>
                        <asp:TextBox ID="txtUsername" runat="server" required />
                    </div>

                    <div class="form-group">
                        <label for="txtPassword" class="control-label col-sm-3">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" required TextMode="Password" />
                    </div>

                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success col-sm-offset-3" Text="Login" OnClick="btnLogin_Click"/>
                </div><!-- ./ content --> 
    </div>

</asp:Content>
