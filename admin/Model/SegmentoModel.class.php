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
     * @param $noSegmento
     * @return array
     */
    public static function getSeoSegmentos($noSegmento)
    {
        $dadosSeo = [];
        $campos = DS_SEGMENTO . ' AS titulo';
        $pesquisa = new Pesquisa();
        $where = "where " . NO_SEGMENTO_URL_AMIGAVEL . " = :noSegmento";
        $pesquisa->Pesquisar(SegmentoEntidade::TABELA, $where, "noSegmento={$noSegmento}", $campos);
        if (count($pesquisa->getResult())) {
            $dadosSeo = $pesquisa->getResult()[0];
        }
        $dadosSeo['imagem'] = null;
        $dadosSeo['descricao'] = TITULO_SITE . " - " . DESC_SITE;
        return $dadosSeo;
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