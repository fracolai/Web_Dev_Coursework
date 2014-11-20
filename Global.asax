<%@ Application Language="C#" %>
<%@ Import Namespace="Web_Dev_Coursework" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data.Entity" %>
<%@ Import Namespace="Web_Dev_Coursework" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        
        // Initialize the User database.
        Database.SetInitializer(new UserDatabaseInitializer());
    }

</script>
