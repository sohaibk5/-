<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application["counter"] = 0;
        register_url(RouteTable.Routes);
    }
    public static void register_url(RouteCollection urls)
    {
        urls.MapPageRoute("routing-for-login-page", "enter", "~/login.aspx");

                urls.MapPageRoute("routing-for-download-page", "file", "~/download.aspx");

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        Application.Lock();
        Application["counter"] = (int)Application["counter"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e)
    {

        Application.Lock();
        Application["counter"] = (int)Application["counter"] - 1;
        Application.UnLock();
    }

</script>
