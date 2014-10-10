$(function () {
    $('#a_login').click(function () {//用户登录
        var $txt_username = $('#txt_username');
        var $txt_password = $('#txt_password');
        var username = $txt_username.val();
        var password = $txt_password.val();
        if (username == '') {
            alert('请输入用户名！');
            $txt_username.focus();
            return false;
        }
        if (password == '') {
            alert('请输入密码！');
            $txt_password.focus();
            return false;
        }
        user_login(username, password);
        return false;
    });
    $(window).keypress(function (e) {//界面回车触发登录按钮
        if (e.keyCode == '13') {
            $('#a_login').triggerHandler('click');
        }
    });
});
user_login = function (username, password) {//用户登录
    $.ajax({
        type: 'GET',
        url: '/api/Admin/GetAdmin?username='+username+'&password='+password,
        success: function (data) {
            if (data != null && data.id > 0) {//登录成功后见用户编号保存到sessionStorage并跳转到Index页面
                sessionStorage.setItem('user_id', data.id);
                window.location.href = '/Home/Index';
            } else {
                alert('用户名或密码错误！');
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}