<?php

/**
 * TransportadoraService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TransportadoraService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TransportadoraEntidade::ENTIDADE);
        $this->ObjetoModel = New TransportadoraModel();
    }


}