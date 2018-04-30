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
     * @param $coProduto
     * @return bool|INT
     */
    public function Deleta($coProduto)
    {
        $dados = [
            ST_STATUS => StatusUsuarioEnum::INATIVO
        ];
        return $this->Salva($dados, $coProduto);
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
        $where = $where . " ORDER BY prod.".ProdutoEntidade::CHAVE." DESC";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $produtos = [];
        /** @var ProdutoEntidade $produto */
        foreach ($pesquisa->getResult() as $produto){
            $prod[0] = $produto;
            $produtos[] = $this->getUmObjeto(ProdutoEntidade::ENTIDADE, $prod);
        }
        return $produtos;
    }

}