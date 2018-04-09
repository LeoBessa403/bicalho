<?php

/**
 * ComissaoEvento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ComissaoEventoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_COMISSAO_EVENTO';
	const ENTIDADE = 'ComissaoEventoEntidade';
	const CHAVE = CO_COMISSAO_EVENTO;

	private $co_comissao_evento;
	private $co_usuario;
	private $co_evento;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_COMISSAO_EVENTO,
			CO_USUARIO,
			CO_EVENTO,
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
	* @return int $co_comissao_evento
     */
	public function getCoComissaoEvento()
    {
        return $this->co_comissao_evento;
    }

	/**
	* @param $co_comissao_evento
     * @return mixed
     */
	public function setCoComissaoEvento($co_comissao_evento)
    {
        return $this->co_comissao_evento = $co_comissao_evento;
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

}