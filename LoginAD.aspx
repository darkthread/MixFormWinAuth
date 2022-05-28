<%@ Page Language="C#" %>
<%@ Import Namespace="System.Security.Principal" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
        Response.SuppressFormsAuthenticationRedirect = true;
        if (!Request.IsAuthenticated || User.Identity is FormsIdentity)
        {
            FormsAuthentication.SignOut();
            Response.StatusCode = 401;
        }
        else
        {
            var userId = User.Identity.Name.Split('\\').Last();
            FormsAuthentication.SetAuthCookie(userId, false);
            Response.Redirect("~/");
        }
    }
</script>
