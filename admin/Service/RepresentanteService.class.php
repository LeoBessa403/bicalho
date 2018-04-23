<?php

/**
 * RepresentanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  RepresentanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(RepresentanteEntidade::ENTIDADE);
        $this->ObjetoModel = New RepresentanteModel();
    }


}