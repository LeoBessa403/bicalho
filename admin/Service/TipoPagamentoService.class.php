<?php

/**
 * TipoPagamentoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  TipoPagamentoService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(TipoPagamentoEntidade::ENTIDADE);
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