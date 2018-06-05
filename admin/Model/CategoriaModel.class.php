<?php

/**
 * CategoriaModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(CategoriaEntidade::ENTIDADE);
    }

    /**
     * @param $pesquisado
     * @return array
     */
    public static function getPesquisaSite($pesquisado)
    {
        $campos = NO_CATEGORIA . ", " . NO_CATEGORIA_URL_AMIGAVEL;
        $pesquisa = new Pesquisa();
        $where = "where " . NO_CATEGORIA . " LIKE ('%" . $pesquisado . "%')";
        $pesquisa->Pesquisar(CategoriaEntidade::TABELA, $where, null, $campos);
        return $pesquisa->getResult();
    }

    /**
     * @param $noCategoria
     * @return array
     */
    public static function getSeoCategorias($noCategoria)
    {
        $dadosSeo = [];
        $campos = NO_CATEGORIA . ' AS titulo';
        $pesquisa = new Pesquisa();
        $where = "where " . NO_CATEGORIA_URL_AMIGAVEL . " = :noCategoria";
        $pesquisa->Pesquisar(CategoriaEntidade::TABELA, $where, "noCategoria={$noCategoria}", $campos);
        if (count($pesquisa->getResult())) {
            $dadosSeo = $pesquisa->getResult()[0];
        }else{
            $dadosSeo['titulo'] = "Categorias";
        }
        $dadosSeo['imagem'] = null;
        $dadosSeo['descricao'] = TITULO_SITE . " - " . DESC_SITE;
        return $dadosSeo;
    }
}