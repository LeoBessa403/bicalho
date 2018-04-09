<?php

/**
 * ImagemEventoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class ImagemEventoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(ImagemEventoEntidade::ENTIDADE);
        $this->ObjetoModel = New ImagemEventoModel();
    }


}