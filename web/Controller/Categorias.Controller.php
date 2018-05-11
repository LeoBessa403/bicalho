<?php

class Categorias extends AbstractController
{
    public $result;
    public $categoria;
    public $produtoService;

    public function Index()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->result = $fabricanteService->PesquisaTodos();

        $coCategoria = UrlAmigavel::PegaParametro(CO_CATEGORIA);
        if ($coCategoria) {
            /** @var CategoriaEntidade $categoria */
            $categoria = $categoriaService->PesquisaUmRegistro($coCategoria);
        }else{
            /** @var CategoriaEntidade $categoria */
            $categoria = $categoriaService->PesquisaTodos();
        }
        /** @var CategoriaEntidade $this->categoria */
        $this->categoria = $categoria;
        $this->produtoService = $produtoService;
    }
}

?>
   