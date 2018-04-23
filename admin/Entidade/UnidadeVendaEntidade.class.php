<?php

/**
 * UnidadeVenda.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class UnidadeVendaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_UNIDADE_VENDA';
	const ENTIDADE = 'UnidadeVendaEntidade';
	const CHAVE = CO_UNIDADE_VENDA;

	private $co_unidade_venda;
	private $no_unidade_venda;
	private $sg_unidade_venda;
	private $co_produto;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_UNIDADE_VENDA,
			NO_UNIDADE_VENDA,
			SG_UNIDADE_VENDA,
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
	* @return int $co_unidade_venda
     */
	public function getCoUnidadeVenda()
    {
        return $this->co_unidade_venda;
    }

	/**
	* @param $co_unidade_venda
     * @return mixed
     */
	public function setCoUnidadeVenda($co_unidade_venda)
    {
        return $this->co_unidade_venda = $co_unidade_venda;
    }

	/**
	* @return mixed $no_unidade_venda
     */
	public function getNoUnidadeVenda()
    {
        return $this->no_unidade_venda;
    }

	/**
	* @param $no_unidade_venda
     * @return mixed
     */
	public function setNoUnidadeVenda($no_unidade_venda)
    {
        return $this->no_unidade_venda = $no_unidade_venda;
    }

	/**
	* @return mixed $sg_unidade_venda
     */
	public function getSgUnidadeVenda()
    {
        return $this->sg_unidade_venda;
    }

	/**
	* @param $sg_unidade_venda
     * @return mixed
     */
	public function setSgUnidadeVenda($sg_unidade_venda)
    {
        return $this->sg_unidade_venda = $sg_unidade_venda;
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