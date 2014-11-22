<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserMenu.aspx.cs" Inherits="Account_UserMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<h2><%: Title %>.</h2>
<div id="UserMenu" style="text-align:left"> 
    <br />
    <br />
    <br />
   <br />      
   <asp:ListView ID="userMenuList"  
       ItemType="Web_Dev_Coursework.App_Code.UserMenu" 
       runat="server"
       SelectMethod="GetUserMenus">
       <ItemTemplate >
           <table>
               <tr>
                   <b style="font-size:large; font-style: oblique">
                   <a href="/UserInfo.aspx?id=<%#: Item.MenuItemID %>" style="color:black">
                   <%#: Item.MenuItemName %>
                   </a>
                   </b>
                   <br /><br />
               </tr>
           </table>
       </ItemTemplate>
    </asp:ListView>
</div>
<br />
<br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>

