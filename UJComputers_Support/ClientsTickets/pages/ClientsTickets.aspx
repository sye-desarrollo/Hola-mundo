<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="ClientsTickets.aspx.cs" Inherits="ClientsTickets.pages.ClientsTickets" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table width="1000px" align="center">
        <tr>
            <td colspan="5" bgcolor="#BDC4C1" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" align="center" style="height: 23px">
                </td>
        </tr>
        <tr>
            <td colspan="5" align="center">
                <asp:Label ID="Label3" runat="server" Text="Welcome to support center" ForeColor="Red" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="5" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" align="center"><big>We use a support ticket system to help with your problems. Every support request has a unique ticket number<br/>
                    and you will be supported by one of our certified employes. A valid email is required.</big>
                </td>
        </tr>
        <tr>
            <td style="height: 23px" align="center"></td>
            <td align="center"></td>
            <td style="height: 23px" align="center"></td>
            <td style="height: 23px" align="center"></td>
            <td style="height: 23px" align="center"></td>
        </tr>
        <tr>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
            <td style="height: 23px" align="center">&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="3" valign="middle" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/pictures/new.png" />
            </td>
            <td align="center">
                <asp:Label ID="Label5" runat="server" ForeColor="#CC0000" Text="Open a new ticket"></asp:Label>
            </td>
            <td align="center">&nbsp;</td>
            <td rowspan="3" align="center">
                <asp:Image ID="Image2" runat="server" Height="80px" ImageUrl="~/pictures/update.png" Width="75px" />
            </td>
            <td align="center">
                <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text="Check ticket status"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">Please provide as much details <br />as posible so we can help you.</td>
            <td align="center">&nbsp;</td>
            <td align="center">We provide archives and history of all
                <br />
                your current and past support request</td>
        </tr>
        <tr>
            <td align="center" >&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Open a new ticket" PostBackUrl="~/pages/CreateTicket.aspx" OnClick="Button1_Click" />
                <ajaxToolkit:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" BehaviorID="Button1_RoundedCornersExtender" BorderColor="Green" Color="GradientInactiveCaption" TargetControlID="Button1">
                </ajaxToolkit:RoundedCornersExtender>
            </td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Check ticket status" PostBackUrl="~/pages/CheckTicket.aspx" />
                <ajaxToolkit:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" BehaviorID="Button2_RoundedCornersExtender" TargetControlID="Button2" Color="Green" BorderColor="Green">
                </ajaxToolkit:RoundedCornersExtender>
            </td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
            <td align="center" >
                &nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" height="75">&nbsp;</td>
            <td align="center" height="75">&nbsp;</td>
            <td align="center" height="75">&nbsp;</td>
            <td align="center" height="75">&nbsp;</td>
            <td align="center" height="75">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

