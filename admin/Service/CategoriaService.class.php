<?php

/**
 * CategoriaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaModel();
    }


}