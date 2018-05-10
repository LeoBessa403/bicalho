<?php
          
class IndexWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $produtoService;
    public $produtosDestaque;
    public $novasChegadas;

    public function Index()
    {
        /** @var ProdutoDestaqueService $produtoDestaqueService */
        $produtoDestaqueService = $this->getService(PRODUTO_DESTAQUE_SERVICE);
        $this->result = $produtoDestaqueService->PesquisaTodos();
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->produtosDestaque =  $produtoService->pesquisaProdutos(4);
        $this->novasChegadas =  $produtoService->pesquisaProdutos(4);





        $this->produtoService = $produtoService;

    }
}
?>
   