<%@ Page Title="Manage Acount" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="Account_UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="UserInfo" style="text-align:left">  
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Dev_Coursework %>" SelectCommand="SELECT * FROM [UserInfoes] WHERE (([Id] = @Id) AND ([UserMenuID] = @UserMenuID))">
            <SelectParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:QueryStringParameter DefaultValue="" Name="UserMenuID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserMenuID" OnPageIndexChanging="FormView1_PageIndexChanging">
    <ItemTemplate>
         <table>
            <tr Runat="server" id="IdRow">
                <td>
                    <b>User Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditIdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Id") %>' />
                </td>
            </tr>
            <tr Runat="server" id="FirstNameRow">
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditFirstNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("FirstName") %>' />
                </td>
            </tr>
            <tr Runat="server" id="LastNameRow">
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditLastNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("LastName") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="EmailIdRow">
                <td>
                    <b>Email Id:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditEmailIdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("EmailId") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="MobileNumberRow">
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditMobileNumberTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("MobileNumber") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CountryRow">
                <td>
                    <b>Country of Residence:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCountryTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Country") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="PostCodeRow">
                <td>
                    <b>Post Code:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditPostCodeTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("PostCode") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CVPathRow">
                <td>
                    <b>My CV:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCVPath" Enabled="false" RunAt="Server" Text='<%# Eval("CVPath") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CLPathRow">
                <td>
                    <b>My Cover Letter:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCLPath" Enabled="false" RunAt="Server" Text='<%# Eval("CLPath") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="ALinkRow">
                <td>
                    <b>My Application:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditApplicationLink" Enabled="false" RunAt="Server" Text='<%# Eval("ALink") %>'  />
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
            <tr Runat="server" id="IdEditRow">
            <td>
                <b>User Name:</b>
            </td>
            <td>
                <asp:TextBox ID="EditIdTextBox" Enabled="false" runat="Server" Text='<%# Eval("Id") %>' />
            </td>
            </tr>
            <tr Runat="server" id="FirstNameEditRow">
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditFirstNameTextBox" RunAt="Server" Text='<%# Bind("FirstName") %>' />
                </td>
            </tr>
            <tr Runat="server" id="LastNameEditRow">
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditLastNameTextBox" RunAt="Server" Text='<%# Bind("LastName") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="EmailIdEditRow">
                <td>
                    <b>Email Id:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditEmailIdTextBox" RunAt="Server" Text='<%# Bind("EmailId") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="MobileNumberEditRow">
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditMobileNumberTextBox" RunAt="Server" Text='<%# Bind("MobileNumber") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CountryEditRow">
                <td>
                    <b>Country of Residence:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCountryTextBox" RunAt="Server" Text='<%# Bind("Country") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="PostCodeEditRow">
                <td>
                    <b>Post Code:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditPostCodeTextBox" RunAt="Server" Text='<%# Bind("PostCode") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CVPathEditRow">
                <td>
                    <b>My CV:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCVPath" Enabled="false" RunAt="Server" Text='<%# Bind("CVPath") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="CLPathEditRow">
                <td>
                    <b>My Cover Letter:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCLPath" Enabled="false" RunAt="Server" Text='<%# Bind("CLPath") %>'  />
                </td>
            </tr>
            <tr Runat="server" id="ALinkEditRow">
                <td>
                    <b>My Application:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditApplicationLink" Enabled="false" RunAt="Server" Text='<%# Bind("ALink") %>'  />
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
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

