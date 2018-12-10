<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="ClientsTickets.pages.CreateTicket" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table border="1">
    <table style="width: 75%">
        <tr>
            <td colspan="4">
                <asp:Label ID="Label3" runat="server" Text="Open a new ticket" Font-Bold="True" Font-Size="Large" ForeColor="#333333"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label4" runat="server" Text="Fill the forms below to open a new file"></asp:Label>
                <asp:ObjectDataSource ID="objTopic" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.TopicsTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_TopicId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TopicDescription" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TopicDescription" Type="String" />
                        <asp:Parameter Name="Original_TopicId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td></td>
            <td width="100">Topic:</td>
            <td colspan="3">
                <asp:DropDownList ID="ddlTopic" runat="server" DataSourceID="objTopic" DataTextField="TopicDescription" DataValueField="TopicId">
                    <asp:ListItem Value="1">Low</asp:ListItem>
                    <asp:ListItem Value="2">Normal</asp:ListItem>
                    <asp:ListItem Value="3">High</asp:ListItem>
                    <asp:ListItem Value="4">Emergency</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left" bgcolor="#5FA53F" style="height: 24px" width="250">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Contact Information" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Full Name:"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtName" runat="server" Width="300px" TabIndex="1" MaxLength="70"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtName_MaskedEditExtender" runat="server" BehaviorID="txtName_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" TargetControlID="txtName" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100"></td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Email Address"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtEmail" runat="server" TabIndex="2" TextMode="Email" Width="200px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100"></td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtPhone" runat="server" TabIndex="3"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtPhone_MaskedEditExtender" runat="server" BehaviorID="TextBox2_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="9999-9999" TargetControlID="txtPhone" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100"></td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtCompany" runat="server" Width="300px" TabIndex="4" MaxLength="100"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtCompany_MaskedEditExtender" runat="server" BehaviorID="txtCompany_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" TargetControlID="txtCompany" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtCompany"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="height: 23px" align="left" bgcolor="#5FA53F">&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Text="Ticket Details" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 23px" align="center">&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Issue Summary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSummary" runat="server" Width="300px" MaxLength="150" TabIndex="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtSummary"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Issue Details"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 88px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td colspan="2" style="height: 88px">
                <textarea id="TxtDetails" cols="50" name="S1" rows="3" runat="server" tabindex="6"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TxtDetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Priority Level"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlPriority" runat="server" DataSourceID="ObjPriority" DataTextField="PrioratyDescription" DataValueField="PrioratyId" TabIndex="7">
                    <asp:ListItem Value="1">Hardware</asp:ListItem>
                    <asp:ListItem Value="2">Software</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjPriority" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ClientsTickets.Data.dtsTicketsTableAdapters.PrioratyTableTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_PrioratyId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PrioratyDescription" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PrioratyDescription" Type="String" />
                        <asp:Parameter Name="Original_PrioratyId" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="lblCorreo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="Button1" runat="server" Text="Create Ticket" OnClick="Button1_Click" TabIndex="8" />
                <ajaxToolkit:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" BehaviorID="Button1_RoundedCornersExtender" BorderColor="Green" TargetControlID="Button1" />
            </td>
        </tr>
    </table>
            </table>
    </div>
</asp:Content>
