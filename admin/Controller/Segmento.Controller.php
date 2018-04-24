<?php

class Segmento extends AbstractController
{
    public $result;
    public $categorias;

    function ListarSegmento()
    {
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        $this->result = $segmentoService->PesquisaTodos();
        /** @var SegmentoEntidade $segmento */
        foreach ($this->result as $segmento){
            $this->categorias[$segmento->getCoSegmento()] = count($segmento->getCoCategoria());
        }
    }

    function CadastroSegmento()
    {
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);

        $id = "cadastroSegmento";

        if (!empty($_POST[$id])):
            $retorno = $segmentoService->salvaSegmento($_POST);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarSegmento/');
            }
        endif;

        $coSegmento = UrlAmigavel::PegaParametro(CO_SEGMENTO);
        $res = [];
        if($coSegmento){
            /** @var SegmentoEntidade $segmento */
            $segmento = $segmentoService->PesquisaUmRegistro($coSegmento);
            $res[CO_SEGMENTO] = $segmento->getCoSegmento();
            $res[DS_SEGMENTO] = $segmento->getDsSegmento();
        }
        $this->form = SegmentoForm::Cadastrar($res);

    }

}
   