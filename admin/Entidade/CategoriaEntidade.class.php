<?php

/**
 * Categoria.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CategoriaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CATEGORIA';
	const ENTIDADE = 'CategoriaEntidade';
	const CHAVE = CO_CATEGORIA;

	private $co_categoria;
	private $no_categoria;
	private $st_status;
	private $co_sessao;
	private $co_produto;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_CATEGORIA,
			NO_CATEGORIA,
			ST_STATUS,
			CO_SESSAO,
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
	* @return int $co_categoria
     */
	public function getCoCategoria()
    {
        return $this->co_categoria;
    }

	/**
	* @param $co_categoria
     * @return mixed
     */
	public function setCoCategoria($co_categoria)
    {
        return $this->co_categoria = $co_categoria;
    }

	/**
	* @return mixed $no_categoria
     */
	public function getNoCategoria()
    {
        return $this->no_categoria;
    }

	/**
	* @param $no_categoria
     * @return mixed
     */
	public function setNoCategoria($no_categoria)
    {
        return $this->no_categoria = $no_categoria;
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
	* @return SessaoEntidade $co_sessao
     */
	public function getCoSessao()
    {
        return $this->co_sessao;
    }

	/**
	* @param $co_sessao
     * @return mixed
     */
	public function setCoSessao($co_sessao)
    {
        return $this->co_sessao = $co_sessao;
    }

	/**
	* @return ProdutoEntidade $co_produto
     */
	public function getCoProduto()
    {
        return $this->co_produto;
    }

	/**
     * @param $co_produto
     * @return mixed
     */
	public function setCoProduto($co_produto)
    {
        return $this->co_produto = $co_produto;
    }

}