<?php

/**
 * SitEntregPedService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SitEntregPedService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SitEntregPedEntidade::ENTIDADE);
        $this->ObjetoModel = New SitEntregPedModel();
    }


}