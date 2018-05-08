<?php

/**
 * ProdutoDestaque.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProdutoDestaqueEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PRODUTO_DESTAQUE';
	const ENTIDADE = 'ProdutoDestaqueEntidade';
	const CHAVE = CO_PRODUTO_DESTAQUE;

	private $co_produto_destaque;
	private $dt_inicio;
	private $dt_fim;
	private $co_produto_detalhe;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PRODUTO_DESTAQUE,
			DT_INICIO,
			DT_FIM,
			CO_PRODUTO_DETALHE,
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
	* @return int $co_produto_destaque
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
	* @return mixed $dt_inicio
     */
	public function getDtInicio()
    {
        return $this->dt_inicio;
    }

	/**
	* @param $dt_inicio
     * @return mixed
     */
	public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

	/**
	* @return mixed $dt_fim
     */
	public function getDtFim()
    {
        return $this->dt_fim;
    }

	/**
	* @param $dt_fim
     * @return mixed
     */
	public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
    }

	/**
	* @return ProdutoDetalheEntidade $co_produto_detalhe
     */
	public function getCoProdutoDetalhe()
    {
        return $this->co_produto_detalhe;
    }

	/**
	* @param $co_produto_detalhe
     * @return mixed
     */
	public function setCoProdutoDetalhe($co_produto_detalhe)
    {
        return $this->co_produto_detalhe = $co_produto_detalhe;
    }

}