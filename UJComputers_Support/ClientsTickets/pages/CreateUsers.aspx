<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINIMASTER.Master" AutoEventWireup="true" CodeBehind="CreateUsers.aspx.cs" Inherits="ClientsTickets.pages.CreateUsers" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <table style="width: 100%">
  
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
  
            <tr>
                <td align="center" colspan="3" height="100">
                    &nbsp;</td>
            </tr>
  
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Create Users"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="200">&nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="200px" MaxLength="25"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="txtUsername_MaskedEditExtender" runat="server" BehaviorID="txtUsername_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="$$$$$$$$$$$$$$$$$$$$$$$$$" TargetControlID="txtUsername" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password" MaxLength="10"></asp:TextBox>
                    <ajaxToolkit:PasswordStrength ID="txtPassword_PasswordStrength" runat="server" BehaviorID="TextBox4_PasswordStrength" TargetControlID="txtPassword">
                    </ajaxToolkit:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Comfirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPasswordConfir" runat="server" Width="200px" TextMode="Password" MaxLength="10"></asp:TextBox>
                    <ajaxToolkit:PasswordStrength ID="txtPasswordConfir_PasswordStrength" runat="server" BehaviorID="TextBox5_PasswordStrength" TargetControlID="txtPasswordConfir">
                    </ajaxToolkit:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPasswordConfir" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnSave" runat="server" OnClick="Button1_Click" Text="Save" Width="75px" />
                    <ajaxToolkit:RoundedCornersExtender ID="btnSave_RoundedCornersExtender" runat="server" BehaviorID="Button1_RoundedCornersExtender" BorderColor="Green" Color="Green" TargetControlID="btnSave">
                    </ajaxToolkit:RoundedCornersExtender>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3" height="20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
</asp:Content>
