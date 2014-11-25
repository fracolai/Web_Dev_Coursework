<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Apply.aspx.cs" Inherits="Apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">









    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>

            <h1>Oooops!!!</h1>
            <p></p>
            
            <p>
            </p>
            <p></p>
            <p></p>

            <p>You are not logged in! Please  <a href="Account\Login">Login</a>  to continue.</p>
            
           
        </AnonymousTemplate>
        <LoggedInTemplate>
            <br />
            <br />
            <h1 style="font-weight:bold">Congratulations!</h1>

            <br />
            <br />
            <br />
            <br />

             
            
            <h4>You have successfully applied for this job...good luck!</h4><br />
            <br />
            <h5>Click <a href="Search.aspx">here</a> to apply for further jobs.</h5>
        </LoggedInTemplate>
    </asp:LoginView>
     








    </asp:Content>
