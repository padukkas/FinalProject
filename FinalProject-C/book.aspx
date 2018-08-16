<%@ Page Title="Book your bookvenue with Easy Book" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="FinalProject_C.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center jumbotron">
        <h1>Book your venues here!</h1>
        <form>
            <asp:TextBox ID="searchText" type="text" placeholder="Search.." runat="server" Columns="30" name="search"></asp:TextBox>
            <asp:Button ID="searchButton" OnClick="SearchVenue" runat="server" Text="Search" />
        </form>
        <div runat="server" id="content">

        </div>
    </div>
</asp:Content>