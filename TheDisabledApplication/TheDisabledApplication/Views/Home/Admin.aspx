<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../../Scripts/Controllers/admin.js"></script>
    <div id="menu">
        <div id="left"></div>
        <div id="right"></div>
        <ul>
            <li>
                <a href="/Home/Index"><span>首页</span></a>
            </li>
            <li>
                <a href="/Home/Admin" class="selected"><span>管理员</span></a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <div id="submenu">
        <div class="modules_left">
            <div class="module buttons">
                <a id="a_add" href="" class="dropdown_button"><small class="icon plus"></small><span>添加</span></a>
                <a id="a_edit" href="" class="dropdown_button"><small class="icon single_document"></small><span>修改</span></a>
                <a id="a_delete" href="" class="dropdown_button"><small class="icon minus"></small><span>删除</span></a>
                <div id="div_add" class="dropdown">
                    <div class="arrow"></div>
                    <div class="content">
                        <p>
                            <label>添加管理员</label>
                        </p>
                        <p>
                            <label for="name">用户名:</label>
                            <input type="text" class="text w_22" name="txt_add_username" id="txt_add_username" value="" maxlength="50" />
                        </p>
                        <p>
                            <label for="description">初始密码:</label>
                            <input type="text" class="text w_22" name="txt_add_password" id="txt_add_password" value="" maxlength="50" />
                        </p>
                        <a id="a_add_save" href="" class="button green right"><small class="icon check"></small><span>保存</span></a>
                        <a id="a_add_close" href="" class="button red mr right close"><small class="icon cross"></small><span>关闭</span></a>
                        <div class="clear"></div>
                    </div>
                </div>
                <div id="div_edit" class="dropdown">
                    <div class="arrow"></div>
                    <div class="content">
                        <p>
                            <label>修改管理员</label>
                            <label id="lbl_edit_id" style="display: none;"></label>
                        </p>
                        <p>
                            <label for="name">用户名:</label>
                            <input type="text" class="text w_22" name="txt_edit_username" id="txt_edit_username" value="" maxlength="50" />
                        </p>
                        <p>
                            <label for="description">初始密码:</label>
                            <input type="text" class="text w_22" name="txt_edit_password" id="txt_edit_password" value="" maxlength="50" />
                        </p>
                        <a id="a_edit_save" href="" class="button green right"><small class="icon check"></small><span>保存</span></a>
                        <a id="a_edit_close" href="" class="button red mr right close"><small class="icon cross"></small><span>关闭</span></a>
                        <div class="clear"></div>
                    </div>
                </div>
                <div id="div_delete" class="dropdown">
                    <div class="arrow"></div>
                    <div class="content">
                        <p>
                            <label>删除管理员</label>
                        </p>
                        <a id="a_delete_save" href="" class="button green right"><small class="icon check"></small><span>保存</span></a>
                        <a id="a_delete_close" href="" class="button red mr right close"><small class="icon cross"></small><span>关闭</span></a>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="title">
            管理员
        </div>
        <div class="modules_right">
            <div class="module search">
                <p>
                    <input type="text" value="" name="txt_search" id="txt_search" />
                </p>
            </div>
        </div>
    </div>
    <div id="desc">
        <div class="body">
            <div id="table">
                <div class="col w10 last">
                    <div class="content">
                        <table id="table_content">
                        </table>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
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
