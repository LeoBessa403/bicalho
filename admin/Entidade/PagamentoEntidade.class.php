<?php

/**
 * Pagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
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
	private $ds_observacao;
	private $co_inscricao;
	private $co_parcelamento;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_PAGAMENTO,
			NU_TOTAL,
			NU_VALOR_PAGO,
			NU_PARCELAS,
			TP_SITUACAO,
			DS_OBSERVACAO,
			CO_INSCRICAO,
		];
    }

	/**
	* @return $relacionamentos
     */
	public static function getRelacionamentos() {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return $co_pagamento
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
	* @return $nu_total
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
	* @return $nu_valor_pago
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
	* @return $nu_parcelas
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
	* @return $tp_situacao
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
	* @return $ds_observacao
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
	* @return InscricaoEntidade $co_inscricao
     */
	public function getCoInscricao()
    {
        return $this->co_inscricao;
    }

	/**
	* @param $co_inscricao
     * @return mixed
     */
	public function setCoInscricao($co_inscricao)
    {
        return $this->co_inscricao = $co_inscricao;
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