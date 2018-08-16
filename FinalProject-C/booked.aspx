<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="booked.aspx.cs" Inherits="FinalProject_C.booked" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
        <h3>Congragulations you've booked your venue!</h3>
        <div class="row">
            <asp:Label id="venueName" runat="server" Font-Size="X-Large" ></asp:Label><br/>
            <asp:Label id="venueDescription" runat="server" Font-Size="Medium" ></asp:Label><br/>
            <asp:Label ID="venueCapacity" runat="server" Font-Size="Medium" ></asp:Label><br/>
            <asp:Label ID="venueCost" runat="server" Font-Size="Medium" ></asp:Label>
        </div>
    </div>
</asp:Content>