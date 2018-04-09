<?php

/**
 * CategoriaEventoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaEventoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(CategoriaEventoEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaEventoModel();
    }

}