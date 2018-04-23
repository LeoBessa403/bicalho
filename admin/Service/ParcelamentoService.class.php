<?php

/**
 * ParcelamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ParcelamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ParcelamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New ParcelamentoModel();
    }

    public function Deleta($coPagamento)
    {
        $deleta = new Deleta();
        $where = "where " . CO_PAGAMENTO . " = " . $coPagamento .
            " and " . NU_VALOR_PARCELA_PAGO . " is null";
        $deleta->Deletar(ParcelamentoEntidade::TABELA, $where);
        return $deleta->getResult();
    }

}