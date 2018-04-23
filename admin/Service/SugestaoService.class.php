<?php

/**
 * SugestaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SugestaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SugestaoEntidade::ENTIDADE);
        $this->ObjetoModel = New SugestaoModel();
    }


}