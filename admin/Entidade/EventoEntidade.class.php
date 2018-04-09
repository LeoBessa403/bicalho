<?php

/**
 * Evento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class EventoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_EVENTO';
    const ENTIDADE = 'EventoEntidade';
    const CHAVE = CO_EVENTO;

    private $co_evento;
    private $dt_cadastro;
    private $co_categoria_evento;
    private $co_imagem;
    private $co_comissao_evento;
    private $co_imagem_evento;
    private $co_agenda;
    private $co_agenda_evento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_EVENTO,
            DT_CADASTRO,
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
     * @return int $co_evento
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
     * @return mixed
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param mixed $dt_cadastro
     */
    public function setDtCadastro($dt_cadastro)
    {
        $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return CategoriaEventoEntidade $co_categoria_evento
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
        $this->co_categoria_evento = $co_categoria_evento;
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
        $this->co_imagem = $co_imagem;
    }

    /**
     * @return ComissaoEventoEntidade $co_imagem
     */
    public function getCoComissaoEvento()
    {
        return $this->co_comissao_evento;
    }

    /**
     * @param mixed $co_comissao_evento
     */
    public function setCoComissaoEvento($co_comissao_evento)
    {
        $this->co_comissao_evento = $co_comissao_evento;
    }

    /**
     * @return ImagemEventoEntidade $co_imagem
     */
    public function getCoImagemEvento()
    {
        return $this->co_imagem_evento;
    }

    /**
     * @param mixed $co_imagem_evento
     */
    public function setCoImagemEvento($co_imagem_evento)
    {
        $this->co_imagem_evento = $co_imagem_evento;
    }

    /**
     * @return AgendaEntidade $co_agenda
     */
    public function getCoAgenda()
    {
        return $this->co_agenda;
    }

    /**
     * @param mixed $co_agenda
     */
    public function setCoAgenda($co_agenda)
    {
        $this->co_agenda = $co_agenda;
    }

    /**
     * /**
     * @param $co_agenda_evento
     * @return mixed
     */
    public function setCoAgendaEvento($co_agenda_evento)
    {
        return $this->co_agenda_evento = $co_agenda_evento;
    }

    /**
     * @return AgendaEventoEntidade $co_agenda_evento
     */
    public function getCoAgendaEvento()
    {
        return $this->co_agenda_evento;
    }

}