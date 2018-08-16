<%@ Page Title="Easy Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FinalProject_C.Defualtaspx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row jumbotron text-center">
        <h2> <strong>We can book the perfect venue for you!!!</strong></h2>
        <p class="lead"> Booking a venue has never been easier, with a click of a button you can have your dream venue.</p>
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
        <a href="book.aspx" class="btn btn-primary btn-lg">Book a venue</a>
    </div>

    <div class="row text-center">
        <div class="col-sm-4">
            <h2>Get in touch with us</h2>
            <p>
                Give us a call and discuss what packages we can offer for your special day, our sales agents will be more than happy to talk to you.
            </p>
            <a class="btn btn-default" href="contact.aspx">Contact Us &raquo;</a>
        </div>
        <div class="col-sm-4">
            <h2>Book the venue</h2>
            <p>
                Book the venue you love. Special offers will be applied on check out.
            </p>
            <a class="btn btn-default" href="book.aspx">Book the venue &raquo;</a>
        </div>
        <div class="col-sm-4">
            <h2>About Us</h2>
            <p>
               Learn about us, what we do, how we do it.
            </p>
            <a class="btn btn-default" href="about.aspx">About Us &raquo;</a>
        </div>
    </div>

</asp:Content>