<?php

class AgendaForm
{
    public static function Cadastrar($res)
    {
        $id = "cadastroCompromisso";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Salvar", 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(CO_CATEGORIA_AGENDA)
            ->setType("select")
            ->setLabel("Categoria da Eventualidade")
            ->setClasses("ob")
            ->setAutocomplete(
                CategoriaAgendaEntidade::TABELA, NO_CATEGORIA_AGENDA, CategoriaAgendaEntidade::CHAVE
            )
            ->CriaInpunt();

        $options = AgendaService::PesquisaEventosCombo();
        $formulario
            ->setId(CO_EVENTO)
            ->setType("select")
            ->setLabel("Evento")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(CO_CATEGORIA_EVENTO)
            ->setClasses("ob")
            ->setType("select")
            ->setAutocomplete(CategoriaEventoEntidade::TABELA, NO_CATEGORIA_EVENTO, CategoriaEventoEntidade::CHAVE)
            ->setLabel("Categoria do Evento")
            ->CriaInpunt();

        $formulario
            ->setId(DS_TITULO)
            ->setClasses("ob")
            ->setLabel("Título")
            ->CriaInpunt();

        $perfis = PerfilService::montaComboTodosPerfis();
        $labels = FuncoesSistema::ValidaPerfilCadastro($perfis);

        $formulario
            ->setLabel("Participantes")
            ->setId(CO_PERFIL)
            ->setClasses("multipla ob")
            ->setInfo("Pode selecionar vários perfis.")
            ->setType("select")
            ->setOptions($labels)
            ->CriaInpunt();

        $formulario
            ->setId(DT_INICIO)
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();

        $formulario
            ->setId("hr_inicio")
            ->setTamanhoInput(6)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Inicial")
            ->CriaInpunt();

        $formulario
            ->setId(DT_FIM)
            ->setTamanhoInput(6)
            ->setClasses("data")
            ->setIcon("clip-calendar-3")
            ->setInfo("Data Previsto para Terminar")
            ->setLabel("Data de Termino")
            ->CriaInpunt();

        $formulario
            ->setId("hr_fim")
            ->setTamanhoInput(6)
            ->setPlace("Formato 24Hrs")
            ->setInfo("Horário Previsto para Terminar")
            ->setClasses("horas")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Final")
            ->CriaInpunt();

        $formulario
            ->setId(DS_ENDERECO)
            ->setIcon("clip-home-2")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setLabel("Endereço")
            ->CriaInpunt();

        $formulario
            ->setId(DS_COMPLEMENTO)
            ->setLabel("Complemento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(DS_BAIRRO)
            ->setLabel("Bairro")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NO_CIDADE)
            ->setLabel("Cidade")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NU_CEP)
            ->setLabel("CEP")
            ->setTamanhoInput(4)
            ->setClasses("cep")
            ->CriaInpunt();

        $options = EnderecoService::montaComboEstadosDescricao();
        $formulario
            ->setTamanhoInput(8)
            ->setId(SG_UF)
            ->setType("select")
            ->setLabel("Estado")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(CO_IMAGEM)
            ->setLabel("Capa do Evento")
            ->setType("singlefile")
            ->setClasses("ob")
            ->setInfo("Imagem Principal do Evento")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setType("textarea")
            ->setClasses("ckeditor")
            ->setLabel("Descrição da Eventualidade")
            ->CriaInpunt();

        $formulario
            ->setId(CO_IMAGEM_EVENTO)
            ->setLabel("Galeria de Fotos do Evento")
            ->setType("file")
            ->setLimite(30)
            ->setClasses("multipla")
            ->setInfo("No máximo de 30 Fotos")
            ->CriaInpunt();

        if (!empty($res[CO_AGENDA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_AGENDA)
                ->setValues($res[CO_AGENDA])
                ->CriaInpunt();

        $formulario
                ->setType("hidden")
                ->setId(CO_ENDERECO)
                ->setValues($res[CO_ENDERECO])
                ->CriaInpunt();
        endif;


        return $formulario->finalizaForm('Agenda/Calendario');
    }
}

?>
   