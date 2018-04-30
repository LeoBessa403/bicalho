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
                "prod." . CO_FABRICANTE => $_POST[CO_FABRICANTE][0],
                "prod." . CO_CATEGORIA => $_POST[CO_CATEGORIA][0],
            );
            if(!empty($_POST[NU_ESTOQUE])){
                $Condicoes[">=#prod." . NU_ESTOQUE] = 1;
            }else{
                $Condicoes["<#prod." . NU_ESTOQUE] = 1;
            }
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

    public function ExportarListarProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session->getSession(PESQUISA_AVANCADA);
            $result =  $produtoService->PesquisaAvancada($Condicoes);
        } else {
            $result = $produtoService->PesquisaTodos();
        }
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        /** @var ProdutoEntidade $produto */
        foreach ($result as $produto) {
            $res[$i][NO_PRODUTO] = $produto->getNoProduto();
            $res[$i][NU_ESTOQUE] = FuncoesSistema::ProdutoEstoque($produto->getNuEstoque());
            $res[$i][NU_CODIGO_INTERNO] = $produto->getNuCodigoInterno();
            $res[$i][NO_FABRICANTE] = $produto->getCoFabricante()->getNoFabricante();
            $res[$i][NO_CATEGORIA] = $produto->getCoCategoria()->getNoCategoria();
            $res[$i][NU_PRECO_VENDA] = Valida::FormataMoeda($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda());
            $i++;
        }
        $Colunas = array('Produto','Estoque', 'Código do Produto', 'Fabricante', 'Categoria', 'Preço');
        $exporta = new Exportacao($formato);
        $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($res);
        $exporta->GeraArquivo();
    }

    public function ListarProdutoPesquisaAvancada()
    {
        echo ProdutoForm::Pesquisar();
    }

    public function DesativarProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        $retorno = $produtoService->desativarProduto($coProduto);
        if($retorno[SUCESSO]){
            Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarProduto/');
        }
    }

    public function AtivarProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        $retorno = $produtoService->ativarProduto($coProduto);
        if($retorno[SUCESSO]){
            Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarProduto/');
        }
    }

}
   