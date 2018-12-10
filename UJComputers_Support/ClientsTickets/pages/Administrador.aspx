<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINIMASTER.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="ClientsTickets.pages.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <table style="width: 100%">
            <tr>
                <td colspan="7">
                    <asp:Label ID="Label3" runat="server" Text="Administrar tickets"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="7">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Assign tickets to your employees"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 4px">&nbsp;</td>
                <td style="width: 4px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TicketId" DataSourceID="objTicketAssignation" ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" EditImageUrl="~/pictures/UpdateTicket.png" ShowEditButton="True" />
                            <asp:BoundField DataField="TicketId" HeaderText="TicketId" InsertVisible="False" ReadOnly="True" SortExpression="TicketId" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" ReadOnly="True" />
                            <asp:BoundField DataField="FullName" HeaderText="Client" SortExpression="FullName" ReadOnly="True" >
                            <ItemStyle Height="75px" Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="EmailAddress" ReadOnly="True" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" SortExpression="PhoneNumber" ReadOnly="True" />
                            <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" ReadOnly="True" />
                            <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" ReadOnly="True" >
                            </asp:BoundField>
                            <asp:BoundField DataField="IssueDetail" HeaderText="Detail" SortExpression="IssueDetail" ReadOnly="True" >
                            <ItemStyle Width="350px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Assign To" SortExpression="AssignTo">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="AllResol" DataTextField="UserName" DataValueField="UserId" SelectedValue='<%# Bind("AssignTo", "{0}") %>'>
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="AllResol" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByDLL" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.StaffTableAdapter" UpdateMethod="Update">
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
                                            <asp:Parameter Name="UserName" Type="String" />
                                            <asp:Parameter Name="Password" Type="String" />
                                            <asp:Parameter Name="Status" Type="Boolean" />
                                            <asp:Parameter Name="Type" Type="Boolean" />
                                            <asp:Parameter Name="Original_UserId" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("AssignTo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TopicID" HeaderText="Topic" SortExpression="TopicID" ReadOnly="True" />
                            <asp:BoundField DataField="PrioratyID" HeaderText="Prioraty" SortExpression="PrioratyID" ReadOnly="True" />
                            <asp:BoundField DataField="StatusID" HeaderText="Status" ReadOnly="True" SortExpression="StatusID" />
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
                    <asp:ObjectDataSource ID="objTicketAssignation" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="AllOpenTickets" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketTableAdapter" UpdateMethod="UpdateAssigto">
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
                        <UpdateParameters>
                            <asp:Parameter Name="AssignTo" Type="Int32" />
                            <asp:Parameter Name="Original_TicketId" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="objAllTickets" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="AllticketSolved" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TicketTableAdapter" UpdateMethod="UpdateAssigto">
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
                        <UpdateParameters>
                            <asp:Parameter Name="AssignTo" Type="Int32" />
                            <asp:Parameter Name="Original_TicketId" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 4px">&nbsp;</td>
                <td style="width: 4px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 4px">&nbsp;</td>
                <td style="width: 4px">&nbsp;</td>
                <td align="center" bgcolor="#339933">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Assign tickets to your employees"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 4px">&nbsp;</td>
                <td style="width: 4px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TicketId" DataSourceID="objAllTickets" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TicketId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="TicketId" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" ReadOnly="True" />
                            <asp:BoundField DataField="FullName" HeaderText="Client" SortExpression="FullName" ReadOnly="True" >
                            <ItemStyle Height="75px" Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="EmailAddress" ReadOnly="True" />
                            <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" ReadOnly="True" />
                            <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" ReadOnly="True" />
                            <asp:BoundField DataField="IssueDetail" HeaderText="Detail" SortExpression="IssueDetail" ReadOnly="True" >
                            <ItemStyle Height="100px" Width="300px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Assign To" SortExpression="AssignTo">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="objEmployee0" DataTextField="UserName" DataValueField="UserId" SelectedValue='<%# Bind("AssignTo", "{0}") %>'>
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="objEmployee0" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByDLL" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.StaffTableAdapter" UpdateMethod="Update">
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
                                            <asp:Parameter Name="UserName" Type="String" />
                                            <asp:Parameter Name="Password" Type="String" />
                                            <asp:Parameter Name="Status" Type="Boolean" />
                                            <asp:Parameter Name="Type" Type="Boolean" />
                                            <asp:Parameter Name="Original_UserId" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("AssignTo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TopicID" HeaderText="Topic" SortExpression="TopicID" ReadOnly="True" />
                            <asp:BoundField DataField="PrioratyID" HeaderText="Prioraty" SortExpression="PrioratyID" ReadOnly="True" />
                            <asp:BoundField DataField="StatusID" HeaderText="Status" SortExpression="StatusID" ReadOnly="True" />
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
                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 4px">&nbsp;</td>
                <td style="width: 4px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
