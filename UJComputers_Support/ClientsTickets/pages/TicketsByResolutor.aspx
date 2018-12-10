<%@ Page Title="" Language="C#" MasterPageFile="~/ResolutorMaster.Master" AutoEventWireup="true" CodeBehind="TicketsByResolutor.aspx.cs" Inherits="ClientsTickets.pages.ResolutorTicket" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" align="center">
    <table style="width: 100%" runat="server">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="These are your assigned tickets. Please solve them as soon as posible"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="grdYourTickets" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5" AutoGenerateColumns="False" DataKeyNames="TicketId" DataSourceID="objYourTickets" OnSelectedIndexChanged="grdYourTickets_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/pictures/UpdateTicket.png" SelectImageUrl="~/pictures/Check.png" ShowEditButton="True" ShowSelectButton="True">
                        <ItemStyle Width="75px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="TicketId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="TicketId" />
                        <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" ReadOnly="True" />
                        <asp:BoundField DataField="FullName" HeaderText="Client" SortExpression="FullName" ReadOnly="True" >
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="EmailAddress" ReadOnly="True" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" SortExpression="PhoneNumber" ReadOnly="True" />
                        <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" ReadOnly="True" />
                        <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" ReadOnly="True" />
                        <asp:BoundField DataField="IssueDetail" HeaderText="Detail" SortExpression="IssueDetail" ReadOnly="True" >
                        <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="AssignTo" HeaderText="Assigned  To" SortExpression="AssignTo" ReadOnly="True" />
                        <asp:BoundField DataField="TopicID" HeaderText="Topic" SortExpression="TopicID" ReadOnly="True" />
                        <asp:BoundField DataField="PrioratyID" HeaderText="Prioraty" SortExpression="PrioratyID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Status" SortExpression="StatusID">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="objSTATUS" DataTextField="StatusDescription" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID", "{0}") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="objSTATUS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.StatusTableAdapter" UpdateMethod="Update">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Original_StatusID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="StatusDescription" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="StatusDescription" Type="String" />
                                        <asp:Parameter Name="Original_StatusID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:ObjectDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("StatusID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="objYourTickets" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Allyourtickets" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketTableAdapter" UpdateMethod="UpdateStatus">
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
                        <asp:Parameter Name="StatusID" Type="Int32" />
                        <asp:Parameter Name="Original_TicketId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <hr /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblDetails" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="grdYourTicketDetails" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="objDetailsofyourticket" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" SortExpression="Id" />
                        <asp:BoundField DataField="TicketId" HeaderText="Ticket" SortExpression="TicketId" ReadOnly="True" Visible="False" />
                        <asp:BoundField DataField="DateActivity" HeaderText="Last Activity" SortExpression="DateActivity" ReadOnly="True" />
                        <asp:BoundField DataField="UserId" HeaderText="User" SortExpression="UserId" ReadOnly="True" />
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
                <asp:ObjectDataSource ID="objDetailsofyourticket" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="YourTicketsDetails" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketDetailTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="TicketId" Type="Int32" />
                        <asp:Parameter Name="DateActivity" Type="DateTime" />
                        <asp:Parameter Name="UserId" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdYourTickets" DefaultValue="0" Name="ticketid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <hr /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblRes" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <textarea id="txtAnswer" cols="50" name="S1" rows="4" runat="server" enableviewstate="True" visible="True"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnswer" ErrorMessage="*" ForeColor="Red" InitialValue="false" ToolTip="Required Field" ValidationGroup="send"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" ValidationGroup="send" />
                <ajaxToolkit:RoundedCornersExtender ID="btnSend_RoundedCornersExtender" runat="server" BehaviorID="Button1_RoundedCornersExtender" BorderColor="Green" TargetControlID="btnSend">
                </ajaxToolkit:RoundedCornersExtender>
            </td>
        </tr>
    </table>
        </div>

</asp:Content>
