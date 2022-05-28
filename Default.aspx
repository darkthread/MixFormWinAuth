<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome <%= User.Identity.Name %>
        </div>
        <div>
            <a href="Logout.aspx">Logout</a>
        </div>
    </form>
</body>
</html>
