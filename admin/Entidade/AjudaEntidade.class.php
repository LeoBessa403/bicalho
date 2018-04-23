<?php

/**
 * Ajuda.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AjudaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_AJUDA';
	const ENTIDADE = 'AjudaEntidade';
	const CHAVE = CO_AJUDA;

	private $co_ajuda;
	private $ds_ajuda;
	private $co_funcionalidade;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_AJUDA,
			DS_AJUDA,
			CO_FUNCIONALIDADE,
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
	* @return int $co_ajuda
     */
	public function getCoAjuda()
    {
        return $this->co_ajuda;
    }

	/**
	* @param $co_ajuda
     * @return mixed
     */
	public function setCoAjuda($co_ajuda)
    {
        return $this->co_ajuda = $co_ajuda;
    }

	/**
	* @return mixed $ds_ajuda
     */
	public function getDsAjuda()
    {
        return $this->ds_ajuda;
    }

	/**
	* @param $ds_ajuda
     * @return mixed
     */
	public function setDsAjuda($ds_ajuda)
    {
        return $this->ds_ajuda = $ds_ajuda;
    }

	/**
	* @return FuncionalidadeEntidade $co_funcionalidade
     */
	public function getCoFuncionalidade()
    {
        return $this->co_funcionalidade;
    }

	/**
	* @param $co_funcionalidade
     * @return mixed
     */
	public function setCoFuncionalidade($co_funcionalidade)
    {
        return $this->co_funcionalidade = $co_funcionalidade;
    }

}