<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>JOB HUNT</h1>
        <p class="lead">Job Hunt is a web site which enables people to search and apply for their suitable jobs based on their preferences.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Search jobs</h2>
            <p>
                Make use of our quick and efficient job search engine to look for your suitable jobs.
            </p>
            <p>
                <a class="btn btn-default" href="Search">Search &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
