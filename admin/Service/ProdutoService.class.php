<?php

/**
 * ProdutoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProdutoEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoModel();
    }


}