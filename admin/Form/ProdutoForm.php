<?php

/**
 * ProdutoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ProdutoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroProduto";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);

        $checked = "";
        if (!$res):
            $res[CO_UNIDADE_VENDA] = 1;
            $checked = "checked";
        else:
            if ($res[NU_ESTOQUE] == 1):
                $checked = "checked";
            endif;
        endif;
        $formulario->setValor($res);

        $formulario
            ->setId(NO_PRODUTO)
            ->setLabel("Produto")
            ->setInfo("Título do momento")
            ->setClasses("ob")
            ->CriaInpunt();

        $label_options2 = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Produto com Estoque?")
            ->setClasses($checked)
            ->setId(NU_ESTOQUE)
            ->setType("checkbox")
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_CODIGO_INTERNO)
            ->setLabel("Código do Produto")
            ->setTamanhoInput(6)
            ->setClasses("ob numero")
            ->CriaInpunt();

        $formulario
            ->setId(CO_FABRICANTE)
            ->setAutocomplete(
                FabricanteEntidade::TABELA,
                NO_FABRICANTE,
                FabricanteEntidade::CHAVE
            )
            ->setType("select")
            ->setLabel("Fabricante do Produto")
            ->setTamanhoInput(6)
            ->setClasses("ob")
            ->CriaInpunt();

        $formulario
            ->setId(CO_CATEGORIA)
            ->setAutocomplete(
                CategoriaEntidade::TABELA,
                NO_CATEGORIA,
                CategoriaEntidade::CHAVE
            )
            ->setType("select")
            ->setLabel("Categoria do Produto")
            ->setTamanhoInput(6)
            ->setClasses("ob")
            ->CriaInpunt();

        $formulario
            ->setId(CO_UNIDADE_VENDA)
            ->setAutocomplete(
                UnidadeVendaEntidade::TABELA,
                NO_UNIDADE_VENDA,
                UnidadeVendaEntidade::CHAVE,
                'DESC'
            )
            ->setType("select")
            ->setLabel("Unidade de Venda")
            ->setTamanhoInput(6)
            ->setClasses("ob")
            ->CriaInpunt();

        $formulario
            ->setId(NU_PRECO_VENDA)
            ->setLabel("Valor de Venda")
            ->setTamanhoInput(6)
            ->setClasses("ob moeda")
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO_VIDEO)
            ->setLabel("Link do Vídeo")
            ->setInfo("Url de incorporação do Vídeo 'YouTube'")
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO_MANUAL)
            ->setLabel("Manual do Produto")
            ->setInfo("Link para o Manual")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setType("textarea")
            ->setLabel("Descrição do Produto")
            ->setClasses("ckeditor ob")
            ->CriaInpunt();

        if (!empty($res[CO_PRODUTO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PRODUTO)
                ->setValues($res[CO_PRODUTO])
                ->CriaInpunt();
        else:
            $formulario
                ->setId(CO_PRODUTO_IMAGEM)
                ->setLabel("Fotos do Produto")
                ->setType("file")
                ->setClasses("ob")
                ->setLimite(10)
                ->setClasses("multipla")
                ->setInfo("No máximo de 10 Fotos")
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function Pesquisar()
    {
        $id = "pesquisaProduto";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Pesquisa", 12);

        $formulario
            ->setId("no_pessoa")
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Usuario")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf")
            ->setTamanhoInput(6)
            ->setLabel("CPF")
            ->CriaInpunt();
//
//        $label_options = Inscricao::SituacaoPagamento();
//        $formulario
//            ->setLabel("Situação do Pagamento")
//            ->setId(TP_SITUACAO)
//            ->setType("select")
//            ->setClasses("multipla")
//            ->setTamanhoInput(12)
//            ->setOptions($label_options)
//            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Membro GEJ")
            ->setId("DS_MEMBRO_ATIVO")
            ->setType("select")
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

//        $label_options = array("" => "Selecione um", "S" => "Sim","N" => "Não");
//        $formulario
//            ->setLabel("Servo")
//            ->setId(ST_EQUIPE_TRABALHO)
//            ->setType("select")
//            ->setTamanhoInput(12)
//            ->setOptions($label_options)
//            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}

?>
   