<?php
          
class Fabricantes extends AbstractController
{
    public $result;
    public $listaFabricantes;
    public $produtoService;
    public $favoritos;
    public $comparados;

    
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
            if (!empty($_POST)){
                $preco =  explode(' : ', $_POST['preco']);
                $Condicoes = array(
                    "in#fab." . CO_FABRICANTE => (!empty($_POST[CO_FABRICANTE]))
                    ? implode(", ", $_POST[CO_FABRICANTE]) : null,
                    ">=#proddet." . NU_PRECO_VENDA => $preco[0],
                    "<=#proddet." . NU_PRECO_VENDA => $preco[1],
                );
                /** @var FabricanteEntidade $fabricantes */
                $fabricantes = $fabricanteService->PesquisaAvancada($Condicoes);
            }else{
                /** @var FabricanteEntidade $fabricantes */
                $fabricantes = $fabricanteService->PesquisaTodos();
            }
        }
        /** @var CategoriaEntidade $this->categoria */
        $this->listaFabricantes = $fabricantes;
        $this->produtoService = $produtoService;
        $produto = new Produtos();
        $this->favoritos = $produto->getProdutosFavoritos();
        $this->comparados = $produto->getProdutosComparados();
    }

    public function getSeoFabricantes()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $noFabricante = UrlAmigavel::PegaParametroUrlAmigavel();
        return $fabricanteService->getSeoFabricantes($noFabricante);
    }
}
