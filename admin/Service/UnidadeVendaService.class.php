<?php

/**
 * UnidadeVendaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  UnidadeVendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(UnidadeVendaEntidade::ENTIDADE);
        $this->ObjetoModel = New UnidadeVendaModel();
    }


}