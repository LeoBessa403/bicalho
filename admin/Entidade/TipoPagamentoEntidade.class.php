<?php

/**
 * TipoPagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class TipoPagamentoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TIPO_PAGAMENTO';
	const ENTIDADE = 'TipoPagamentoEntidade';
	const CHAVE = CO_TIPO_PAGAMENTO;

	private $co_tipo_pagamento;
	private $ds_tipo_pagamento;
	private $sg_tipo_pagamento;
	private $co_pagamento;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_TIPO_PAGAMENTO,
			DS_TIPO_PAGAMENTO,
			SG_TIPO_PAGAMENTO,
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
	* @return int $co_tipo_pagamento
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
	* @return mixed $ds_tipo_pagamento
     */
	public function getDsTipoPagamento()
    {
        return $this->ds_tipo_pagamento;
    }

	/**
	* @param $ds_tipo_pagamento
     * @return mixed
     */
	public function setDsTipoPagamento($ds_tipo_pagamento)
    {
        return $this->ds_tipo_pagamento = $ds_tipo_pagamento;
    }

	/**
	* @return mixed $sg_tipo_pagamento
     */
	public function getSgTipoPagamento()
    {
        return $this->sg_tipo_pagamento;
    }

	/**
	* @param $sg_tipo_pagamento
     * @return mixed
     */
	public function setSgTipoPagamento($sg_tipo_pagamento)
    {
        return $this->sg_tipo_pagamento = $sg_tipo_pagamento;
    }

	/**
	* @return PagamentoEntidade $co_pagamento
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

}