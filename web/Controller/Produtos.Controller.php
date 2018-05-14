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


        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        $this->produto = [];
        if ($coProduto) {
            /** @var ProdutoEntidade $produto */
            $this->produtoPrincipal = $produtoService->PesquisaUmRegistro($coProduto);
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
        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        return $produtoService->getSeoProdutos($coProduto);
    }

}