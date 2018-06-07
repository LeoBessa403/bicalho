<?php

class Produtos extends AbstractController
{
    public $produtoPrincipal;
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
    }

    public function DetalharFavoritos()
    {
        $produto = new Produtos();
        $this->favoritos = $produto->getProdutosFavoritos();
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

}