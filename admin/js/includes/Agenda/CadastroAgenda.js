$(function () {
    function validaEvento(co_categoria_agenda) {
        if (co_categoria_agenda != 5) {
            $("#co_categoria_evento").parent(".form-group").hide();
            $("#co_categoria_evento").removeClass('ob');
            $("#co_imagem-info").parent(".form-group").hide();
            $("#co_imagem").removeClass('ob');
            $("#co_imagem_evento-info").parent(".form-group").hide();
        } else {
            $("#co_categoria_evento").parent(".form-group").show();
            $("#co_categoria_evento").addClass('ob');
            $("#co_imagem-info").parent(".form-group").show();
            $("#co_imagem").addClass('ob');
            $("#co_imagem_evento-info").parent(".form-group").show();
        }
    }

    validaEvento(false);

    $("#co_categoria_agenda").change(function () {
        validaEvento($(this).val());
    });
});