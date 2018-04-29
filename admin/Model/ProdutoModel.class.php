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

}