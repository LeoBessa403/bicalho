<?php

/**
 * Pessoa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PessoaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PESSOA';
	const ENTIDADE = 'PessoaEntidade';
	const CHAVE = CO_PESSOA;

	private $co_pessoa;
	private $nu_cpf;
	private $no_pessoa;
	private $nu_rg;
	private $dt_cadastro;
	private $dt_nascimento;
	private $st_sexo;
	private $co_endereco;
	private $co_contato;
	private $co_imagem;
	private $co_cliente;
	private $co_empresa;
	private $co_fornecedor;
	private $co_funcionario;
	private $co_representante;
	private $co_usuario;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PESSOA,
			NU_CPF,
			NO_PESSOA,
			NU_RG,
			DT_CADASTRO,
			DT_NASCIMENTO,
			ST_SEXO,
			CO_ENDERECO,
			CO_CONTATO,
			CO_IMAGEM,
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
	* @return int $co_pessoa
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
	* @return mixed $nu_cpf
     */
	public function getNuCpf()
    {
        return $this->nu_cpf;
    }

	/**
	* @param $nu_cpf
     * @return mixed
     */
	public function setNuCpf($nu_cpf)
    {
        return $this->nu_cpf = $nu_cpf;
    }

	/**
	* @return mixed $no_pessoa
     */
	public function getNoPessoa()
    {
        return $this->no_pessoa;
    }

	/**
	* @param $no_pessoa
     * @return mixed
     */
	public function setNoPessoa($no_pessoa)
    {
        return $this->no_pessoa = $no_pessoa;
    }

	/**
	* @return mixed $nu_rg
     */
	public function getNuRg()
    {
        return $this->nu_rg;
    }

	/**
	* @param $nu_rg
     * @return mixed
     */
	public function setNuRg($nu_rg)
    {
        return $this->nu_rg = $nu_rg;
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
	* @return mixed $dt_nascimento
     */
	public function getDtNascimento()
    {
        return $this->dt_nascimento;
    }

	/**
	* @param $dt_nascimento
     * @return mixed
     */
	public function setDtNascimento($dt_nascimento)
    {
        return $this->dt_nascimento = $dt_nascimento;
    }

	/**
	* @return mixed $st_sexo
     */
	public function getStSexo()
    {
        return $this->st_sexo;
    }

	/**
	* @param $st_sexo
     * @return mixed
     */
	public function setStSexo($st_sexo)
    {
        return $this->st_sexo = $st_sexo;
    }

	/**
	* @return EnderecoEntidade $co_endereco
     */
	public function getCoEndereco()
    {
        return $this->co_endereco;
    }

	/**
	* @param $co_endereco
     * @return mixed
     */
	public function setCoEndereco($co_endereco)
    {
        return $this->co_endereco = $co_endereco;
    }

	/**
	* @return ContatoEntidade $co_contato
     */
	public function getCoContato()
    {
        return $this->co_contato;
    }

	/**
	* @param $co_contato
     * @return mixed
     */
	public function setCoContato($co_contato)
    {
        return $this->co_contato = $co_contato;
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
	* @return ClienteEntidade $co_cliente
     */
	public function getCoCliente()
    {
        return $this->co_cliente;
    }

	/**
     * @param $co_cliente
     * @return mixed
     */
	public function setCoCliente($co_cliente)
    {
        return $this->co_cliente = $co_cliente;
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

	/**
	* @return FuncionarioEntidade $co_funcionario
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
	* @return UsuarioEntidade $co_usuario
     */
	public function getCoUsuario()
    {
        return $this->co_usuario;
    }

	/**
     * @param $co_usuario
     * @return mixed
     */
	public function setCoUsuario($co_usuario)
    {
        return $this->co_usuario = $co_usuario;
    }

}