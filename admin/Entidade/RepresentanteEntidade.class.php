<?php

/**
 * Representante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class RepresentanteEntidade extends AbstractEntidade
{
	const TABELA = 'TB_REPRESENTANTE';
	const ENTIDADE = 'RepresentanteEntidade';
	const CHAVE = CO_REPRESENTANTE;

	private $co_representante;
	private $dt_cadastro;
	private $st_status;
	private $co_pessoa;
	private $co_fornecedor;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_REPRESENTANTE,
			DT_CADASTRO,
			ST_STATUS,
			CO_PESSOA,
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
	* @return int $co_representante
     */
	public function getCoRepresentante()
    {
        return $this->co_representante;
    }

	/**
	* @param $co_representante
     * @return mixed
     */
	public function setCoRepresentante($co_representante)
    {
        return $this->co_representante = $co_representante;
    }

	/**
	* @return mixed $dt_cadastro
     */
	public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

	/**
	* @param $dt_cadastro
     * @return mixed
     */
	public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

	/**
	* @return mixed $st_status
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

	/**
	* @return FornecedorEntidade $co_fornecedor
     */
	public function getCoFornecedor()
    {
        return $this->co_fornecedor;
    }

	/**
     * @param $co_fornecedor
     * @return mixed
     */
	public function setCoFornecedor($co_fornecedor)
    {
        return $this->co_fornecedor = $co_fornecedor;
    }

}