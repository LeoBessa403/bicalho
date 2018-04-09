<?php

/**
 * AgendaPerfil.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class AgendaPerfilEntidade extends AbstractEntidade
{
	const TABELA = 'TB_AGENDA_PERFIL';
	const ENTIDADE = 'AgendaPerfilEntidade';
	const CHAVE = 'co_agenda_perfil';

	private $co_agenda;
	private $co_perfil;


	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_AGENDA,
			CO_PERFIL,
		];
    }

	/**
	* @return $relacionamentos
     */
	public static function getRelacionamentos() {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return AgendaEntidade $co_agenda
     */
	public function getCoAgenda()
    {
        return $this->co_agenda;
    }

	/**
	* @param $co_agenda
     * @return mixed
     */
	public function setCoAgenda($co_agenda)
    {
        return $this->co_agenda = $co_agenda;
    }

	/**
	* @return PerfilEntidade $co_perfil
     */
	public function getCoPerfil()
    {
        return $this->co_perfil;
    }

	/**
	* @param $co_perfil
     * @return mixed
     */
	public function setCoPerfil($co_perfil)
    {
        return $this->co_perfil = $co_perfil;
    }

}