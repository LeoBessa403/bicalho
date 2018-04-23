<?php

/**
 * ImagemService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ImagemService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ImagemEntidade::ENTIDADE);
        $this->ObjetoModel = New ImagemModel();
    }


}