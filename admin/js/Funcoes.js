var Funcoes = function () {
    var inicio = function () {


        $("#ds_pastoral_ativo").change(function () {
            disabilitaCamposRetiro();
        });

        // CADASTRO De Retiro de Carnaval
        function disabilitaCamposRetiro() {
            if ($("#ds_pastoral_ativo").prop('checked')) {
                $("#ds_pastoral").parent(".form-group").slideDown("slow");
            } else {
                $("#ds_pastoral").parent(".form-group").slideUp("fast");
            }
        }

        disabilitaCamposRetiro();

        // Valida data
        $("#dt_nascimento").change(function () {
            var idade = 14; // Idade limite para aceitar o cadastro Maior que a Idade
            var ano = $(this).val().substring(6, 10);
            var Hoje = new Date();
            var AnoAtual = Hoje.getFullYear();
            var novoAno = AnoAtual - idade;

            if (ano > novoAno) {
                Funcoes.Alerta(Funcoes.MSG01);
                $(this).val("");
                $(".dt_nascimento").parent(".form-group").addClass('has-error').removeClass('has-success');
                $('span#dt_nascimento-info').text("Para maiores de 14 anos");
                return false;
            }
        });

        function verificaTodas() {
            var todas = true;
            $(".funcionalidade").each(function () {
                $(".todas").prop("checked", $(".funcionalidade").prop('checked'));
                if (!$(this).prop('checked')) {
                    todas = false;
                }
            });
            if (todas) {
                $(".todas").prop("checked", true);
            } else {
                $(".todas").prop("checked", false);
            }
        }


        // VINCULAÇÃO FUNCIONALIDADES AO PERFIL // BOTÃO TODOS FUNCIONALIDADES
        $(".todas").change(function () {
            $(".funcionalidade").each(function () {
                $(this).prop("checked", $(".todas").prop('checked'));
            });
        });

        // VINCULAÇÃO DA FUNCIONALIDADE AO PERFIL
        $(".funcionalidade").change(function () {
            verificaTodas();
        });

        verificaTodas();
    };
    return {
        init: function () {
            inicio();
        },
        Modal: function (msg, classe, cor, icone, titulo) {
            $(".aviso .modal-header").removeClass().addClass("modal-header btn btn-" + classe);
            $(".aviso #icone").removeClass().addClass("btn btn-" + cor);
            $(".aviso i").removeClass().addClass("fa " + icone);
            $(".aviso .modal-header .modal-title").text(titulo);
            $(".aviso #confirmacao_msg b").html(msg);
            $("#aviso").click();
            //Função de subir a página ao topo
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        },
        Sucesso: function (msg) {
            Funcoes.Modal(msg, "success", "green", "fa-check", "SUCESSO");
        },
        Alerta: function (msg) {
            Funcoes.Modal(msg, "warning", "yellow", "fa-exclamation-triangle", "ALERTA");
        },
        Informativo: function (msg) {
            Funcoes.Modal(msg, "info", "primary", "fa-info-circle", "INFORMATIVO");
        },
        Erro: function (msg) {
            Funcoes.Modal(msg, "bricky", "bricky", "fa-frown-o", "Erro");
        },

        MSG_CONFIRMACAO: "CONFIRMAÇÃO",

        MSG01: "Sua Idade Não é Permitida.",
        MSG02: "Ano de publicação não pode ser maior que o ano atual.",
        MSG03: "Ano de publicação não pode ser menor que o ano de 1950.",
        MSG04: "Livro sem Foto de Capa"

    };
}();

