<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        var uid = Request["uid"];
        if (this.IsPostBack && !string.IsNullOrEmpty(uid))
        {
            FormsAuthentication.RedirectFromLoginPage(uid, false);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        fieldset { font-family: Arial; width: 250px; font-size: 10pt; margin-bottom: 12px; padding: 12px; }
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server">
        <fieldset>
            <legend>Form Authentication</legend>
            <table>
                <tr>
                    <td>Account</td>
                    <td>
                        <input name="uid" />
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="pwd" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button>Login</button>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Windows Authentication</legend>
            <div>
                <a href="LoginAD.aspx">Login with AD account</a>
            </div>
        </fieldset>
    </form>
</body>
</html>
