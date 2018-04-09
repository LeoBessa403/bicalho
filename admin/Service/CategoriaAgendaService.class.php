<?php

/**
 * CategoriaAgendaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaAgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaAgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaAgendaModel();
    }


}