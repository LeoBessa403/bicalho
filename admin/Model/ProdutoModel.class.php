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
        $tabela = ProdutoEntidade::TABELA." prod" .
            " inner join ".ProdutoDetalheEntidade::TABELA." prdt" .
            " on prod.".ProdutoEntidade::CHAVE." = prdt.".ProdutoEntidade::CHAVE .
            " left join ".ProdutoDestaqueEntidade::TABELA." prdes" .
            " on prdt.".ProdutoDetalheEntidade::CHAVE." = prdes.".ProdutoDetalheEntidade::CHAVE;

        $campos = "DISTINCT prod.*";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $where = $where . " ORDER BY prod.".ST_STATUS." ASC, prod.".ProdutoEntidade::CHAVE." DESC";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto){
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

    public static function getDsCaminhoFotoProduto($coProduto)
    {
        $tabela = ProdutoEntidade::TABELA." prod" .
            " inner join ".ImagemEntidade::TABELA." img" .
            " on prod.".ImagemEntidade::CHAVE." = img.".ImagemEntidade::CHAVE;
        $campos = "img.".DS_CAMINHO . ' AS caminho';
        $pesquisa = new Pesquisa();
        $where = "where ".ProdutoEntidade::CHAVE. " = ".$coProduto;
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }

}