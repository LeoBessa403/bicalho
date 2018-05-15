<?php

class Produtos extends AbstractController
{
    public $produtoPrincipal;
    public $segmentos;

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
        }
    }

    public function ComparaProdutos()
    {
    }

    public function DetalharFavoritos()
    {
    }

    public function getSeoProdutos()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $noProduto = UrlAmigavel::PegaParametroUrlAmigavel();
        return $produtoService->getSeoProdutos($noProduto);
    }

}