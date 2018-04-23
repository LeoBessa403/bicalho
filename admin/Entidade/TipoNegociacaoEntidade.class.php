<?php

/**
 * TipoNegociacao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class TipoNegociacaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TIPO_NEGOCIACAO';
	const ENTIDADE = 'TipoNegociacaoEntidade';
	const CHAVE = CO_TIPO_NEGOCIACAO;

	private $co_tipo_negociacao;
	private $no_tipo_negociacao;
	private $sg_tipo_negociacao;
	private $co_negociacao;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_TIPO_NEGOCIACAO,
			NO_TIPO_NEGOCIACAO,
			SG_TIPO_NEGOCIACAO,
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
	* @return int $co_tipo_negociacao
     */
	public function getCoTipoNegociacao()
    {
        return $this->co_tipo_negociacao;
    }

	/**
	* @param $co_tipo_negociacao
     * @return mixed
     */
	public function setCoTipoNegociacao($co_tipo_negociacao)
    {
        return $this->co_tipo_negociacao = $co_tipo_negociacao;
    }

	/**
	* @return mixed $no_tipo_negociacao
     */
	public function getNoTipoNegociacao()
    {
        return $this->no_tipo_negociacao;
    }

	/**
	* @param $no_tipo_negociacao
     * @return mixed
     */
	public function setNoTipoNegociacao($no_tipo_negociacao)
    {
        return $this->no_tipo_negociacao = $no_tipo_negociacao;
    }

	/**
	* @return mixed $sg_tipo_negociacao
     */
	public function getSgTipoNegociacao()
    {
        return $this->sg_tipo_negociacao;
    }

	/**
	* @param $sg_tipo_negociacao
     * @return mixed
     */
	public function setSgTipoNegociacao($sg_tipo_negociacao)
    {
        return $this->sg_tipo_negociacao = $sg_tipo_negociacao;
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

}