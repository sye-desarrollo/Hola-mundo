<%@ Page Title="" Language="C#" MasterPageFile="~/ResolutorMaster.Master" AutoEventWireup="true" CodeBehind="SolvedTickets.aspx.cs" Inherits="ClientsTickets.pages.SolvedTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

    <table style="width: 75%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Your solved tickets"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TicketId" DataSourceID="objSolvedTickets" ForeColor="#333333" GridLines="None" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TicketId" HeaderText="TicketId" InsertVisible="False" ReadOnly="True" SortExpression="TicketId" />
                        <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
                        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
                        <asp:BoundField DataField="IssueDetail" HeaderText="IssueDetail" SortExpression="IssueDetail" />
                        <asp:BoundField DataField="AssignTo" HeaderText="AssignTo" SortExpression="AssignTo" />
                        <asp:BoundField DataField="TopicID" HeaderText="TopicID" SortExpression="TopicID" />
                        <asp:BoundField DataField="PrioratyID" HeaderText="PrioratyID" SortExpression="PrioratyID" />
                        <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerSettings PageButtonCount="5" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="objSolvedTickets" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="YourSolvedTickets" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_TicketId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CreatedDate" Type="DateTime" />
                        <asp:Parameter Name="TopicID" Type="Int32" />
                        <asp:Parameter Name="PrioratyID" Type="Int32" />
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Summary" Type="String" />
                        <asp:Parameter Name="IssueDetail" Type="String" />
                        <asp:Parameter Name="AssignTo" Type="Int32" />
                        <asp:Parameter Name="StatusID" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="UserName" SessionField="Resol" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CreatedDate" Type="DateTime" />
                        <asp:Parameter Name="TopicID" Type="Int32" />
                        <asp:Parameter Name="PrioratyID" Type="Int32" />
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Summary" Type="String" />
                        <asp:Parameter Name="IssueDetail" Type="String" />
                        <asp:Parameter Name="AssignTo" Type="Int32" />
                        <asp:Parameter Name="StatusID" Type="Int32" />
                        <asp:Parameter Name="Original_TicketId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </div>
</asp:Content>
