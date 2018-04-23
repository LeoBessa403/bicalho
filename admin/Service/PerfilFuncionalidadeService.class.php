<?php

/**
 * PerfilFuncionalidadeService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PerfilFuncionalidadeService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PerfilFuncionalidadeEntidade::ENTIDADE);
        $this->ObjetoModel = New PerfilFuncionalidadeModel();
    }


}