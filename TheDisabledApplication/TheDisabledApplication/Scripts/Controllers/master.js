$(function () {
    $('a.dropdown_button').click(function () {//显示/影藏子菜单
        $('div.dropdown').slideToggle();
        return false;
    });
});