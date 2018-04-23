<?php

/**
 * UsuarioPerfilService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  UsuarioPerfilService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(UsuarioPerfilEntidade::ENTIDADE);
        $this->ObjetoModel = New UsuarioPerfilModel();
    }


}