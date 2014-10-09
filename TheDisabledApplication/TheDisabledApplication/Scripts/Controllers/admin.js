$(function () {
    $('#a_add').click(function () {//打开添加管理员界面
        dropdown_action('div_add', '33');
        return false;
    });
    $('#a_edit').click(function () {//打开编辑管理员界面
        dropdown_action('div_edit', '103');
        return false;
    });
    $('#a_delete').click(function () {//打开删除管理员界面
        dropdown_action('div_delete', '176');
        return false;
    });
    $('#txt_search').keypress(function (e) {//在搜索框中按回车触发事件
        if (e.keyCode == '13') {
            search_admin($(this).val());
        }
    });
    search_admin('');
});

search_admin = function (username) {//搜索管理员
    $('#table_content').empty();
    $('#table_content').append('<tr>'
                                    + '<th class="checkbox"><input type="checkbox" name="checkbox" /></th>'
                                    + '<th>用户名</th>'
                                    + '<th>密码</th>'
                                    + '<th>类型</th>'
                                + '</tr>');
    $.ajax({
        type: 'GET',
        url: '/api/Admin/GetAdmins?username=' + username + '&typeId=2',
        success: function (data) {
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    var html = '<tr>'
                                    + '<td class="checkbox"><input id="' + data[i].id + '" type="checkbox" name="checkbox" /></td>'
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