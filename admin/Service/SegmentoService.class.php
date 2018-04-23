<?php

/**
 * SegmentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SegmentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SegmentoEntidade::ENTIDADE);
        $this->ObjetoModel = New SegmentoModel();
    }


}