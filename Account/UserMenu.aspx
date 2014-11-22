<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserMenu.aspx.cs" Inherits="Account_UserMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="UserMenu" style="text-align: center">       
   <asp:ListView ID="userMenuList"  
       ItemType="Web_Dev_Coursework.App_Code.UserMenu" 
       runat="server"
       SelectMethod="GetUserMenus" >
       <ItemTemplate>
           <b style="font-size: large; font-style: normal">
           <a href="/UserInfo.aspx?id=<%#: Item.MenuItemID %>">
           <%#: Item.MenuItemName %>
           </a>
           </b>
        </ItemTemplate>
        <ItemSeparatorTemplate>  |  </ItemSeparatorTemplate>
    </asp:ListView>
</div>
</asp:Content>

