<?php
          
class IndexWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $produtoService;

    public function Index()
    {
        /** @var ProdutoDestaqueService $produtoDestaqueService */
        $produtoDestaqueService = $this->getService(PRODUTO_DESTAQUE_SERVICE);
        $this->result = $produtoDestaqueService->PesquisaTodos();
        /** @var ProdutoService $produtoService */
        $this->produtoService = $this->getService(PRODUTO_SERVICE);
    }
}
?>
   