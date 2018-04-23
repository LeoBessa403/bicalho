<?php

/**
 * Imagem.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ImagemEntidade extends AbstractEntidade
{
	const TABELA = 'TB_IMAGEM';
	const ENTIDADE = 'ImagemEntidade';
	const CHAVE = CO_IMAGEM;

	private $co_imagem;
	private $ds_caminho;
	private $co_empresa;
	private $co_funcionario;
	private $co_pessoa;
	private $co_produto_destaque;
	private $co_produto_imagem;
	private $co_sugestao;
	private $co_usuario;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_IMAGEM,
			DS_CAMINHO,
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
	* @return int $co_imagem
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
	* @return mixed $ds_caminho
     */
	public function getDsCaminho()
    {
        return $this->ds_caminho;
    }

	/**
	* @param $ds_caminho
     * @return mixed
     */
	public function setDsCaminho($ds_caminho)
    {
        return $this->ds_caminho = $ds_caminho;
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
	* @return ProdutoDestaqueEntidade $co_produto_destaque
     */
	public function getCoProdutoDestaque()
    {
        return $this->co_produto_destaque;
    }

	/**
     * @param $co_produto_destaque
     * @return mixed
     */
	public function setCoProdutoDestaque($co_produto_destaque)
    {
        return $this->co_produto_destaque = $co_produto_destaque;
    }

	/**
	* @return ProdutoImagemEntidade $co_produto_imagem
     */
	public function getCoProdutoImagem()
    {
        return $this->co_produto_imagem;
    }

	/**
     * @param $co_produto_imagem
     * @return mixed
     */
	public function setCoProdutoImagem($co_produto_imagem)
    {
        return $this->co_produto_imagem = $co_produto_imagem;
    }

	/**
	* @return SugestaoEntidade $co_sugestao
     */
	public function getCoSugestao()
    {
        return $this->co_sugestao;
    }

	/**
     * @param $co_sugestao
     * @return mixed
     */
	public function setCoSugestao($co_sugestao)
    {
        return $this->co_sugestao = $co_sugestao;
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