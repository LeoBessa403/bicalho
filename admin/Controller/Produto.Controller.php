<?php

class Produto extends AbstractController
{
    public $result;

    function ListarProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $session = new Session();

        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        if (!empty($_POST)) {
            $Condicoes = array(
                "like#prod." . NO_PRODUTO => trim($_POST[NO_PRODUTO]),
                "prod." . NU_CODIGO_INTERNO => trim($_POST[NU_CODIGO_INTERNO]),
                "prod." . NU_ESTOQUE => (!empty($_POST[NU_ESTOQUE])
                    ? 2 : 1),
                "prod." . CO_FABRICANTE => $_POST[CO_FABRICANTE][0],
                "prod." . CO_CATEGORIA => $_POST[CO_CATEGORIA][0],
            );
            $this->result = $produtoService->PesquisaAvancada($Condicoes);
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
        } else {
            $Condicoes = [];
            $this->result = $produtoService->PesquisaAvancada($Condicoes);
        }
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

    public function ListarProdutoPesquisaAvancada()
    {
        echo ProdutoForm::Pesquisar();
    }

}
   