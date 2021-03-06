<?php

/**
 * FabricanteForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class FabricanteForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroFabricante";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(NO_FABRICANTE)
            ->setClasses("ob")
            ->setLabel("Nome do Fabricante")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CODIGO_FABRICANTE)
            ->setLabel("Código do Fabricante")
            ->setClasses("ob numero")
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setTamanhoInput(12)
            ->setLabel("Logo do Fabricante")
            ->CriaInpunt();

        if ($res):
            $formulario
                ->setType("hidden")
                ->setId(CO_FABRICANTE)
                ->setValues($res[CO_FABRICANTE])
                ->CriaInpunt();

            if (!empty($res[CO_IMAGEM])):
                $formulario
                    ->setType("hidden")
                    ->setId(CO_IMAGEM)
                    ->setValues($res[CO_IMAGEM])
                    ->CriaInpunt();
            endif;
        endif;

        return $formulario->finalizaForm();
    }
}

?>
   