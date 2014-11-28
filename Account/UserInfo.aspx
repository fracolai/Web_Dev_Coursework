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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Dev_Coursework %>" SelectCommand="SELECT * FROM [UserInfoes] WHERE (([Id] = @Id) AND ([UserMenuID] = @UserMenuID))">
            <SelectParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:QueryStringParameter Name="UserMenuID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
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

