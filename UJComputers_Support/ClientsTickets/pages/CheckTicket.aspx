<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="CheckTicket.aspx.cs" Inherits="ClientsTickets.pages.CheckTicket" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 75%" align="center">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Check your tickets status here!"></asp:Label>
            </td>
            <td align="right" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label4" runat="server" Text="Please fill the blanks with the required information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">Ticket ID:</td>
            <td colspan="2">
                <asp:TextBox ID="txtTicketID" runat="server" Width="100px"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtTicketID_MaskedEditExtender" runat="server" BehaviorID="txtTicketID_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="9999999" TargetControlID="txtTicketID" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTicketID" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="SearchTicket"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">Email Address</td>
            <td colspan="2">
                <asp:TextBox ID="txtEmail" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTicketID" ErrorMessage="*" ForeColor="Red" ValidationGroup="SearchTicket"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" style="height: 26px" ValidationGroup="SearchTicket" />
                <ajaxToolkit:RoundedCornersExtender ID="btnSearch_RoundedCornersExtender" runat="server" BehaviorID="Button1_RoundedCornersExtender" BorderColor="Green" TargetControlID="btnSearch">
                </ajaxToolkit:RoundedCornersExtender>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketId" DataSourceID="objTicket" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TicketId" HeaderText="Ticket" InsertVisible="False" ReadOnly="True" SortExpression="TicketId" />
                        <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" />
                        <asp:BoundField DataField="TopicID" HeaderText="Topic" SortExpression="TopicID" />
                        <asp:BoundField DataField="PrioratyID" HeaderText="Prioraty" SortExpression="PrioratyID" />
                        <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="EmailAddress" Visible="False" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" Visible="False" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" Visible="False" />
                        <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
                        <asp:BoundField DataField="IssueDetail" HeaderText="Detail" SortExpression="IssueDetail" Visible="False" />
                        <asp:BoundField DataField="AssignTo" HeaderText="AssignTo" SortExpression="AssignTo" Visible="False" />
                        <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
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
                <asp:ObjectDataSource ID="objTicket" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Check" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketTableAdapter" UpdateMethod="Update">
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
                        <asp:ControlParameter ControlID="txtTicketID" DefaultValue="0" Name="TicketId" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtEmail" DefaultValue="algo@gmail.com" Name="EmailAddress" PropertyName="Text" Type="String" />
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
            <td align="center" colspan="4">
                &nbsp;
                <hr style="color: #008000" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Ticket Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:GridView ID="grdTicketDetails" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="objDesciption" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="TicketId" HeaderText="TicketId" SortExpression="TicketId" />
                        <asp:BoundField DataField="DateActivity" HeaderText="DateActivity" SortExpression="DateActivity" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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
                <asp:ObjectDataSource ID="objDesciption" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTicketDescription" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketDetailTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="TicketId" Type="Int32" />
                        <asp:Parameter Name="DateActivity" Type="DateTime" />
                        <asp:Parameter Name="UserId" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtTicketID" DefaultValue="0" Name="ticketid" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                Give your answer</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="justify" colspan="3">
                <textarea id="txtAnswer" cols="50" name="S1" rows="3" runat="server" visible="True"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnswer" ErrorMessage="*" ForeColor="Red" ValidationGroup="Sent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnSend" runat="server" Text="Sent" Width="50px" OnClick="btnSend_Click" EnableTheming="True" Enabled="False" ValidationGroup="Sent" />
                <ajaxToolkit:RoundedCornersExtender ID="btnSend_RoundedCornersExtender" runat="server" BehaviorID="Button2_RoundedCornersExtender" BorderColor="Green" TargetControlID="btnSend">
                </ajaxToolkit:RoundedCornersExtender>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <hr style="color: #008000" />
            </td>
        </tr>
    </table>

</asp:Content>
