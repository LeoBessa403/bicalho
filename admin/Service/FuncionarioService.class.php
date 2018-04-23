<?php

/**
 * FuncionarioService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FuncionarioService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FuncionarioEntidade::ENTIDADE);
        $this->ObjetoModel = New FuncionarioModel();
    }


}