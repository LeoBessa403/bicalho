<?php

class Categorias extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;

    public function Index()
    {
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        $this->result = $fabricanteService->PesquisaTodos();

    }
}

?>
   