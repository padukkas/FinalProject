<%@ Page Title="About Easy Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="FinalProject_C.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <h1 class="title">About Easy Booking</h1>
            </div>
        </div>

        <br />
        <br />

         <div class="row">
            <div class="col-sm-4">
                <asp:Image ID="AboutImage1" runat="server" ImageUrl="images/venue1.jpg" CssClass="img-responsive"></asp:Image>
            </div>
            <div class="col-sm-4">
                <asp:Image ID="AboutImage2" runat="server" ImageUrl="images/venue2.jpg" CssClass="img-responsive"></asp:Image>
            </div>
            <div class="col-sm-4">
                <asp:Image ID="AboutImage3" runat="server" ImageUrl="images/venue3.jpg" CssClass="img-responsive"></asp:Image>
            </div>
        </div>

        <br />
        <br />

        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                Whether you're organizing a corporate event or a private party, 
                    Easy Booking has a wide selection of amazing event spaces with 
                    pictures and all the information you need. Use the search function
                    to find the perfect place for you. In addition to regular settings,
                    we have many unconventional venues to make your day truly unique!
            </div>
        </div>
    </div>
</asp:Content>