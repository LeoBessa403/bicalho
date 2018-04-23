<?php

/**
 * TipoPagamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TipoPagamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TipoPagamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New TipoPagamentoModel();
    }

    public static function montaComboTodosTipoPagamento()
    {
        /** @var TipoPagamentoService $tipoPagamentoService */
        $tipoPagamentoService = new TipoPagamentoService();

        $tpPagamento = $tipoPagamentoService->PesquisaTodos();
        $todosTp = array();
        /** @var TipoPagamentoEntidade $tp */
        foreach ($tpPagamento as $tp) :
            $todosTp[$tp->getCoTipoPagamento()] = $tp->getDsTipoPagamento();
        endforeach;
        return $todosTp;
    }
}