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
});