<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Account_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>




</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Keywords" ></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <p>
            <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label6" runat="server" Text="Salary(per month): £"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="107px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>&lt;500</asp:ListItem>
                <asp:ListItem>500-750</asp:ListItem>
                <asp:ListItem>751-1000</asp:ListItem>
                <asp:ListItem>1001-1250</asp:ListItem>
                <asp:ListItem>1251-1500</asp:ListItem>
                <asp:ListItem>1501-1750</asp:ListItem>
                <asp:ListItem>1751-2000</asp:ListItem>
                <asp:ListItem>&gt;2000</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Job Type"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Accountant</asp:ListItem>
                <asp:ListItem>Actor</asp:ListItem>
                <asp:ListItem>Animal Keeper</asp:ListItem>
                <asp:ListItem>Announcer</asp:ListItem>
                <asp:ListItem>Archeologist</asp:ListItem>
                <asp:ListItem>Architect</asp:ListItem>
                <asp:ListItem>Artist</asp:ListItem>
                <asp:ListItem>Athlete</asp:ListItem>
                <asp:ListItem>Budget Analist</asp:ListItem>
                <asp:ListItem>Car mechanic</asp:ListItem>
                <asp:ListItem>Carpenter</asp:ListItem>
                <asp:ListItem>Childcare Worker</asp:ListItem>
                <asp:ListItem>Civil Engineer</asp:ListItem>
                <asp:ListItem>Computer HW Engineer</asp:ListItem>
                <asp:ListItem>Computer SW Developer</asp:ListItem>
                <asp:ListItem>Dancer</asp:ListItem>
                <asp:ListItem>DB Administrator</asp:ListItem>
                <asp:ListItem>Dentist</asp:ListItem>
                <asp:ListItem>Designer</asp:ListItem>
                <asp:ListItem>Farmer</asp:ListItem>
                <asp:ListItem>Food Scientist</asp:ListItem>
                <asp:ListItem>Health Care</asp:ListItem>
                <asp:ListItem>Judge</asp:ListItem>
                <asp:ListItem>Lawyer</asp:ListItem>
                <asp:ListItem>Musician</asp:ListItem>
                <asp:ListItem>Nurse</asp:ListItem>
                <asp:ListItem>Pharmacist</asp:ListItem>
                <asp:ListItem>Photographer</asp:ListItem>
                <asp:ListItem>Pilot</asp:ListItem>
                <asp:ListItem>Psychologist</asp:ListItem>
                <asp:ListItem>Reporter</asp:ListItem>
                <asp:ListItem>Social Worker</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Veterinar</asp:ListItem>
                <asp:ListItem>Writer</asp:ListItem>
            </asp:DropDownList>
        </p>
    </form>
</body>
</html>
