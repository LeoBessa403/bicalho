<?php

class Produto extends AbstractController
{
    public $result;

    function ListarProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $this->result = $produtoService->PesquisaTodos();
    }

    function CadastroProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $id = "cadastroProduto";

        if (!empty($_POST[$id])):
            $retorno = $produtoService->salvaProduto($_POST, $_FILES);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarProduto/');
            }
        endif;

        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        $res = [];
        if($coProduto){
            /** @var ProdutoEntidade $produto */
            $produto = $produtoService->PesquisaUmRegistro($coProduto);
            $res = $produtoService->getArrayDadosProduto($produto, $res);
        }
        $this->form = ProdutoForm::Cadastrar($res);
    }

}
   