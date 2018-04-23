<?php

/**
 * NegociacaoProdutoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  NegociacaoProdutoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(NegociacaoProdutoEntidade::ENTIDADE);
        $this->ObjetoModel = New NegociacaoProdutoModel();
    }


}