<?php

/**
 * Funcionario.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FuncionarioEntidade extends AbstractEntidade
{
	const TABELA = 'TB_FUNCIONARIO';
	const ENTIDADE = 'FuncionarioEntidade';
	const CHAVE = CO_FUNCIONARIO;

	private $co_funcionario;
	private $ds_cargo;
	private $dt_admissao;
	private $dt_demissao;
	private $dt_cadastro;
	private $nu_carteira;
	private $nu_salario;
	private $nu_horas;
	private $st_status;
	private $co_imagem;
	private $co_pessoa;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_FUNCIONARIO,
			DS_CARGO,
			DT_ADMISSAO,
			DT_DEMISSAO,
			DT_CADASTRO,
			NU_CARTEIRA,
			NU_SALARIO,
			NU_HORAS,
			ST_STATUS,
			CO_IMAGEM,
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
	* @return int $co_funcionario
     */
	public function getCoFuncionario()
    {
        return $this->co_funcionario;
    }

	/**
	* @param $co_funcionario
     * @return mixed
     */
	public function setCoFuncionario($co_funcionario)
    {
        return $this->co_funcionario = $co_funcionario;
    }

	/**
	* @return mixed $ds_cargo
     */
	public function getDsCargo()
    {
        return $this->ds_cargo;
    }

	/**
	* @param $ds_cargo
     * @return mixed
     */
	public function setDsCargo($ds_cargo)
    {
        return $this->ds_cargo = $ds_cargo;
    }

	/**
	* @return mixed $dt_admissao
     */
	public function getDtAdmissao()
    {
        return $this->dt_admissao;
    }

	/**
	* @param $dt_admissao
     * @return mixed
     */
	public function setDtAdmissao($dt_admissao)
    {
        return $this->dt_admissao = $dt_admissao;
    }

	/**
	* @return mixed $dt_demissao
     */
	public function getDtDemissao()
    {
        return $this->dt_demissao;
    }

	/**
	* @param $dt_demissao
     * @return mixed
     */
	public function setDtDemissao($dt_demissao)
    {
        return $this->dt_demissao = $dt_demissao;
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
	* @return mixed $nu_carteira
     */
	public function getNuCarteira()
    {
        return $this->nu_carteira;
    }

	/**
	* @param $nu_carteira
     * @return mixed
     */
	public function setNuCarteira($nu_carteira)
    {
        return $this->nu_carteira = $nu_carteira;
    }

	/**
	* @return mixed $nu_salario
     */
	public function getNuSalario()
    {
        return $this->nu_salario;
    }

	/**
	* @param $nu_salario
     * @return mixed
     */
	public function setNuSalario($nu_salario)
    {
        return $this->nu_salario = $nu_salario;
    }

	/**
	* @return mixed $nu_horas
     */
	public function getNuHoras()
    {
        return $this->nu_horas;
    }

	/**
	* @param $nu_horas
     * @return mixed
     */
	public function setNuHoras($nu_horas)
    {
        return $this->nu_horas = $nu_horas;
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
	* @return ImagemEntidade $co_imagem
     */
	public function getCoImagem()
    {
        return $this->co_imagem;
    }

	/**
	* @param $co_imagem
     * @return mixed
     */
	public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
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