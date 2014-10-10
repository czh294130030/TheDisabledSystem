$(function () {
    $('#a_add').click(function () {//打开添加管理员界面
        dropdown_action('div_add', '33');
        return false;
    });
    $('#a_edit').click(function () {//打开编辑管理员界面
        var $cb_item_checked = $('input.cb_item:checked');
        if ($cb_item_checked.length != 1) {
            alert('请勾选1个需要修改的管理员!');
            return false;
        }
        get_admin_by_id($cb_item_checked.attr('id'));
        dropdown_action('div_edit', '103');
        return false;
    });
    $('#a_delete').click(function () {//打开删除管理员界面
        var $cb_item_checked = $('input.cb_item:checked');
        if ($cb_item_checked.length == 0) {
            alert('请勾选要删除的管理员!');
            return false;
        }
        dropdown_action('div_delete', '176');
        return false;
    });
    $('#txt_search').keypress(function (e) {//在搜索框中按回车触发事件
        if (e.keyCode == '13') {
            search_admin($(this).val());
        }
    });
    $('#a_add_close').click(function () {//关闭添加管理员界面
        if ($('#div_add').is(':visible')) {
            $('#div_add').slideUp();
        }
        return false;
    });
    $('#a_add_save').click(function () {//保存添加的管理员信息
        var admin = {};
        var $txt_username = $('#txt_add_username');
        var $txt_password = $('#txt_add_password');
        var username = $txt_username.val();
        var password = $txt_password.val();
        if (!verify_input(username, password, $txt_username, $txt_password)) {
            return false;
        }
        admin.username = username;
        admin.password = password;
        admin.typeId = 2;
        add_admin(admin);
        $('#txt_add_username').val('');
        $('#txt_add_password').val('');
        return false;
    });
    $('#a_delete_close').click(function () {//关闭删除管理员界面
        if ($('#div_delete').is(':visible')) {
            $('#div_delete').slideUp();
        }
        return false;
    });
    $('#a_delete_save').click(function () {//保存删除管理员信息
        var $cb_item_checked = $('input.cb_item:checked');
        if ($cb_item_checked.length == 0) {
            alert('请勾选要删除的管理员!');
            return false;
        }
        var admins = [];
        $cb_item_checked.each(function () {
            var admin = {};
            admin.id = $(this).attr('id');
            admins.push(admin);
        });
        delete_admins(admins);
        return false;
    });
    $('#a_edit_close').click(function () {//关闭修改管理员界面
        if ($('#div_edit').is(':visible')) {
            $('#div_edit').slideUp();
        }
        return false;
    });
    $('#a_edit_save').click(function () {//保存修改管理员信息
        var admin = {};
        var id = $('#lbl_edit_id').text();
        var $txt_username = $('#txt_edit_username');
        var $txt_password = $('#txt_edit_password');
        var username = $txt_username.val();
        var password = $txt_password.val();
        if (!verify_input(username, password, $txt_username, $txt_password)) {
            return false;
        }
        admin.username = username;
        admin.password = password;
        admin.typeId = 2;
        edit_admin(id, admin);
        return false;
    });
    search_admin($('#txt_search').val());
});
check_all = function (cb) {//全选
    $('input.cb_item').attr('checked', cb.checked);
}
check_item = function () {//单个选择
    var all_checked = true;
    $('input.cb_item').each(function () {
        if (!$(this).is(':checked')) {
            all_checked = false;
            return false;
        }
    });
    $('#cb_all').attr('checked', all_checked);
}
get_admin_by_id = function (id) {//根据id获取管理员信息
    $.ajax({
        type: 'GET',
        url: '/api/Admin/GetAdminById/' + id,
        success: function (data) {
            if (data != null) {
                $('#lbl_edit_id').text(data.id);
                $('#txt_edit_username').val(data.username);
                $('#txt_edit_password').val(data.password);
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}
delete_admins = function (admins) {//删除管理员
    var json = JSON.stringify(admins);
    $.ajax({
        type: 'POST',
        url: '/api/Admin/DeleteAdmins',
        data: json,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            if (data == true) {
                if ($('#div_delete').is(':visible')) {
                    $('#div_delete').slideUp();
                }
                search_admin($('#txt_search').val());
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}
edit_admin = function (id,admin) {//修改管理员信息
    var json = JSON.stringify(admin);
    $.ajax({
        type: 'PUT',
        url: '/api/Admin/UpdateAdmin/' + id,
        data: json,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            if (data != null&&data.id > 0) {
                if ($('#div_edit').is(':visible')) {
                    $('#div_edit').slideUp();
                }
                search_admin($('#txt_search').val());
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}
add_admin = function (admin) {//添加管理员
    var json = JSON.stringify(admin);
    $.ajax({
        type: 'POST',
        url: '/api/Admin/AddAdmin',
        data: json,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            if (data != null&&data.id > 0) {
                if ($('#div_add').is(':visible')) {
                    $('#div_add').slideUp();
                }
                search_admin($('#txt_search').val());
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}
verify_input = function (username, password, $txt_username, $txt_password) {//判断用户输入
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
    return true;
}
search_admin = function (username) {//搜索管理员
    $('#table_content').empty();
    $('#table_content').append('<tr>'
                                    + '<th class="checkbox"><input type="checkbox" name="checkbox" id="cb_all" onclick="check_all(this);" /></th>'
                                    + '<th>用户名</th>'
                                    + '<th>密码</th>'
                                    + '<th>类型</th>'
                                + '</tr>');
    $.ajax({
        type: 'GET',
        url: '/api/Admin/GetAdmins?username=' + username + '&typeId=2',
        success: function (data) {
            if (data != null && data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    var html = '<tr>'
                                    + '<td class="checkbox"><input id="' + data[i].id + '" type="checkbox" name="checkbox" class="cb_item" onclick="check_item();" /></td>'
                                    + '<td>' + data[i].username + '</td>'
                                    + '<td>' + data[i].password + '</td>'
                                    + '<td>' + data[i].typeId + '</td>'
                                + '</tr>';
                    $('#table_content').append(html);
                }
            }
        },
        error: function (msg) {
            alert(msg.responseText);
        }
    });
}