<%@ Application Language="C#" %>
<%@ Import Namespace="System.Security.Principal" %>
<script RunAt="server">

    void Application_EndRequest(object sender, EventArgs e)
    {
        if (Response.StatusCode == 302 &&
            Response.RedirectLocation.Contains("/Login.aspx") &&
            Response.RedirectLocation.ToLower().Contains("loginad") &&
            Request.Browser.Win32)
        {
            System.Diagnostics.Debug.WriteLine(Response.RedirectLocation);
            Response.ClearContent();
            Response.Write(string.Empty);
            Response.TrySkipIisCustomErrors = true;
            Response.Status = "401 Unauthorized";
            Response.StatusCode = 401;
            //.NET 4.5+
            Response.SuppressFormsAuthenticationRedirect = true;
        }
    }
</script>
