<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" ValidateRequest="False" AutoEventWireup="true"
    CodeFile="CommonSettings.aspx.cs" Inherits="Admin.CommonSettings" EnableViewStateMac="false" %>

<%@ Import Namespace="AdvantShop" %>
<%@ Import Namespace="Resources" %>
<%@ Register Src="UserControls/EditRobotsTxt.ascx" TagName="EditRobotsTxt" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/OAuthSettings.ascx" TagName="OAuthSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/NewsSettings.ascx" TagName="NewsSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/GeneralSettings.ascx" TagName="GeneralSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/SEOSettings.ascx" TagName="SEOSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/MailSettings.ascx" TagName="MailSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/OrderConfirmationSettings.ascx" TagName="OrderConfirmationSettings"
    TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/NotifyEmailsSettings.ascx" TagName="NotifyEmailsSettings"
    TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/BankSettings.ascx" TagName="BankSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/TaskSettings.ascx" TagName="TaskSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/CatalogSettings.ascx" TagName="CatalogSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/ProfitSettings.ascx" TagName="ProfitSettings" TagPrefix="adv" %>
<%@ Register Src="~/Admin/UserControls/Settings/LicSettings.ascx" TagName="LicSettings" TagPrefix="adv" %>
<%@ MasterType VirtualPath="~/Admin/MasterPageAdmin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="Server">
    <div class="content-top">
        <menu class="neighbor-menu neighbor-catalog">
            <li class="neighbor-menu-item selected"><a href="CommonSettings.aspx">
                <%= Resource.Admin_MasterPageAdmin_Settings%></a></li>
            <li class="neighbor-menu-item"><a href="PaymentMethod.aspx">
                <%= Resource.Admin_MasterPageAdmin_PaymentMethod%></a></li>
            <li class="neighbor-menu-item"><a href="ShippingMethod.aspx">
                <%= Resource.Admin_MasterPageAdmin_ShippingMethod%></a></li>
            <li class="neighbor-menu-item"><a href="Country.aspx">
                <%= Resource.Admin_MasterPageAdmin_Countries%></a></li>
            <li class="neighbor-menu-item"><a href="Currencies.aspx">
                <%= Resource.Admin_MasterPageAdmin_Currency%></a></li>
            <li class="neighbor-menu-item"><a href="Taxes.aspx">
                <%= Resource.Admin_MasterPageAdmin_Taxes%></a></li>
            <li class="neighbor-menu-item"><a href="MailFormat.aspx">
                <%= Resource.Admin_MasterPageAdmin_MailFormat%></a></li>
            <li class="neighbor-menu-item"><a href="LogViewer.aspx">
                <%= Resource.Admin_MasterPageAdmin_BugTracker%></a></li>
            <li class="neighbor-menu-item"><a href="301Redirects.aspx">
                <%= Resource.Admin_MasterPageAdmin_301Redirects%></a></li>
        </menu>
    </div>
    <div class="content-own">
        <div>
            <table cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                    <tr>
                        <td style="width: 72px;">
                            <img src="images/settings_ico.gif" alt="" />
                        </td>
                        <td class="style1">
                            <asp:Label ID="lbl" CssClass="AdminHead" runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_Header %>"></asp:Label><br />
                            <asp:Label ID="lblName" CssClass="AdminSubHead" runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_CommonSettings %>"></asp:Label>
                        </td>
                        <td>
                            <div style="float: right; margin-left: 7px; position: relative; width: 180px; text-align: left;">
                                <adv:OrangeRoundedButton Font-Bold="true" Width="170" ID="btnSave" runat="server" Text="<%$ Resources:Resource, Admin_Update %>"
                                    OnClick="btnSave_Click" />
                            </div>
                        </td>
                        <td style='width: 10px'>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
        </div>
        <div style="text-align: center;">
            <asp:Label ID="lblError" runat="server" ForeColor="Blue" Visible="False"></asp:Label>
            <br />
            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GeneralSettings" />
                    <asp:PostBackTrigger ControlID="BankSettings" />
                </Triggers>
                <ContentTemplate>
                    <table cellpadding="0px" cellspacing="0px" style="width: 100%;" id="tabs">
                        <tr>
                            <td style="vertical-align: top; width: 225px;">
                                <ul id="tabs-headers">
                                    <li id="general">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabGeneral%>" />
                                        <img class="floppy" src="images/floppy.gif" />
                                    </li>
                                    <li id="seo">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabSeo  %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="news">
                                        <asp:Literal ID="Literal3" runat="server" Text="<%$ Resources: Resource, Admin_CommonSettings_News %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="catalog">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabCatalog %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="oc">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabOrderConfirmation %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="profitability">
                                        <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabProfitability  %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="bankset" runat="server">
                                        <asp:Literal ID="Literal5" runat="server" Text="<%$ Resources:Resource, Admin_UserControl_BankSettings_Head  %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="mailset">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabMail  %>" /></span>
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="mailserver">
                                        <asp:Literal runat="server" Text="<%$ Resources:Resource, Admin_CommonSettings_TabMailServer  %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="oauth">
                                        <asp:Literal ID="Literal4" runat="server" Text="<%$ Resources:Resource, Admin_UserControl_OAuthSettings_Head %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="task">
                                        <asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:Resource, Admin_UserControl_TaskSettings_Head %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <li id="robot">
                                        <asp:Literal ID="Literal2" runat="server" Text="Robots.txt" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <% if (!Trial.IsTrialEnabled)
                                       { %>
                                    <li id="licence">
                                        <asp:Literal ID="Literal7" runat="server" Text="<%$ Resources:Resource, Admin_UserControl_License_Head %>" />
                                        <img class="floppy" src="images/floppy.gif" alt="" />
                                    </li>
                                    <% } %>
                                </ul>
                                <input type="hidden" runat="server" id="tabid" class="tabid" />
                            </td>
                            <td id="tabs-contents">
                                <div class="tab-content">
                                    <adv:GeneralSettings ID="GeneralSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:SEOSettings ID="SEOSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:NewsSettings ID="NewsSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:CatalogSettings ID="CatalogSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:OrderConfirmationSettings ID="OrderConfirmationSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:ProfitSettings ID="ProfitSettings" runat="server" />
                                </div>
                                <div class="tab-content" runat="server" id="tabBankSettings">
                                    <adv:BankSettings ID="BankSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:NotifyEmailsSettings ID="NotifyEmailsSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:MailSettings ID="MailSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:OAuthSettings ID="OAuthSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:TaskSettings ID="TaskSettings" runat="server" />
                                </div>
                                <div class="tab-content">
                                    <adv:EditRobotsTxt ID="EditRobotsTxt" runat="server" />
                                </div>
                                <% if (!Trial.IsTrialEnabled)
                                   { %>
                                <div class="tab-content">
                                    <adv:LicSettings ID="LicSettings" runat="server" />
                                </div>
                                <% } %>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder_Head">
</asp:Content>
