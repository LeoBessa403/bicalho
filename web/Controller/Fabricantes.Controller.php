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

        $noFabricante = UrlAmigavel::PegaParametroUrlAmigavel();
        if ($noFabricante) {
            /** @var FabricanteEntidade $fabricante */
            $fabricantes[] = $fabricanteService->PesquisaUmQuando([
                NO_FABRICANTE_URL_AMIGAVEL => $noFabricante
            ]);
            if (!count($fabricantes[0])) {
                Redireciona('web/Fabricantes/FabricanteNaoEncontrado/');
            }
        }else{
            /** @var FabricanteEntidade $fabricantes */
            $fabricantes = $fabricanteService->PesquisaTodos();
        }
        /** @var CategoriaEntidade $this->categoria */
        $this->listaFabricantes = $fabricantes;
        $this->produtoService = $produtoService;
    }

    public function getSeoFabricantes()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $noFabricante = UrlAmigavel::PegaParametroUrlAmigavel();
        return $fabricanteService->getSeoFabricantes($noFabricante);
    }
}
