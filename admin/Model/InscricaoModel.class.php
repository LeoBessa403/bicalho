<?php

/**
 * InscricaoModel.class [ MODEL ]
 * @copyright (c) 2017, Leo Bessa
 */
class  InscricaoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(InscricaoEntidade::ENTIDADE);
    }

    public function PesquisaAvancada($Condicoes)
    {
        $tabela = InscricaoEntidade::TABELA." insc" .
            " inner join ".PessoaEntidade::TABELA." pes" .
            " on insc.".PessoaEntidade::CHAVE." = pes.".PessoaEntidade::CHAVE .
            " left join ".PagamentoEntidade::TABELA." pag" .
            " on pag.".InscricaoEntidade::CHAVE." = insc.".InscricaoEntidade::CHAVE;

        $campos = "insc.*";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $where = $where . " ORDER BY insc.".ST_STATUS." ASC, insc.".InscricaoEntidade::CHAVE." DESC";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $inscricoes = [];
        /** @var InscricaoEntidade $inscricao */
        foreach ($pesquisa->getResult() as $inscricao){
            $insc[0] = $inscricao;
            $inscricoes[] = $this->getUmObjeto(InscricaoEntidade::ENTIDADE, $insc);
        }
        return $inscricoes;
    }

    public function Deleta($coInscricao)
    {
        $data = [
          ST_STATUS => 'D'
        ];
        return $this->Salva($data,$coInscricao);
    }

}