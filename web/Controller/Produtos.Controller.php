<?php

class Produtos extends AbstractController
{
    public $produtoPrincipal;
    public $produtos;
    public $segmentos;
    public $favoritos;
    public $comparados;

    public function DetalharProduto()
    {
        $coProduto = null;
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        $this->segmentos = $segmentoService->PesquisaTodos();

        $noProduto = UrlAmigavel::PegaParametroUrlAmigavel();
        $this->produto = [];
        if ($noProduto) {
            /** @var ProdutoEntidade $produto */
            $this->produtoPrincipal = $produtoService->PesquisaUmQuando([
                NO_PRODUTO_URL_AMIGAVEL => $noProduto
            ]);
            if (empty($this->produtoPrincipal)) {
                Redireciona('web/Produtos/ProdutoNaoEncontrado/');
            }
        } else {
            Redireciona('web/Produtos/ProdutoNaoEncontrado/');
        }
        $this->favoritos = $this->getProdutosFavoritos();
        $this->comparados = $this->getProdutosComparados();
    }

    public function ComparaProdutos()
    {
        $this->comparados = $this->getProdutosComparados();
    }

    public function DetalharFavoritos()
    {
        $this->favoritos = $this->getProdutosFavoritos();
    }

    public function getProdutosFavoritos()
    {
        $session = new Session();
        $favoritos = [];
        if ($session::CheckCookie('bicalho-favoritos'))
            $favoritos = explode('-', $session::getCookie('bicalho-favoritos'));
        $i = 0;
        foreach ($favoritos as $favorito){
            if(empty($favorito)){
                unset($favoritos[$i]);
            }
            $i++;
        }
        return $favoritos;
    }

    public function getProdutosComparados()
    {
        $session = new Session();
        $comparados = [];
        if ($session::CheckCookie('bicalho-comparados'))
            $comparados = explode('-', $session::getCookie('bicalho-comparados'));
        $i = 0;
        foreach ($comparados as $comparado){
            if(empty($comparado)){
                unset($comparados[$i]);
            }
            $i++;
        }
        return $comparados;
    }

    public function getSeoProdutos()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $noProduto = UrlAmigavel::PegaParametroUrlAmigavel();
        return $produtoService->getSeoProdutos($noProduto);
    }

    public function PesquisaProdutos()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        if (!empty($_POST)){
            $preco =  explode(' : ', $_POST['preco']);
            $Condicoes = array(
                "in#prod." . CO_FABRICANTE => (!empty($_POST[CO_FABRICANTE]))
                    ? implode(", ", $_POST[CO_FABRICANTE]) : null,
                ">=#proddet." . NU_PRECO_VENDA => $preco[0],
                "<=#proddet." . NU_PRECO_VENDA => $preco[1],
            );
            /** @var ProdutoEntidade $produtos */
            $produtos = $produtoService->PesquisaAvancadaForm($Condicoes);
        }else{
            /** @var ProdutoEntidade $produtos */
            $produtos = $produtoService->PesquisaTodos();
        }
        $this->produtos = $produtos;
        $this->favoritos = $this->getProdutosFavoritos();
    }

}