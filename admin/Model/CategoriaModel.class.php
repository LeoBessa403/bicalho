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
}