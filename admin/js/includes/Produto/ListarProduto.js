$(function () {

    var dados = constantes();
    var home = dados['HOME'];
    var urlValida = dados['HOME'] + 'admin/Controller/Ajax.Controller.php';
    var upload = dados['PASTAUPLOADS'];


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

    // CARREGA MODAL DE FOTOS DA CAPA DO PRODUTO
    $(".fotos").click(function () {
        var id = $(this).attr("id");
        var title = $(this).attr("title");
        $(".foto .modal-body.modal-body img").attr("src", "");
        $.ajax({
            url: urlValida,
            data: {valida: "foto_produto", id: id},
            type:   "get",
            dataType:"json",
            beforeSend: function () {
                $("#load").click();
            },
            success: function (data) {
                $("#carregando .cancelar").click();
                if (data.caminho) {
                    $(".foto .modal-header .modal-title").text(title);
                    $(".foto .modal-body.modal-body img").attr("src", home +
                        upload + "ProdutosCapa/" + data.caminho);
                    $("#fotos").click();
                } else {
                    Funcoes.Alerta(Funcoes.MSG04);
                }
            }
        });
    });

});