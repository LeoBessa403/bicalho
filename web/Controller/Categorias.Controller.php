<?php

class Categorias extends AbstractController
{
    public $result;
    public $categoria;
    public $produtoService;
    public $favoritos;
    public $comparados;

    public function ListarCategorias()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->result = $fabricanteService->PesquisaTodos();

        $noCategoria = UrlAmigavel::PegaParametroUrlAmigavel();
        if ($noCategoria) {
            /** @var CategoriaEntidade $categoria */
            $categoria[] = $categoriaService->PesquisaUmQuando([
                NO_CATEGORIA_URL_AMIGAVEL => $noCategoria
            ]);
            if (!count($categoria[0])) {
                Redireciona('web/Categorias/CategoriaNaoEncontrado/');
            }
        }else{
            /** @var CategoriaEntidade $categoria */
            $categoria = $categoriaService->PesquisaTodos();
        }
        /** @var CategoriaEntidade $this->categoria */
        $this->categoria = $categoria;
        $this->produtoService = $produtoService;
        $produto = new Produtos();
        $this->favoritos = $produto->getProdutosFavoritos();
        $this->comparados = $produto->getProdutosComparados();
    }

    public function getSeoCategorias()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        $noCategoria = UrlAmigavel::PegaParametroUrlAmigavel();
        return $categoriaService->getSeoCategorias($noCategoria);
    }
}