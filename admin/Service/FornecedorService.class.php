<?php

/**
 * FornecedorService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FornecedorService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FornecedorEntidade::ENTIDADE);
        $this->ObjetoModel = New FornecedorModel();
    }


}