<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProject_C.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <h2>Admin page</h2>
            <h1>Venues</h1>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="vnumber" DataSourceID="SqlSource">
                <AlternatingItemTemplate>
                    <tr style="margin: 50px">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnameLabel" runat="server" Text='<%# Eval("vname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vdescLabel" runat="server" Text='<%# Eval("vdesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vcapacityLabel" runat="server" Text='<%# Eval("vcapacity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vpriceLabel" runat="server" Text='<%# Eval("vprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vimgpathLabel" runat="server" Text='<%# Eval("vimgpath") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel1" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vnameTextBox" runat="server" Text='<%# Bind("vname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vdescTextBox" runat="server" Text='<%# Bind("vdesc") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vcapacityTextBox" runat="server" Text='<%# Bind("vcapacity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vpriceTextBox" runat="server" Text='<%# Bind("vprice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vimgpathTextBox" runat="server" Text='<%# Bind("vimgpath") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="vnameTextBox" runat="server" Text='<%# Bind("vname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vdescTextBox" runat="server" Text='<%# Bind("vdesc") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vcapacityTextBox" runat="server" Text='<%# Bind("vcapacity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vpriceTextBox" runat="server" Text='<%# Bind("vprice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vimgpathTextBox" runat="server" Text='<%# Bind("vimgpath") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnameLabel" runat="server" Text='<%# Eval("vname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vdescLabel" runat="server" Text='<%# Eval("vdesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vcapacityLabel" runat="server" Text='<%# Eval("vcapacity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vpriceLabel" runat="server" Text='<%# Eval("vprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vimgpathLabel" runat="server" Text='<%# Eval("vimgpath") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">Venue ID</th>
                                        <th runat="server">Venue Name</th>
                                        <th runat="server">Venue Description</th>
                                        <th runat="server">Venue Capacity</th>
                                        <th runat="server">Venue Price</th>
                                        <th runat="server">Venue Image</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnameLabel" runat="server" Text='<%# Eval("vname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vdescLabel" runat="server" Text='<%# Eval("vdesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vcapacityLabel" runat="server" Text='<%# Eval("vcapacity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vpriceLabel" runat="server" Text='<%# Eval("vprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vimgpathLabel" runat="server" Text='<%# Eval("vimgpath") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                </asp:ListView>
            <asp:SqlDataSource ID="SqlSource" runat="server" ConnectionString="<%$ ConnectionStrings:VenueConnectionString %>" DeleteCommand="DELETE FROM [venue] WHERE [vnumber] = @vnumber" InsertCommand="INSERT INTO [venue] ([vname], [vdesc], [vcapacity], [vprice], [vimgpath]) VALUES (@vname, @vdesc, @vcapacity, @vprice, @vimgpath)" SelectCommand="SELECT * FROM [venue]" UpdateCommand="UPDATE [venue] SET [vname] = @vname, [vdesc] = @vdesc, [vcapacity] = @vcapacity, [vprice] = @vprice, [vimgpath] = @vimgpath WHERE [vnumber] = @vnumber">
                <DeleteParameters>
                    <asp:Parameter Name="vnumber" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="vname" Type="String" />
                    <asp:Parameter Name="vdesc" Type="String" />
                    <asp:Parameter Name="vcapacity" Type="Decimal" />
                    <asp:Parameter Name="vprice" Type="Decimal" />
                    <asp:Parameter Name="vimgpath" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="vname" Type="String" />
                    <asp:Parameter Name="vdesc" Type="String" />
                    <asp:Parameter Name="vcapacity" Type="Decimal" />
                    <asp:Parameter Name="vprice" Type="Decimal" />
                    <asp:Parameter Name="vimgpath" Type="String" />
                    <asp:Parameter Name="vnumber" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h1>Venue Bookings</h1>
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="cnumber,vnumber,bdate" DataSourceID="SqlSource2">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="cnumberLabel" runat="server" Text='<%# Eval("cnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bdateLabel" runat="server" Text='<%# Eval("bdate") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="cnumberLabel1" runat="server" Text='<%# Eval("cnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel1" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bdateLabel1" runat="server" Text='<%# Eval("bdate") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="cnumberTextBox" runat="server" Text='<%# Bind("cnumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="vnumberTextBox" runat="server" Text='<%# Bind("vnumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bdateTextBox" runat="server" Text='<%# Bind("bdate") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="cnumberLabel" runat="server" Text='<%# Eval("cnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bdateLabel" runat="server" Text='<%# Eval("bdate") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">Customer ID</th>
                                        <th runat="server">Venue ID</th>
                                        <th runat="server">Date Venue Is Booked</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="cnumberLabel" runat="server" Text='<%# Eval("cnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="vnumberLabel" runat="server" Text='<%# Eval("vnumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bdateLabel" runat="server" Text='<%# Eval("bdate") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VenueConnectionString %>" DeleteCommand="DELETE FROM [booking] WHERE [cnumber] = @cnumber AND [vnumber] = @vnumber AND [bdate] = @bdate" InsertCommand="INSERT INTO [booking] ([cnumber], [vnumber], [bdate]) VALUES (@cnumber, @vnumber, @bdate)" SelectCommand="SELECT * FROM [booking]">
                    <DeleteParameters>
                        <asp:Parameter Name="cnumber" Type="Int32" />
                        <asp:Parameter Name="vnumber" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="bdate" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cnumber" Type="Int32" />
                        <asp:Parameter Name="vnumber" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="bdate" />
                    </InsertParameters>
                </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>