<?php

/**
 * Pagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PagamentoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PAGAMENTO';
	const ENTIDADE = 'PagamentoEntidade';
	const CHAVE = CO_PAGAMENTO;

	private $co_pagamento;
	private $nu_total;
	private $nu_valor_pago;
	private $nu_parcelas;
	private $tp_situacao;
	private $dt_realizado;
	private $ds_observacao;
	private $co_tipo_pagamento;
	private $co_negociacao;
	private $co_parcelamento;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PAGAMENTO,
			NU_TOTAL,
			NU_VALOR_PAGO,
			NU_PARCELAS,
			TP_SITUACAO,
			DT_REALIZADO,
			DS_OBSERVACAO,
			CO_TIPO_PAGAMENTO,
			CO_NEGOCIACAO,
		];
    }

	/**
	* @return array $relacionamentos
     */
	public static function getRelacionamentos() 
        {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return int $co_pagamento
     */
	public function getCoPagamento()
    {
        return $this->co_pagamento;
    }

	/**
	* @param $co_pagamento
     * @return mixed
     */
	public function setCoPagamento($co_pagamento)
    {
        return $this->co_pagamento = $co_pagamento;
    }

	/**
	* @return mixed $nu_total
     */
	public function getNuTotal()
    {
        return $this->nu_total;
    }

	/**
	* @param $nu_total
     * @return mixed
     */
	public function setNuTotal($nu_total)
    {
        return $this->nu_total = $nu_total;
    }

	/**
	* @return mixed $nu_valor_pago
     */
	public function getNuValorPago()
    {
        return $this->nu_valor_pago;
    }

	/**
	* @param $nu_valor_pago
     * @return mixed
     */
	public function setNuValorPago($nu_valor_pago)
    {
        return $this->nu_valor_pago = $nu_valor_pago;
    }

	/**
	* @return mixed $nu_parcelas
     */
	public function getNuParcelas()
    {
        return $this->nu_parcelas;
    }

	/**
	* @param $nu_parcelas
     * @return mixed
     */
	public function setNuParcelas($nu_parcelas)
    {
        return $this->nu_parcelas = $nu_parcelas;
    }

	/**
	* @return mixed $tp_situacao
     */
	public function getTpSituacao()
    {
        return $this->tp_situacao;
    }

	/**
	* @param $tp_situacao
     * @return mixed
     */
	public function setTpSituacao($tp_situacao)
    {
        return $this->tp_situacao = $tp_situacao;
    }

	/**
	* @return mixed $dt_realizado
     */
	public function getDtRealizado()
    {
        return $this->dt_realizado;
    }

	/**
	* @param $dt_realizado
     * @return mixed
     */
	public function setDtReualizado($dt_realizado)
    {
        return $this->dt_realizado = $dt_realizado;
    }

	/**
	* @return mixed $ds_observacao
     */
	public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

	/**
	* @param $ds_observacao
     * @return mixed
     */
	public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
    }

	/**
	* @return TipoPagamentoEntidade $co_tipo_pagamento
     */
	public function getCoTipoPagamento()
    {
        return $this->co_tipo_pagamento;
    }

	/**
	* @param $co_tipo_pagamento
     * @return mixed
     */
	public function setCoTipoPagamento($co_tipo_pagamento)
    {
        return $this->co_tipo_pagamento = $co_tipo_pagamento;
    }

	/**
	* @return NegociacaoEntidade $co_negociacao
     */
	public function getCoNegociacao()
    {
        return $this->co_negociacao;
    }

	/**
	* @param $co_negociacao
     * @return mixed
     */
	public function setCoNegociacao($co_negociacao)
    {
        return $this->co_negociacao = $co_negociacao;
    }

	/**
	* @return ParcelamentoEntidade $co_parcelamento
     */
	public function getCoParcelamento()
    {
        return $this->co_parcelamento;
    }

	/**
     * @param $co_parcelamento
     * @return mixed
     */
	public function setCoParcelamento($co_parcelamento)
    {
        return $this->co_parcelamento = $co_parcelamento;
    }

}