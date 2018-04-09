<?php

/**
 * ImagemEvento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ImagemEventoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_IMAGEM_EVENTO';
	const ENTIDADE = 'ImagemEventoEntidade';
	const CHAVE = CO_IMAGEM_EVENTO;

	private $co_imagem_evento;
	private $co_evento;
	private $co_imagem;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_IMAGEM_EVENTO,
			CO_EVENTO,
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
	* @return int $co_imagem_evento
     */
	public function getCoImagemEvento()
    {
        return $this->co_imagem_evento;
    }

	/**
	* @param $co_imagem_evento
     * @return mixed
     */
	public function setCoImagemEvento($co_imagem_evento)
    {
        return $this->co_imagem_evento = $co_imagem_evento;
    }

	/**
	* @return EventoEntidade $co_evento
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