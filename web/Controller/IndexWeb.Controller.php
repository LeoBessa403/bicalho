<?php
          
class IndexWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $produtoService;
    public $produtosDestaque;
    public $novasChegadas;
    public $maisVendidos;
    public $bemMaisVendidos;
    public $fabricantesDestaque;
    public $favoritos;
    public $comparados;

    public function Index()
    {
        /** @var ProdutoDestaqueService $produtoDestaqueService */
        $produtoDestaqueService = $this->getService(PRODUTO_DESTAQUE_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $result = $produtoDestaqueService->PesquisaTodos();
        $this->result = array_reverse($result);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->produtosDestaque =  $produtoService->pesquisaProdutos(4);
        $this->novasChegadas =  $produtoService->pesquisaProdutos(4);
        $this->maisVendidos =  $produtoService->pesquisaProdutos(6);
        $bemMaisVendidos =  $produtoService->pesquisaProdutos(1);
        $this->fabricantesDestaque =  $fabricanteService->pesquisaFabricantesParceiros(10);

        $this->bemMaisVendidos = $bemMaisVendidos[0];
        $this->produtoService = $produtoService;
        $produto = new Produtos();
        $this->favoritos = $produto->getProdutosFavoritos();
        $this->comparados = $produto->getProdutosComparados();
    }
}
?>
   