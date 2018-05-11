<?php
          
class Fabricantes extends AbstractController
{
    public $result;
    public $listaFabricantes;
    public $produtoService;
    
    public function ListarFabricantes()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->result = $fabricanteService->PesquisaTodos();

        $coFabricante = UrlAmigavel::PegaParametro(CO_FABRICANTE);
        if ($coFabricante) {
            /** @var FabricanteEntidade $fabricante */
            $fabricantes[] = $fabricanteService->PesquisaUmRegistro($coFabricante);
        }else{
            /** @var FabricanteEntidade $fabricante */
            $fabricantes = $fabricanteService->PesquisaTodos();
        }
        /** @var FabricanteEntidade $this->fabricante */
        $this->listaFabricantes = $fabricantes;
        $this->produtoService = $produtoService;
    }
}
?>
   