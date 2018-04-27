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
        if (!$res):
            $res[CO_UNIDADE_VENDA] = 1;
        endif;
        $formulario->setValor($res);

        $formulario
            ->setId(NO_PRODUTO)
            ->setLabel("Produto")
            ->setInfo("Título do momento")
            ->setClasses("ob")
            ->CriaInpunt();

        $formulario
            ->setId(NU_ESTOQUE)
            ->setLabel("Estoque do Produto")
            ->setTamanhoInput(6)
            ->setInfo("Estoque no momento")
            ->setClasses("ob numero")
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
            ->setClasses("ob")
            ->setClasses("moeda")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setType("textarea")
            ->setLabel("Descrição do Produto")
            ->setClasses("ob ckeditor")
            ->CriaInpunt();

        $formulario
            ->setId(CO_PRODUTO_IMAGEM)
            ->setLabel("Fotos do Produto")
            ->setType("file")
            ->setClasses("ob")
            ->setLimite(10)
            ->setClasses("multipla")
            ->setInfo("No máximo de 10 Fotos")
            ->CriaInpunt();

        if (!empty($res[CO_PRODUTO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PRODUTO)
                ->setValues($res[CO_PRODUTO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }
}

?>
   