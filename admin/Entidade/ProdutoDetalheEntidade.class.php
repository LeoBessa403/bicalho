<?php

/**
 * ProdutoDetalhe.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProdutoDetalheEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PRODUTO_DETALHE';
	const ENTIDADE = 'ProdutoDetalheEntidade';
	const CHAVE = CO_PRODUTO_DETALHE;

	private $co_produto_detalhe;
	private $nu_estoque_baixo;
	private $nu_preco_venda;
    private $nu_estoque;
	private $nu_valor_lucro;
	private $nu_porc_valor_lucro;
	private $nu_valor_desconto_maximo;
	private $nu_porc_desc_max;
	private $nu_preco_atacado;
	private $st_destaque;
	private $nu_quantidade_atacado;
	private $dt_cadastro;
	private $co_usuario;
	private $co_produto;
	private $co_produto_destaque;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PRODUTO_DETALHE,
			NU_ESTOQUE_BAIXO,
			NU_PRECO_VENDA,
			NU_VALOR_LUCRO,
			NU_PORC_VALOR_LUCRO,
            NU_ESTOQUE,
			NU_VALOR_DESCONTO_MAXIMO,
			NU_PORC_DESC_MAX,
			NU_PRECO_ATACADO,
            ST_DESTAQUE,
			NU_QUANTIDADE_ATACADO,
			DT_CADASTRO,
			CO_USUARIO,
			CO_PRODUTO,
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
	* @return int $co_produto_detalhe
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

	/**
	* @return mixed $nu_estoque_baixo
     */
	public function getNuEstoqueBaixo()
    {
        return $this->nu_estoque_baixo;
    }

	/**
	* @param $nu_estoque_baixo
     * @return mixed
     */
	public function setNuEstoqueBaixo($nu_estoque_baixo)
    {
        return $this->nu_estoque_baixo = $nu_estoque_baixo;
    }

	/**
	* @return mixed $nu_preco_venda
     */
	public function getNuPrecoVenda()
    {
        return $this->nu_preco_venda;
    }

	/**
	* @param $nu_preco_venda
     * @return mixed
     */
	public function setNuPrecoVenda($nu_preco_venda)
    {
        return $this->nu_preco_venda = $nu_preco_venda;
    }

	/**
	* @return mixed $nu_valor_lucro
     */
	public function getNuValorLucro()
    {
        return $this->nu_valor_lucro;
    }

	/**
	* @param $nu_valor_lucro
     * @return mixed
     */
	public function setNuValorLucro($nu_valor_lucro)
    {
        return $this->nu_valor_lucro = $nu_valor_lucro;
    }

	/**
	* @return mixed $nu_porc_valor_lucro
     */
	public function getNuPorcValorLucro()
    {
        return $this->nu_porc_valor_lucro;
    }

	/**
	* @param $nu_porc_valor_lucro
     * @return mixed
     */
	public function setNuPorcValorLucro($nu_porc_valor_lucro)
    {
        return $this->nu_porc_valor_lucro = $nu_porc_valor_lucro;
    }

	/**
	* @return mixed $nu_valor_desconto_maximo
     */
	public function getNuValorDescontoMaximo()
    {
        return $this->nu_valor_desconto_maximo;
    }

	/**
	* @param $nu_valor_desconto_maximo
     * @return mixed
     */
	public function setNuValorDescontoMaximo($nu_valor_desconto_maximo)
    {
        return $this->nu_valor_desconto_maximo = $nu_valor_desconto_maximo;
    }

	/**
	* @return mixed $nu_porc_desc_max
     */
	public function getNuPorcDescMax()
    {
        return $this->nu_porc_desc_max;
    }

	/**
	* @param $nu_porc_desc_max
     * @return mixed
     */
	public function setNuPorcDescMax($nu_porc_desc_max)
    {
        return $this->nu_porc_desc_max = $nu_porc_desc_max;
    }

	/**
	* @return mixed $nu_preco_atacado
     */
	public function getNuPrecoAtacado()
    {
        return $this->nu_preco_atacado;
    }

	/**
	* @param $nu_preco_atacado
     * @return mixed
     */
	public function setNuPrecoAtacado($nu_preco_atacado)
    {
        return $this->nu_preco_atacado = $nu_preco_atacado;
    }

	/**
	* @return mixed $nu_quantidade_atacado
     */
	public function getNuQuantidadeAtacado()
    {
        return $this->nu_quantidade_atacado;
    }

	/**
	* @param $nu_quantidade_atacado
     * @return mixed
     */
	public function setNuQuantidadeAtacado($nu_quantidade_atacado)
    {
        return $this->nu_quantidade_atacado = $nu_quantidade_atacado;
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
     * @param $co_produto_destaque
     * @return mixed
     */
	public function setCoProdutoDestaque($co_produto_destaque)
    {
        return $this->co_produto_destaque = $co_produto_destaque;
    }

    /**
     * @return mixed $nu_estoque
     */
    public function getNuEstoque()
    {
        return $this->nu_estoque;
    }

    /**
     * @param $nu_estoque
     * @return mixed
     */
    public function setNuEstoque($nu_estoque)
    {
        return $this->nu_estoque = $nu_estoque;
    }

    /**
     * @return mixed
     */
    public function getStDestaque()
    {
        return $this->st_destaque;
    }

    /**
     * @param mixed $st_destaque
     */
    public function setStDestaque($st_destaque)
    {
        $this->st_destaque = $st_destaque;
    }

}