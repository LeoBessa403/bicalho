<?php

/**
 * FabricanteModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FabricanteModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(FabricanteEntidade::ENTIDADE);
    }

    /**
     * @return array
     */
    public function pesquisaFabricantes()
    {
        $campos = CO_FABRICANTE;
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(FabricanteEntidade::TABELA, null, null, $campos);
        return $pesquisa->getResult();
    }

    /**
     * @param $coFabricante
     * @return array
     */
    public function pesquisaFabricantesAleatorios($coFabricante)
    {
        $tabela = FabricanteEntidade::TABELA . " fab" .
            " inner join " . ImagemEntidade::TABELA . " img" .
            " on img." . ImagemEntidade::CHAVE . " = fab." . ImagemEntidade::CHAVE;

        $campos = NO_FABRICANTE_URL_AMIGAVEL . ", " . DS_CAMINHO;
        $pesquisa = new Pesquisa();
        $where = 'where ' . FabricanteEntidade::CHAVE . ' in (' . $coFabricante . ")";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }

    /**
     * @param $noFabricante
     * @return array
     */
    public static function getSeoFabricantes($noFabricante)
    {
        $dadosSeo = [];
        $campos = NO_FABRICANTE . ' AS titulo';
        $pesquisa = new Pesquisa();
        $where = "where " . NO_FABRICANTE_URL_AMIGAVEL . " = :noFabricante";
        $pesquisa->Pesquisar(FabricanteEntidade::TABELA, $where, "noFabricante={$noFabricante}", $campos);
        if (count($pesquisa->getResult())) {
            $dadosSeo = $pesquisa->getResult()[0];
        } else {
            $dadosSeo['titulo'] = "Fabricantes";
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
        $campos = NO_FABRICANTE . ", " . NO_FABRICANTE_URL_AMIGAVEL;
        $pesquisa = new Pesquisa();
        $where = "where " . NO_FABRICANTE . " LIKE ('%" . $pesquisado . "%')";
        $pesquisa->Pesquisar(FabricanteEntidade::TABELA, $where, null, $campos);
        return $pesquisa->getResult();
    }

    /**
     * @param $Condicoes
     * @return array
     */
    public function PesquisaAvancada($Condicoes)
    {
        $tabela = "tb_fabricante fab
                    INNER JOIN tb_produto prod
                        on prod.co_fabricante = fab.co_fabricante 
                    INNER JOIN tb_produto_detalhe proddet
                        on prod.co_produto = proddet.co_produto
                    AND proddet.co_produto_detalhe = (SELECT max(co_produto_detalhe) FROM tb_produto pro
                        INNER JOIN tb_produto_detalhe prodd
                          on pro.co_produto = prodd.co_produto  WHERE pro.co_produto = prod.co_produto
                           GROUP BY prodd.co_produto)";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where);
        $fabricantes = [];
        /** @var FabricanteEntidade $fabricante */
        foreach ($pesquisa->getResult() as $fabricante) {
            $fab[0] = $fabricante;
            $fabricantes[] = $this->getUmObjeto(FabricanteEntidade::ENTIDADE, $fab);
        }
        return $fabricantes;
    }
}