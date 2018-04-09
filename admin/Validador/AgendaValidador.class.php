<?php

/**
 * AgendaValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  AgendaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarAgenda($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_TITULO], 5, 'Título'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_PERFIL], 'Participantes'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_CATEGORIA_AGENDA], 'Categoria da Eventualidade'
        );
        if ($dados[CO_CATEGORIA_AGENDA] == CategoriaAgendaEnum::EVENTO) {
            $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
                $dados[CO_CATEGORIA_EVENTO], 'Categoria do evento'
            );
        }
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_INICIO], AbstractValidador::VALIDACAO_DATA, 'Data de Início'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[DT_FIM], AbstractValidador::VALIDACAO_DATA, 'Data de Termino'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_ENDERECO], 5, 'Endereço'
        );

        return $this->MontaRetorno($this->retorno);
    }
}