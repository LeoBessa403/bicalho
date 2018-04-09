<?php

/**
 * PerfilAgendaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PerfilAgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PerfilAgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New PerfilAgendaModel();
    }


}