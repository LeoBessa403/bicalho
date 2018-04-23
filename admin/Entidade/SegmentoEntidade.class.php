<?php

/**
 * Segmento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class SegmentoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SEGMENTO';
	const ENTIDADE = 'SegmentoEntidade';
	const CHAVE = CO_SEGMENTO;

	private $co_segmento;
	private $ds_segmento;
	private $co_categoria;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_SEGMENTO,
			DS_SEGMENTO,
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
	* @return int $co_segmento
     */
	public function getCoSegmento()
    {
        return $this->co_segmento;
    }

	/**
	* @param $co_segmento
     * @return mixed
     */
	public function setCoSegmento($co_segmento)
    {
        return $this->co_segmento = $co_segmento;
    }

	/**
	* @return mixed $ds_segmento
     */
	public function getDsSegmento()
    {
        return $this->ds_segmento;
    }

	/**
	* @param $ds_segmento
     * @return mixed
     */
	public function setDsSegmento($ds_segmento)
    {
        return $this->ds_segmento = $ds_segmento;
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