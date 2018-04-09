<?php

/**
 * ImagemEvento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AgendaEventoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_AGENDA_EVENTO';
    const ENTIDADE = 'AgendaEventoEntidade';
    const CHAVE = CO_AGENDA_EVENTO;

    private $co_agenda_evento;
    private $co_evento;
    private $co_agenda;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_AGENDA_EVENTO,
            CO_AGENDA,
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
     * @return int $co_agenda_evento
     */
    public function getCoAgendaEvento()
    {
        return $this->co_agenda_evento;
    }

    /**
     * @param $co_agenda_evento
     * @return mixed
     */
    public function setCoAgendaEvento($co_agenda_evento)
    {
        return $this->co_agenda_evento = $co_agenda_evento;
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

}