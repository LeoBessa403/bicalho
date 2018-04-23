<?php

/**
 * FabricanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FabricanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FabricanteEntidade::ENTIDADE);
        $this->ObjetoModel = New FabricanteModel();
    }


}