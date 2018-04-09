<?php

/**
 * CategoriaEvento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CategoriaEventoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CATEGORIA_EVENTO';
	const ENTIDADE = 'CategoriaEventoEntidade';
	const CHAVE = CO_CATEGORIA_EVENTO;

	private $co_categoria_evento;
	private $no_categoria_evento;
	private $co_evento;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_CATEGORIA_EVENTO,
			NO_CATEGORIA_EVENTO,
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
	* @return int $co_categoria_evento
     */
	public function getCoCategoriaEvento()
    {
        return $this->co_categoria_evento;
    }

	/**
	* @param $co_categoria_evento
     * @return mixed
     */
	public function setCoCategoriaEvento($co_categoria_evento)
    {
        return $this->co_categoria_evento = $co_categoria_evento;
    }

	/**
	* @return mixed $no_categoria_evento
     */
	public function getNoCategoriaEvento()
    {
        return $this->no_categoria_evento;
    }

	/**
	* @param $no_categoria_evento
     * @return mixed
     */
	public function setNoCategoriaEvento($no_categoria_evento)
    {
        return $this->no_categoria_evento = $no_categoria_evento;
    }

    /**
     * @return EventoEntidade mixed
     */
    public function getCoEvento()
    {
        return $this->co_evento;
    }

    /**
     * @param $co_evento
     * @return mixed
     */
    public function setCoEvento($co_evento)
    {
        return $this->co_evento = $co_evento;
    }

}