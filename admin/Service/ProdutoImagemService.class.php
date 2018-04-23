<?php

/**
 * ProdutoImagemService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoImagemService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProdutoImagemEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoImagemModel();
    }


}