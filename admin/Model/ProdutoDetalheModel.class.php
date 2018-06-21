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
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(ProdutoDetalheEntidade::TABELA,
            'Where ' . ST_DESTAQUE . ' = "' . SimNaoEnum::SIM . '" GROUP BY '. CO_PRODUTO);
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto) {
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoDetalheEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

}