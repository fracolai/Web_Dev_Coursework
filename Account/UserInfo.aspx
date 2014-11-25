<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="Account_UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Dev_Coursework %>" SelectCommand="SELECT * FROM [UserInfoes]">
        </asp:SqlDataSource>
    </p>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
    <ItemTemplate>
         <table>
            <tr>
            <td>
                <b>User Name:</b>
            </td>
            <td>
                <asp:TextBox ID="EditIdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Id") %>' />
            </td>
            </tr>
            <tr>
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditFirstNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("FirstName") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditLastNameTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("LastName") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email Id:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditEmailIdTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("EmailId") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditMobileNumberTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("MobileNumber") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Country of Residence:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditCountryTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("Country") %>'  />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Post Code:</b>
                </td>
                <td>
                    <asp:TextBox ID="EditPostCodeTextBox" Enabled="false" RunAt="Server" Text='<%# Eval("PostCode") %>'  />
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
</asp:Content>

