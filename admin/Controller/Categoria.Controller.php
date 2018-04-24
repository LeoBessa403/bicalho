<?php

class Categoria extends AbstractController
{
    public $result;

    function ListarCategoria()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);
        $this->result = $categoriaService->PesquisaTodos();
    }

    function CadastroCategoria()
    {
        /** @var CategoriaService $categoriaService */
        $categoriaService = $this->getService(CATEGORIA_SERVICE);

        $id = "cadastroCategoria";

        if (!empty($_POST[$id])):
            $retorno = $categoriaService->salvaCategoria($_POST);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarCategoria/');
            }
        endif;

        $coCategoria = UrlAmigavel::PegaParametro(CO_CATEGORIA);
        $res = [];
        if($coCategoria){
            /** @var CategoriaEntidade $categoria */
            $categoria = $categoriaService->PesquisaUmRegistro($coCategoria);
            $res[CO_CATEGORIA] = $categoria->getCoCategoria();
            $res[NO_CATEGORIA] = $categoria->getNoCategoria();
        }
        $this->form = CategoriaForm::Cadastrar($res);

    }

}
   