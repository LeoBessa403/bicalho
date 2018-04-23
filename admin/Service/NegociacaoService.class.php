<?php

/**
 * NegociacaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  NegociacaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(NegociacaoEntidade::ENTIDADE);
        $this->ObjetoModel = New NegociacaoModel();
    }


}