<?php

/**
 * ComissaoEventoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ComissaoEventoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ComissaoEventoEntidade::ENTIDADE);
        $this->ObjetoModel = New ComissaoEventoModel();
    }


}