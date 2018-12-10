<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINIMASTER.Master" AutoEventWireup="true" CodeBehind="MantUsers.aspx.cs" Inherits="ClientsTickets.pages.MantUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
<table width="75%">
    <tr>
        <td>
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" height="50">
                <asp:Label ID="Label8" runat="server" Text="Users Administration" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                <br />
                
            </td>
        </tr>
        <tr>
            <td colspan="2" height="50" align="center">
                <asp:Label ID="Label9" runat="server" Text="These are the users in system"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td colspan="2" height="50" align="center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="objUsersWithoutticket" ForeColor="Blue" GridLines="None" BackColor="#FF99CC" BorderStyle="Outset">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/pictures/UpdateTicket.png" ShowEditButton="True" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" ReadOnly="True" Visible="False" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:CheckBoxField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="objUsersWithoutticket" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.StaffTableAdapter" UpdateMethod="UpdateUsers">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_UserId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="Boolean" />
                        <asp:Parameter Name="Original_UserId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                </td>
        </tr>
        <tr>
            <td colspan="2" height="50" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" height="50" align="center">
                <asp:Label ID="Label10" runat="server" Text="Here you can update the users"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="objUser" ForeColor="Blue" GridLines="None" BackColor="#FF99CC" BorderStyle="Outset">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/pictures/UpdateTicket.png" ShowEditButton="True" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" DataFormatString="*********" ReadOnly="True" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:CheckBoxField DataField="Type" HeaderText="Admin" SortExpression="Type" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="objUser" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllUsersButNotYou" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.StaffTableAdapter" UpdateMethod="UpdateUsers">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_UserId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="Boolean" />
                        <asp:Parameter Name="Original_UserId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </td>
    </tr>
    </table>

    </div>
</asp:Content>
