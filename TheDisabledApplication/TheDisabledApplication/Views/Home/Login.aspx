<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>残疾人管理系统</title>
    <link href="../../CSS/style.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-1.7.1.min.js"></script>
    <script src="../../Scripts/Controllers/login.js"></script>
</head>
<body>
    <div id="wrapper_login">
        <div id="menu">
            <div id="left"></div>
            <div id="right"></div>
            <h2>登录界面</h2>
            <div class="clear"></div>
        </div>
        <div id="desc">
            <div class="body">
                <div class="col w10 last bottomlast">
                    <p>
                        <label for="username">用户名:</label>
                        <input type="text" name="txt_username" id="txt_username" value="" size="40" class="text" />
                        <br />
                    </p>
                    <p>
                        <label for="password">密码:</label>
                        <input type="password" name="txt_password" id="txt_password" value="" size="40" class="text" />
                        <br />
                    </p>
                    <p class="last">
                        <a id="a_login" href="" class="button form_submit"><small class="icon play"></small><span>登录</span></a>
                        <br />
                    </p>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div id="body_footer">
                <div id="bottom_left">
                    <div id="bottom_right"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
