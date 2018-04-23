<?php

/**
 * SessaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SessaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SessaoEntidade::ENTIDADE);
        $this->ObjetoModel = New SessaoModel();
    }


}