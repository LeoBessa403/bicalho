<?php

/**
 * ProdutoDestaqueService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoDestaqueService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProdutoDestaqueEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoDestaqueModel();
    }


}