<?php

class Fabricante extends AbstractController
{
    public $result;

    function ListarFabricante()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $this->result = $fabricanteService->PesquisaTodos();
    }

    function CadastroFabricante()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);

        $id = "cadastroFabricante";

        if (!empty($_POST[$id])):
            $retorno = $fabricanteService->salvaFabricante($_POST);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarFabricante/');
            }
        endif;

        $coFabricante = UrlAmigavel::PegaParametro(CO_FABRICANTE);
        $res = [];
        if($coFabricante){
            /** @var FabricanteEntidade $fabricante */
            $fabricante = $fabricanteService->PesquisaUmRegistro($coFabricante);
            $res[CO_FABRICANTE] = $fabricante->getCoFabricante();
            $res[NO_FABRICANTE] = $fabricante->getNoFabricante();
            $res[NU_CODIGO_FABRICANTE] = $fabricante->getNuCodigoFabricante();
        }
        $this->form = FabricanteForm::Cadastrar($res);
    }

}
   