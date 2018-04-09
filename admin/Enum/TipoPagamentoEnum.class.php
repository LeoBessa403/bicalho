<?php

/**
 * Class TipoPagamento
 */
class TipoPagamentoEnum extends AbstractEnum
{
    const DINHEIRO = 1;
    const CARTAO_CREDITO = 2;
    const DEPOSITO = 3;

    public static $descricao = [
        TipoPagamentoEnum::DINHEIRO => 'Dinheiro',
        TipoPagamentoEnum::CARTAO_CREDITO => 'Cartão de Crédito',
        TipoPagamentoEnum::DEPOSITO => 'Depósito Bancário',
    ];
}
