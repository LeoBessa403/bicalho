<?php

class Evento extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;

    function ListarEvento()
    {
        /** @var EventoService $eventoService */
        $eventoService = $this->getService(EVENTO_SERVICE);
        $this->result = $eventoService->PesquisaTodos();
    }


    function CadastroEvento()
    {
        $id = "cadastroEvento";
        /** @var EventoService $eventoService */
        $eventoService = $this->getService(EVENTO_SERVICE);
        /** @var PerfilService $perfilService */
        $perfilService = $this->getService(PERFIL_SERVICE);

        $res = array();
        if (!empty($_POST[$id])):
            $retorno = $eventoService->salvarEvento($_POST, $_FILES[CO_IMAGEM], $_FILES[CO_IMAGEM_EVENTO]);
            debug($retorno);
        endif;

//        $co_evento = UrlAmigavel::PegaParametro("evento");

        $this->form = EventoForm::Cadastrar($res);

    }


}

?>
   