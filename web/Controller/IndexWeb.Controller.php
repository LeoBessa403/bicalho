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

    public function Index()
    {
        /** @var ProdutoDestaqueService $produtoDestaqueService */
        $produtoDestaqueService = $this->getService(PRODUTO_DESTAQUE_SERVICE);
        $this->result = $produtoDestaqueService->PesquisaTodos();
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->produtosDestaque =  $produtoService->pesquisaProdutos(4);
        $this->novasChegadas =  $produtoService->pesquisaProdutos(4);
        $this->maisVendidos =  $produtoService->pesquisaProdutos(6);
        $bemMaisVendidos =  $produtoService->pesquisaProdutos(1);

        /** @var ProdutoEntidade $this->bemMaisVendidos */
        $this->bemMaisVendidos = $bemMaisVendidos[0];
        $this->produtoService = $produtoService;
    }
}
?>
   