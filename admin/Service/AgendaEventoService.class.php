<?php

/**
 * AgendaEventoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class AgendaEventoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(AgendaEventoEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaEventoModel();
    }


}