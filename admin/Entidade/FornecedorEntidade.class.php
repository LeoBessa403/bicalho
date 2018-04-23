<?php

/**
 * Fornecedor.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FornecedorEntidade extends AbstractEntidade
{
	const TABELA = 'TB_FORNECEDOR';
	const ENTIDADE = 'FornecedorEntidade';
	const CHAVE = CO_FORNECEDOR;

	private $co_fornecedor;
	private $ds_observacao;
	private $dt_cadastro;
	private $st_status;
	private $co_representante;
	private $co_pessoa;
	private $co_empresa;
	private $co_fabricante;
	private $co_negociacao;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_FORNECEDOR,
			DS_OBSERVACAO,
			DT_CADASTRO,
			ST_STATUS,
			CO_REPRESENTANTE,
			CO_PESSOA,
			CO_EMPRESA,
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
	* @return int $co_fornecedor
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
	* @return RepresentanteEntidade $co_representante
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
	* @return EmpresaEntidade $co_empresa
     */
	public function getCoEmpresa()
    {
        return $this->co_empresa;
    }

	/**
	* @param $co_empresa
     * @return mixed
     */
	public function setCoEmpresa($co_empresa)
    {
        return $this->co_empresa = $co_empresa;
    }

	/**
	* @return FabricanteEntidade $co_fabricante
     */
	public function getCoFabricante()
    {
        return $this->co_fabricante;
    }

	/**
     * @param $co_fabricante
     * @return mixed
     */
	public function setCoFabricante($co_fabricante)
    {
        return $this->co_fabricante = $co_fabricante;
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