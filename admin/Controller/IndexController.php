<?php

class IndexController extends AbstractController
{
    public function Index()
    {
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);
        $produtos = $produtoService->PesquisaTodos();

        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        $categorias = $categoriaService->PesquisaTodos();

        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $fabricantes = $fabricanteService->PesquisaTodos();

        /** @var ProdutoDestaqueService $produtoDestaqueService */
        $produtoDestaqueService = $this->getService(PRODUTO_DESTAQUE_SERVICE);
        $produtosDestaque = $produtoDestaqueService->PesquisaTodos();

        $produtosSemEstoque = $produtoService->PesquisaProdutosSemEstoque();

        $dados['ProdutosCadastrados'] = count($produtos);
        $dados['FabricantesCadastrados'] = count($fabricantes);
        $dados['CategoriasCadastrados'] = count($categorias);
        $dados['ProdutosDestaque'] = count($produtosDestaque);
        $dados['MaisVisitados'] = 0;
        $dados['MaisVendidos'] = 0;
        $dados['ProdutosSemEstoque'] = count($produtosSemEstoque);
        $dados['NovosProdutos'] = 0;
        $dados['MaisProdurados'] = 0;

        return $dados;
    }

}