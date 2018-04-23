<?php

/**
 * ProdutoImagem.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProdutoImagemEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PRODUTO_IMAGEM';
	const ENTIDADE = 'ProdutoImagemEntidade';
	const CHAVE = CO_PRODUTO_IMAGEM;

	private $co_produto_imagem;
	private $co_produto;
	private $co_imagem;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PRODUTO_IMAGEM,
			CO_PRODUTO,
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
	* @return int $co_produto_imagem
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

}