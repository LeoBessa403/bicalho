<?php

/**
 * AjudaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AjudaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AjudaEntidade::ENTIDADE);
        $this->ObjetoModel = New AjudaModel();
    }


}