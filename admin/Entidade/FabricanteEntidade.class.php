<?php

/**
 * Fabricante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FabricanteEntidade extends AbstractEntidade
{
	const TABELA = 'TB_FABRICANTE';
	const ENTIDADE = 'FabricanteEntidade';
	const CHAVE = CO_FABRICANTE;

	private $co_fabricante;
	private $dt_cadastro;
	private $no_fabricante;
	private $co_fornecedor;
	private $co_produto;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_FABRICANTE,
			DT_CADASTRO,
			NO_FABRICANTE,
			CO_FORNECEDOR,
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
	* @return int $co_fabricante
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
	* @return mixed $no_fabricante
     */
	public function getNoFabricante()
    {
        return $this->no_fabricante;
    }

	/**
	* @param $no_fabricante
     * @return mixed
     */
	public function setNoFabricante($no_fabricante)
    {
        return $this->no_fabricante = $no_fabricante;
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