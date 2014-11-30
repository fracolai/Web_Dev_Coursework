<%@ Page Title="Manage Acount" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="Account_UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <a runat="server" href="~/Account/UserMenu" title="Manage Account" style="font-size:x-large">Back to Account</a>
    <br />
    <br />
    <br />
    <div id="UserInfo" style="text-align:left">  
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Dev_Coursework %>" SelectCommand="SELECT * FROM [UserInfoes] WHERE (([Id] = @Id) AND ([UserMenuID] = @UserMenuID))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [UserInfoes] WHERE [Id] = @original_Id AND [UserMenuID] = @original_UserMenuID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND [MobileNumber] = @original_MobileNumber AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([CVPath] = @original_CVPath) OR ([CVPath] IS NULL AND @original_CVPath IS NULL)) AND (([CLPath] = @original_CLPath) OR ([CLPath] IS NULL AND @original_CLPath IS NULL)) AND (([ALink] = @original_ALink) OR ([ALink] IS NULL AND @original_ALink IS NULL)) AND (([UserMenu_MenuItemID] = @original_UserMenu_MenuItemID) OR ([UserMenu_MenuItemID] IS NULL AND @original_UserMenu_MenuItemID IS NULL))" InsertCommand="INSERT INTO [UserInfoes] ([Id], [UserMenuID], [FirstName], [LastName], [EmailId], [MobileNumber], [Country], [PostCode], [CVPath], [CLPath], [ALink], [UserMenu_MenuItemID]) VALUES (@Id, @UserMenuID, @FirstName, @LastName, @EmailId, @MobileNumber, @Country, @PostCode, @CVPath, @CLPath, @ALink, @UserMenu_MenuItemID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [UserInfoes] SET [FirstName] = @FirstName, [LastName] = @LastName, [EmailId] = @EmailId, [MobileNumber] = @MobileNumber, [Country] = @Country, [PostCode] = @PostCode, [CVPath] = @CVPath, [CLPath] = @CLPath, [ALink] = @ALink, [UserMenu_MenuItemID] = @UserMenu_MenuItemID WHERE [Id] = @original_Id AND [UserMenuID] = @original_UserMenuID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND [MobileNumber] = @original_MobileNumber AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([CVPath] = @original_CVPath) OR ([CVPath] IS NULL AND @original_CVPath IS NULL)) AND (([CLPath] = @original_CLPath) OR ([CLPath] IS NULL AND @original_CLPath IS NULL)) AND (([ALink] = @original_ALink) OR ([ALink] IS NULL AND @original_ALink IS NULL)) AND (([UserMenu_MenuItemID] = @original_UserMenu_MenuItemID) OR ([UserMenu_MenuItemID] IS NULL AND @original_UserMenu_MenuItemID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_UserMenuID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_EmailId" Type="String" />
                <asp:Parameter Name="original_MobileNumber" Type="Int64" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_CVPath" Type="String" />
                <asp:Parameter Name="original_CLPath" Type="String" />
                <asp:Parameter Name="original_ALink" Type="String" />
                <asp:Parameter Name="original_UserMenu_MenuItemID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="UserMenuID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="MobileNumber" Type="Int64" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="CVPath" Type="String" />
                <asp:Parameter Name="CLPath" Type="String" />
                <asp:Parameter Name="ALink" Type="String" />
                <asp:Parameter Name="UserMenu_MenuItemID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:QueryStringParameter Name="UserMenuID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="MobileNumber" Type="Int64" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="CVPath" Type="String" />
                <asp:Parameter Name="CLPath" Type="String" />
                <asp:Parameter Name="ALink" Type="String" />
                <asp:Parameter Name="UserMenu_MenuItemID" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_UserMenuID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_EmailId" Type="String" />
                <asp:Parameter Name="original_MobileNumber" Type="Int32" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_CVPath" Type="String" />
                <asp:Parameter Name="original_CLPath" Type="String" />
                <asp:Parameter Name="original_ALink" Type="String" />
                <asp:Parameter Name="original_UserMenu_MenuItemID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <% 
    string menuId = Request.QueryString["id"];
    if(menuId == "1")
    { %>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserMenuID">
    <ItemTemplate>
         <table>
            <tr>
                <td>
                    <b>User Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="IdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Id") %>' />
                </td>   
            </tr>
            <tr>
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("FirstName") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("LastName") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email Id:</b>
                </td>
                <td>
                    <asp:TextBox ID="EmailIdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("EmailId") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="MobileNumberTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("MobileNumber") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Country of Residence:</b>
                </td>
                <td>
                    <asp:TextBox ID="CountryTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Country") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Post Code:</b>
                </td>
                <td>
                    <asp:TextBox ID="PostCodeTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("PostCode") %>'  />
                </td>
            </tr>
            <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit"
                  commandname="Edit"
                  runat="server"/> 
              </td>
            </tr>
        </table>
     </ItemTemplate>
    <EditItemTemplate>
         <table>
            <tr>
            <td>
                <b>User Name:</b>
            </td>
            <td>
                <asp:TextBox ID="EditIdTextBox" Enabled="false" runat="Server" Text='<%# Eval("Id") %>' />
            </td>
            </tr>
            <tr>
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditFirstNameTextBox" RunAt="Server" Text='<%# Bind("FirstName") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditLastNameTextBox" RunAt="Server" Text='<%# Bind("LastName") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email Id:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditEmailIdTextBox" RunAt="Server" Text='<%# Bind("EmailId") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditMobileNumberTextBox" RunAt="Server" Text='<%# Bind("MobileNumber") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Country of Residence:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCountryTextBox" RunAt="Server" Text='<%# Bind("Country") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Post Code:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditPostCodeTextBox" RunAt="Server" Text='<%# Bind("PostCode") %>'  />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="UpdateButton" RunAt="server"
                     Text="Update" CommandName="Update" />
                     &nbsp;
                    <asp:LinkButton ID="CancelUpdateButton" RunAt="server"
                    Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
        </table>
     </EditItemTemplate>
    </asp:FormView>
    <% }
      else if (menuId == "2")
     { %>
    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserMenuID">
     <ItemTemplate>
        <table>
            <tr>
                <td>
                    <b>My CV:</b>
                </td>
                <td>
                    <asp:TextBox ID="CVTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("CVPath") %>' />
                </td>   
            </tr>
            <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit"
                  commandname="Edit"
                  runat="server"/> 
              </td>
            </tr>
        </table>
     </ItemTemplate>
     <EditItemTemplate>
         <table>
            <tr>
            <td>
                <b>My CV:</b>
            </td>
            <td>
                <asp:TextBox ID="EditCVTextBox" runat="Server" Text='<%# Bind("CVPath") %>' />
            </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="UpdateButton" RunAt="server"
                     Text="Update" CommandName="Update" />
                     &nbsp;
                    <asp:LinkButton ID="CancelUpdateButton" RunAt="server"
                    Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
         </table>
      </EditItemTemplate>
    </asp:FormView>
     <% }
      else if (menuId == "3")
     { %>
    <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserMenuID">
    <ItemTemplate>
        <table>
            <tr>
                <td>
                    <b>My Cover Letter:</b>
                </td>
                <td>
                    <asp:TextBox ID="CLTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("CLPath") %>' />
                </td>   
            </tr>
            <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit"
                  commandname="Edit"
                  runat="server"/> 
              </td>
            </tr>
        </table>
     </ItemTemplate>
     <EditItemTemplate>
         <table>
            <tr>
            <td>
                <b>My Cover Letter:</b>
            </td>
            <td>
                <asp:TextBox ID="EditCLTextBox" runat="Server" Text='<%# Bind("CLPath") %>' />
            </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="UpdateButton" RunAt="server"
                     Text="Update" CommandName="Update" />
                     &nbsp;
                    <asp:LinkButton ID="CancelUpdateButton" RunAt="server"
                    Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
         </table>
      </EditItemTemplate>
    </asp:FormView>
      <% }
       else if (menuId == "4")
      { %>
    <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserMenuID">
      <ItemTemplate>
         <table>
            <tr>
                <td>
                    <b>My Applications:</b>
                </td>
                <td>
                    <asp:TextBox ID="ALinkTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("ALink") %>' />
                </td>   
            </tr>
            <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit"
                  commandname="Edit"
                  runat="server"/> 
              </td>
            </tr>
         </table>
      </ItemTemplate>
      <EditItemTemplate>
         <table>
            <tr>
                <td>
                    <b>My Applications:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditALinkTextBox" runat="Server" Text='<%# Bind("ALink") %>' />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="UpdateButton" RunAt="server"
                     Text="Update" CommandName="Update" />
                     &nbsp;
                    <asp:LinkButton ID="CancelUpdateButton" RunAt="server"
                    Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
         </table>
      </EditItemTemplate>
    </asp:FormView>
    <% } %>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

