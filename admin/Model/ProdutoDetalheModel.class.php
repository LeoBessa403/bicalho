<?php

/**
 * ProdutoDetalheModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoDetalheModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(ProdutoDetalheEntidade::ENTIDADE);
    }
    /**
     * @return array
     */
    public function PesquisaProdutosDestaque()
    {
        $tabela = 'tb_produto_detalhe prdt
                          INNER JOIN tb_produto pr
                            ON pr.co_produto = prdt.co_produto
                          AND prdt.co_produto_detalhe = (SELECT
                              max(co_produto_detalhe)
                            from tb_produto_detalhe tpd
                            WHERE tpd.co_produto = pr.co_produto)';
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar($tabela,
            'Where ' . ST_DESTAQUE . ' = "' . SimNaoEnum::SIM . '"');
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto) {
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoDetalheEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

}