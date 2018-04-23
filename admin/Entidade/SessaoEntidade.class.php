<?php

/**
 * Sessao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class SessaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SESSAO';
	const ENTIDADE = 'SessaoEntidade';
	const CHAVE = CO_SESSAO;

	private $co_sessao;
	private $ds_sessao;
	private $co_categoria;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_SESSAO,
			DS_SESSAO,
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
	* @return int $co_sessao
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
	* @return mixed $ds_sessao
     */
	public function getDsSessao()
    {
        return $this->ds_sessao;
    }

	/**
	* @param $ds_sessao
     * @return mixed
     */
	public function setDsSessao($ds_sessao)
    {
        return $this->ds_sessao = $ds_sessao;
    }

	/**
	* @return CategoriaEntidade $co_categoria
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

}