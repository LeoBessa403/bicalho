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

        if ($res):
            $formulario
                ->setType("hidden")
                ->setId(CO_FABRICANTE)
                ->setValues($res[CO_FABRICANTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }
}
?>
   