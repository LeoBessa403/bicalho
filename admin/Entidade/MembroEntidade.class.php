<?php

/**
 * Membro.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class MembroEntidade extends AbstractEntidade
{
	const TABELA = 'TB_MEMBRO';
	const ENTIDADE = 'MembroEntidade';
	const CHAVE = CO_MEMBRO;

	private $co_membro;
	private $no_responsavel;
	private $st_estuda;
	private $st_trabalha;
	private $ds_conhecimento;
	private $st_status;
	private $st_batizado;
	private $st_eucaristia;
	private $st_crisma;
	private $co_pessoa;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_MEMBRO,
			NO_RESPONSAVEL,
			ST_ESTUDA,
			ST_TRABALHA,
			DS_CONHECIMENTO,
			ST_STATUS,
			ST_BATIZADO,
			ST_EUCARISTIA,
			ST_CRISMA,
			CO_PESSOA,
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
	* @return $co_membro
     */
	public function getCoMembro()
    {
        return $this->co_membro;
    }

	/**
	* @param $co_membro
     * @return mixed
     */
	public function setCoMembro($co_membro)
    {
        return $this->co_membro = $co_membro;
    }

	/**
	* @return $no_responsavel
     */
	public function getNoResponsavel()
    {
        return $this->no_responsavel;
    }

	/**
	* @param $no_responsavel
     * @return mixed
     */
	public function setNoResponsavel($no_responsavel)
    {
        return $this->no_responsavel = $no_responsavel;
    }

	/**
	* @return $st_estuda
     */
	public function getStEstuda()
    {
        return $this->st_estuda;
    }

	/**
	* @param $st_estuda
     * @return mixed
     */
	public function setStEstuda($st_estuda)
    {
        return $this->st_estuda = $st_estuda;
    }

	/**
	* @return $st_trabalha
     */
	public function getStTrabalha()
    {
        return $this->st_trabalha;
    }

	/**
	* @param $st_trabalha
     * @return mixed
     */
	public function setStTrabalha($st_trabalha)
    {
        return $this->st_trabalha = $st_trabalha;
    }

	/**
	* @return $ds_conhecimento
     */
	public function getDsConhecimento()
    {
        return $this->ds_conhecimento;
    }

	/**
	* @param $ds_conhecimento
     * @return mixed
     */
	public function setDsConhecimento($ds_conhecimento)
    {
        return $this->ds_conhecimento = $ds_conhecimento;
    }

	/**
	* @return $st_status
     */
	public function getStStatus()
    {
        return $this->st_status;
    }

	/**
	* @param $st_status
     * @return mixed
     */
	public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

	/**
	* @return $st_batizado
     */
	public function getStBatizado()
    {
        return $this->st_batizado;
    }

	/**
	* @param $st_batizado
     * @return mixed
     */
	public function setStBatizado($st_batizado)
    {
        return $this->st_batizado = $st_batizado;
    }

	/**
	* @return $st_eucaristia
     */
	public function getStEucaristia()
    {
        return $this->st_eucaristia;
    }

	/**
	* @param $st_eucaristia
     * @return mixed
     */
	public function setStEucaristia($st_eucaristia)
    {
        return $this->st_eucaristia = $st_eucaristia;
    }

	/**
	* @return $st_crisma
     */
	public function getStCrisma()
    {
        return $this->st_crisma;
    }

	/**
	* @param $st_crisma
     * @return mixed
     */
	public function setStCrisma($st_crisma)
    {
        return $this->st_crisma = $st_crisma;
    }

	/**
	* @return PessoaEntidade $co_pessoa
     */
	public function getCoPessoa()
    {
        return $this->co_pessoa;
    }

	/**
	* @param $co_pessoa
     * @return mixed
     */
	public function setCoPessoa($co_pessoa)
    {
        return $this->co_pessoa = $co_pessoa;
    }

}