<?php

/**
 * TipoNegociacaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TipoNegociacaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TipoNegociacaoEntidade::ENTIDADE);
        $this->ObjetoModel = New TipoNegociacaoModel();
    }


}