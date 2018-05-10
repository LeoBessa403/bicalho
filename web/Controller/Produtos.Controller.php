<?php

class Produtos extends AbstractController
{

    public $fabricantes;
    public $produto;
    public $segmentos;


    function DetalharProduto()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $this->fabricantes = $fabricanteService->PesquisaTodos();
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        $this->segmentos = $segmentoService->PesquisaTodos();

        $coProduto = UrlAmigavel::PegaParametro(CO_PRODUTO);
        $this->produto = [];
        if ($coProduto) {
            /** @var ProdutoEntidade $produto */
            $this->produto = $produtoService->PesquisaUmRegistro($coProduto);
        }
    }

    function ComparaProdutos()
    {
    }

    function DetalharFavoritos()
    {
    }

}