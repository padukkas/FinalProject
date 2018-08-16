<%@ Page Title="Book this venue!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookvenue.aspx.cs" Inherits="FinalProject_C.bookvenue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center jumbotron" id="ContactSection">
        <h2> <strong>Book your venue here</strong></h2>
        <br />
        <div id="info">
            <div class="row">
                <asp:Label id="venueName" runat="server" Font-Size="X-Large" >Venue name</asp:Label><br/>
                <asp:Label id="venueDescription" runat="server" Font-Size="Medium" >Venue description</asp:Label><br/>
                <asp:Label ID="venueCapacity" runat="server" Font-Size="Medium" >Venue capacity</asp:Label><br/>
                <asp:Label ID="venueCost" runat="server" Font-Size="Medium" >Venue cost</asp:Label>
            </div>
        </div>
        <br />
        <div id="name">
            <div class="row">
                <asp:RequiredFieldValidator runat="server" class="required"
                ControlToValidate="NameText" Display = "Dynamic"
                ErrorMessage="* Name is required!">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="NameText" ValidationExpression="^[a-zA-Z]{1,}(?: [a-zA-Z]+){0,2}$" 
                class="required" ErrorMessage="* Enter a valid name!" 
                Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                ControlToValidate="NameText"
                ValidationExpression="^.{0,70}$"
                Display="Dynamic" class="required"
                ErrorMessage="* Enter a valid name (Max 70 Chars)">
                </asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-offset-3">
                <div class="col-sm-3 ">
                    <asp:Label ID="Name" runat="server" Text="Full Name"></asp:Label>
                </div>
                <div class="col-sm-2 ">
                    <asp:TextBox ID="NameText" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div id="email">
            <div class="row">       
                <asp:RequiredFieldValidator runat="server" class="required"
                ControlToValidate="EmailText" Display = "Dynamic"
                ErrorMessage="* Email is required!">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                runat="server" ControlToValidate="EmailText" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                class="required" ErrorMessage="* Enter a valid email!" 
                Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-offset-3">
                <div class="col-sm-3 ">
                    <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                </div>
                <div class="col-sm-2">
                    <asp:TextBox ID="EmailText" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div id="address">
            <div class="row">
                    <asp:RequiredFieldValidator runat="server" class="required"
                    ControlToValidate="AddressText" Display = "Dynamic"
                    ErrorMessage="* Address is required!">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                    runat="server" ControlToValidate="AddressText" ValidationExpression="^(?![\d\W\s()\-]+$).+" 
                    class="required" ErrorMessage="* Enter a valid address!" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-offset-3">
                <div class="col-sm-3">
                    <asp:Label ID="Address" runat="server" Text="Home Address"></asp:Label>
                </div>
                <div class="col-sm-2">
                    <asp:TextBox ID="AddressText" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div id="phone">
            <div class="row">
                <asp:RequiredFieldValidator runat="server" class="required"
                ControlToValidate="PhoneText" Display = "Dynamic"
                ErrorMessage="* Phone is required!">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                runat="server" ControlToValidate="PhoneText" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" 
                class="required" ErrorMessage="* Enter a valid number! Ex. 289-458-5874" 
                Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-offset-3">
                <div class="col-sm-3">
                    <asp:Label ID="Phone" runat="server" Text="Phone Number"></asp:Label>
                </div>
                <div class="col-sm-2">
                    <asp:TextBox ID="PhoneText" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div id="calendar">
            <br />
            <div class="row col-sm-offset-3">
                <div class="col-sm-3">
                    <asp:Label ID="Calendar" runat="server" Text="Date"></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:Calendar ID="CalendarDate" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnDayRender="CalendarDate_DayRender" TitleFormat="Month" Width="400px" SelectedDate="08/08/2018 11:37:18">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </div>
            </div>
        </div>
        <div class="row col-sm-offset-5">
            <div class="col-sm-3">
                <asp:Button ID="Book" runat="server" Text="Book this venue"  OnClick="Book_Click"/>
            </div>
        </div>
    </div>
</asp:Content>