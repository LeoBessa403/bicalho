<?php

/**
 * SegmentoModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SegmentoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(SegmentoEntidade::ENTIDADE);
    }

    /**
     * @param $pesquisado
     * @return array
     */
    public static function getPesquisaSite($pesquisado)
    {
        $campos = DS_SEGMENTO . ", " . NO_SEGMENTO_URL_AMIGAVEL;
        $pesquisa = new Pesquisa();
        $where = "where " . DS_SEGMENTO . " LIKE ('%" . $pesquisado . "%')";
        $pesquisa->Pesquisar(SegmentoEntidade::TABELA, $where, null, $campos);
        return $pesquisa->getResult();
    }
}