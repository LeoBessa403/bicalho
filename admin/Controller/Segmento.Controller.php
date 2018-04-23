<?php

class Segmento extends AbstractController
{
    public $result;

    function ListarSegmento()
    {
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        $this->result = $segmentoService->PesquisaTodos();
    }

    function CadastroSegmento()
    {
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);

        $id = "cadastroSegmento";

        if (!empty($_POST[$id])):
            $retorno = $segmentoService->salvaPerfil($_POST);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarSegmento/');
            }
        endif;

        $coSegmento = UrlAmigavel::PegaParametro(CO_SEGMENTO);
        $res = $segmentoService->PesquisaUmRegistro($coSegmento);
        $this->form = PerfilForm::Cadastrar($res);

    }

}
   