<?php

class Categorias extends AbstractController
{
    public $result;
    public $categoria;
    public $produtoService;

    public function ListarCategorias()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->result = $fabricanteService->PesquisaTodos();


        $segmentos = $categoriaService->PesquisaTodos();
        /** @var CategoriaEntidade $segmento */
        foreach ($segmentos as $segmento) {
            $nocatUrlAm[NO_CATEGORIA_URL_AMIGAVEL] = Valida::ValNome($segmento->getNoCategoria());
            $categoriaService->Salva($nocatUrlAm, $segmento->getCoCategoria());
        }

        debug(1);


        $coCategoria = UrlAmigavel::PegaParametro(CO_CATEGORIA);
        if ($coCategoria) {
            /** @var CategoriaEntidade $categoria */
            $categoria[] = $categoriaService->PesquisaUmRegistro($coCategoria);
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
   