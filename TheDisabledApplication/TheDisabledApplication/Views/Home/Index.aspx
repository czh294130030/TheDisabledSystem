<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../../Scripts/Controllers/index.js"></script>
    <div id="menu">
        <div id="left"></div>
        <div id="right"></div>
        <ul>
            <li>
                <a href="/Home/Index" class="selected"><span>首页</span></a>
            </li>
            <li>
                <a href="/Home/Admin"><span>管理员</span></a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <div id="submenu">
        <div class="modules_left">
        </div>
        <div class="title">
            首页		
        </div>
        <div class="modules_right">
        </div>
    </div>
    <div id="desc">
        <div class="body">
            <div class="col w2">
                <div class="content">
                    <div class="box header">
                        <div class="head">
                            <div></div>
                        </div>
                        <h2>说明</h2>
                        <div class="desc">
                            <p>关于残疾人管理系统的说明...</p>
                        </div>
                        <div class="bottom">
                            <div></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col w8 last">
                <div class="content">
                    内容
                </div>
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

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
