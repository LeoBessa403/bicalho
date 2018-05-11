<?php

class Produtos extends AbstractController
{
    public $produtoPrincipal;
    public $segmentos;

    function DetalharProduto()
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

    function ComparaProdutos()
    {
    }

    function DetalharFavoritos()
    {
    }

}