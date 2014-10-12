$(function () {
    dropdown_action = function (div_id, p_x) {//显示/隐藏操作界面
        if ($('#' + div_id).is(':visible')) {
            $('#' + div_id).slideUp();
        } else {
            $('#' + div_id).siblings('div').slideUp();
            var wait = setInterval(function () {
                if (!$('#' + div_id).is(':animated')) {
                    clearInterval(wait);
                    $('#' + div_id + ' .arrow').attr('style', 'background:url(../images/dropdown_arrow.png) no-repeat ' + p_x + 'px 0px;');
                    $('#' + div_id).slideDown();
                }
            }, 300);
        }
    }
    if (sessionStorage.getItem('id') == null) {//判断用户登录，如果没有登录跳转到Login页面
        window.location.href = '/Home/Login';
    } else {
        var username = sessionStorage.getItem('username');
        $('#span_username').text(username);
    }
    $('#a_logout').click(function () {//登出
        sessionStorage.removeItem('id');
        sessionStorage.removeItem('username');
        window.location.href = '/Home/Login';
        return false;
    });
});
master_show_loader = function () {//显示滚轮
    var window_width = $(window).width();
    var window_height = $(window).height();
    var left = (window_width - 28) / 2;
    var top = (window_height - 28) / 2;
    var modal_loader = '<div class="modal_loader" style="top:' + top + 'px; left: ' + left + 'px; display: block;"></div>';
    var overlay = '<div class="overlay" style="height: ' + window_height + 'px; display: block;"></div>';
    $('#loader').append(modal_loader).append(overlay);
}
master_hide_loader = function (millisecond) {//删除加载
    var wait = setInterval(function () {
        clearInterval(wait);
        $('#loader').empty();
    }, millisecond);
}
