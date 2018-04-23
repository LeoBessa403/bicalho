<?php

/**
 * ClienteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ClienteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ClienteEntidade::ENTIDADE);
        $this->ObjetoModel = New ClienteModel();
    }


}