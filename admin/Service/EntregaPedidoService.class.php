<?php

/**
 * EntregaPedidoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  EntregaPedidoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(EntregaPedidoEntidade::ENTIDADE);
        $this->ObjetoModel = New EntregaPedidoModel();
    }


}