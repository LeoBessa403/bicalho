<?php

/**
 * ProdutoModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(ProdutoEntidade::ENTIDADE);
    }

    /**
     * @param $Condicoes
     * @return array
     */
    public function PesquisaAvancada($Condicoes)
    {
        $tabela = ProdutoEntidade::TABELA . " prod" .
            " inner join " . ProdutoDetalheEntidade::TABELA . " prdt" .
            " on prod." . ProdutoEntidade::CHAVE . " = prdt." . ProdutoEntidade::CHAVE .
            " left join " . ProdutoDestaqueEntidade::TABELA . " prdes" .
            " on prdt." . ProdutoDetalheEntidade::CHAVE . " = prdes." . ProdutoDetalheEntidade::CHAVE;

        $campos = "DISTINCT prod.*";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $where = $where . " ORDER BY prod." . ST_STATUS . " ASC, prod." . ProdutoEntidade::CHAVE . " DESC";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto) {
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

    /**
     * @return array
     */
    public function pesquisaProdutos()
    {
        $campos = CO_PRODUTO;
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(ProdutoEntidade::TABELA,
            'Where ' . ST_STATUS . ' = "' . StatusAcessoEnum::ATIVO.'"',
            null, $campos);
        $produtos = $pesquisa->getResult();
        return $produtos;
    }

    /**
     * @param $coProdutos
     * @return array
     */
    public function pesquisaProdutosAleatorios($coProdutos)
    {
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(
            ProdutoEntidade::TABELA,
            'where ' . ProdutoEntidade::CHAVE . ' in (' . $coProdutos . ')'
        );
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto) {
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

    /**
     * @param $coProduto
     * @return array
     */
    public static function getDsCaminhoFotoProduto($coProduto)
    {
        $tabela = ProdutoEntidade::TABELA . " prod" .
            " inner join " . ImagemEntidade::TABELA . " img" .
            " on prod." . ImagemEntidade::CHAVE . " = img." . ImagemEntidade::CHAVE;
        $campos = "img." . DS_CAMINHO . ' AS caminho';
        $pesquisa = new Pesquisa();
        $where = "where " . ProdutoEntidade::CHAVE . " = " . $coProduto;
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }

    /**
     * @return array
     */
    public function PesquisaProdutosSemEstoque()
    {
        $pesquisa = new Pesquisa();
        $where = "where nu_estoque < '1'";
        $pesquisa->Pesquisar(ProdutoEntidade::TABELA, $where);
        return $pesquisa->getResult();
    }

}