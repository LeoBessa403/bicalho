<?php

/**
 * EmpresaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  EmpresaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(EmpresaEntidade::ENTIDADE);
        $this->ObjetoModel = New EmpresaModel();
    }


}