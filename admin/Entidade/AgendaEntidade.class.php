<?php

/**
 * Agenda.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AgendaEntidade extends AbstractEntidade
{
    const TABELA = 'TB_AGENDA';
    const ENTIDADE = 'AgendaEntidade';
    const CHAVE = CO_AGENDA;

    private $co_agenda;
    private $ds_descricao;
    private $dt_cadastro;
    private $st_dia_todo;
    private $dt_inicio;
    private $dt_fim;
    private $ds_titulo;
    private $co_usuario;
    private $co_categoria_agenda;
    private $co_agenda_evento;
    private $co_perfil_agenda;
    private $co_endereco;
    private $co_evento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_AGENDA,
            DS_DESCRICAO,
            DT_CADASTRO,
            ST_DIA_TODO,
            DT_INICIO,
            DT_FIM,
            DS_TITULO,
            CO_CATEGORIA_AGENDA,
            CO_ENDERECO,
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
     * @return int $co_agenda
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
     * @return $ds_descricao
     */
    public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

    /**
     * @param $ds_descricao
     * @return mixed
     */
    public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

    /**
     * @return $dt_cadastro
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
     * @return $st_dia_todo
     */
    public function getStDiaTodo()
    {
        return $this->st_dia_todo;
    }

    /**
     * @param $st_dia_todo
     * @return mixed
     */
    public function setStDiaTodo($st_dia_todo)
    {
        return $this->st_dia_todo = $st_dia_todo;
    }

    /**
     * @return $dt_inicio
     */
    public function getDtInicio()
    {
        return $this->dt_inicio;
    }

    /**
     * @param $dt_inicio
     * @return mixed
     */
    public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

    /**
     * @return $dt_fim
     */
    public function getDtFim()
    {
        return $this->dt_fim;
    }

    /**
     * @param $dt_fim
     * @return mixed
     */
    public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
    }

    /**
     * @return $ds_titulo
     */
    public function getDsTitulo()
    {
        return $this->ds_titulo;
    }

    /**
     * @param $ds_titulo
     * @return mixed
     */
    public function setDsTitulo($ds_titulo)
    {
        return $this->ds_titulo = $ds_titulo;
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
     * @return CategoriaAgendaEntidade $co_categoria_agenda
     */
    public function getCoCategoriaAgenda()
    {
        return $this->co_categoria_agenda;
    }

    /**
     * @param $co_categoria_agenda
     * @return mixed
     */
    public function setCoCategoriaAgenda($co_categoria_agenda)
    {
        return $this->co_categoria_agenda = $co_categoria_agenda;
    }

    /**
     * @return AgendaEventoEntidade $co_agenda_evento
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
     * @return PerfilAgendaEntidade $co_perfil_agenda
     */
    public function getCoPerfilAgenda()
    {
        return $this->co_perfil_agenda;
    }

    /**
     * @param $co_perfil_agenda
     * @return mixed
     */
    public function setCoPerfilAgenda($co_perfil_agenda)
    {
        return $this->co_perfil_agenda = $co_perfil_agenda;
    }

    /**
     * @return EnderecoEntidade $co_endereco
     */
    public function getCoEndereco()
    {
        return $this->co_endereco;
    }

    /**
     * @param $co_endereco
     * @return mixed
     */
    public function setCoEndereco($co_endereco)
    {
        return $this->co_endereco = $co_endereco;
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