<?php

class Produtos extends AbstractController
{

    public $fabricantes;
    public $produtoPrincipal;
    public $segmentos;
    public $maisVendidos;

    function DetalharProduto()
    {
        $coProduto = null;
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $this->fabricantes = $fabricanteService->PesquisaTodos();
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        $this->segmentos = $segmentoService->PesquisaTodos();
        $this->maisVendidos =  $produtoService->pesquisaProdutos(6);

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