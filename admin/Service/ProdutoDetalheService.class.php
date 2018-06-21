<?php

/**
 * ProdutoDetalheService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoDetalheService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProdutoDetalheEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoDetalheModel();
    }

    /**
     * @return array
     */
    public function PesquisaProdutosDestaque()
    {
        return $this->ObjetoModel->PesquisaProdutosDestaque();
    }

}