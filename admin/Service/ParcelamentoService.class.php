<?php

/**
 * ParcelamentoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  ParcelamentoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(ParcelamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New ParcelamentoModel();
    }

    public function fazerParcelamento($nuDeparcelas, PagamentoEntidade $pagamento)
    {
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);

        $valorPago = 0;
        $qtdParcelas = 0;
        $retorno = null;
        /** @var ParcelamentoEntidade $parcela */
        foreach ($pagamento->getCoParcelamento() as $parcela) {
            if ($parcela->getNuValorParcelaPago()) {
                $valorPago = $valorPago + $parcela->getNuValorParcelaPago();
                $qtdParcelas++;
            }
        }
        $valorInscricao = $pagamentoService->pegaValorInscricao($pagamento);

        $PDO->beginTransaction();
        $parc = [
            CO_PAGAMENTO => $pagamento->getCoPagamento()
        ];
        $this->DeletaQuando($parc);
        for ($i = $qtdParcelas; $i < $nuDeparcelas; $i++) {
            $novaParcela = array(
                NU_PARCELA => $i + 1,
                NU_VALOR_PARCELA => (($valorInscricao - $valorPago) / ($nuDeparcelas - $qtdParcelas)),
                DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                CO_TIPO_PAGAMENTO => TipoPagamentoEnum::DINHEIRO,
                CO_PAGAMENTO => $pagamento->getCoPagamento(),
            );
            $retorno = $this->Salva($novaParcela);
        }
        if ($retorno) {
            $PDO->commit();
        } else {
            $retorno[MSG] = 'Não foi possível Salvar o Parcelamento';
            $PDO->rollBack();
        }
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