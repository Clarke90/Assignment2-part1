<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shoulders.aspx.cs" Inherits="workoutplanner.shoulders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Shoulder Workouts</h1>
    </div>
    <a href="workout-details.aspx">Add a Workout</a>
    <asp:GridView ID="grdShoulders" runat="server" CssClass="table table-striped" AutoGenerateColumns="false"
        DataKeyNames="workout_num" onRowDeleting="grdChest_RowDeleting">
        <Columns>
            <asp:BoundField DataField="workout_num" headertext="Workout Num " />
            <asp:BoundField DataField="workout_type" headertext="Muscle Group" />
            <asp:BoundField DataField="workout_name" headertext="Workouts" />
            <asp:BoundField DataField="sets_num" headertext="Number of Sets" />
            <asp:BoundField DataField="intensity_num" headertext="Workout Intensity" />    
            <asp:BoundField DataField="link_url" headertext="Reference" />
            <asp:HyperLinkField headertext="Edit" Text="Edit" NavigateUrl="~/workout-details.aspx" 
                DataNavigateUrlFields="workout_num"  DataNavigateUrlFormatString="~/workout-details.aspx?workout_num={0}"/>
            <asp:CommandField headertext="Delete" ShowDeleteButton="true" ControlStyle-CssClass="confirmation" />
        </Columns>
    </asp:GridView>
</asp:Content>
