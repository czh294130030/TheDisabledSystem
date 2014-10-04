﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
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
                <a href="users.html"><span>Users</span></a>
            </li>
            <li>
                <a href="articles.html"><span>Articles</span></a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <div id="submenu">
        <div class="modules_left">
            <div class="module buttons">
                <a href="" class="dropdown_button"><small class="icon plus"></small><span>New Category</span></a>
                <div class="dropdown">
                    <div class="arrow"></div>
                    <div class="content">
                        <form>
                            <p>
                                <label for="name">Category Name:</label>
                                <input type="text" class="text w_22" name="name" id="name" value="" />
                            </p>
                            <p>
                                <label for="description">Category Description:</label>
                                <textarea name="description" id="description" class="w_22" rows="10"></textarea>
                            </p>
                        </form>
                        <a href="" class="button green right"><small class="icon check"></small><span>Save</span></a>
                        <a class="button red mr right close"><small class="icon cross"></small><span>Close</span></a>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="title">
            Articles		
        </div>
        <div class="modules_right">
            <div class="module search">
                <form action="">
                    <p>
                        <input type="text" value="Search..." name="user_search" />
                    </p>
                </form>
            </div>
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
                        <h2>Categories</h2>
                        <div class="desc">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        </div>
                        <div class="bottom">
                            <div></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col w8 last">
                <div class="content">
                    <div class="shelf">
                        <div class="left"></div>
                        <div class="right"></div>
                        <div class="inside">
                            <div class="books articles">
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2 last">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="shelf">
                        <div class="left"></div>
                        <div class="right"></div>
                        <div class="inside">
                            <div class="books articles">
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2 last">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="shelf">
                        <div class="left"></div>
                        <div class="right"></div>
                        <div class="inside">
                            <div class="books articles">
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2 last">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="shelf">
                        <div class="left"></div>
                        <div class="right"></div>
                        <div class="inside">
                            <div class="books articles">
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2 last">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="shelf">
                        <div class="left"></div>
                        <div class="right"></div>
                        <div class="inside">
                            <div class="books articles">
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                                <div class="col w2 last">
                                    <a href="">
                                        <span>Here is the title, two lines</span>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</small>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
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
