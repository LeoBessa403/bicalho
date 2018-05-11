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
            ->setInfo("Título do Produto")
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

        $ob = "ob";
        if (!empty($res[CO_PRODUTO])):
            $ob = "";
        endif;

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setInfo("Principal imagem do produto")
            ->setTamanhoInput(12)
            ->setClasses($ob)
            ->setLabel("Foto principal")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setType("textarea")
            ->setLabel("Descrição do Produto")
            ->setClasses("ckeditor")
            ->CriaInpunt();

        if (!empty($res[CO_PRODUTO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PRODUTO)
                ->setValues($res[CO_PRODUTO])
                ->CriaInpunt();

            $formulario
                ->setType("hidden")
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();
        else:
            $formulario
                ->setId(CO_PRODUTO_IMAGEM)
                ->setLabel("Fotos do Produto")
                ->setType("file")
                ->setClasses("multipla")
                ->setLimite(10)
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
            ->setId(NO_PRODUTO)
            ->setLabel("Produto")
            ->setInfo("Título do Produto")
            ->CriaInpunt();

        $checked = "checked";
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
            ->setClasses("numero")
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
            ->CriaInpunt();

//        $formulario
//            ->setId(NU_PRECO_VENDA)
//            ->setLabel("Valor de Venda")
//            ->setTamanhoInput(6)
//            ->setClasses("moeda")
//            ->CriaInpunt();
//
//        $formulario
//            ->setId(NU_PRECO_VENDA.'2')
//            ->setLabel("Valor de Venda")
//            ->setTamanhoInput(6)
//            ->setClasses("moeda")
//            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}

?>
   