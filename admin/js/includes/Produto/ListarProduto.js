$(function () {
    $(".produto_model .btn-success").click(function () {
        var url_action = $(this).attr("data-url-action");
        location.href=url_action;
    });

    $(".produto_acao").click(function () {
        var id = $(this).attr("id");
        var url_action = $(this).attr("data-url-action");
        $(".produto_model .btn-success").attr('id', id);
        $(".produto_model .btn-success").attr('data-url-action', url_action);
    });

});