<?php
/**
 * SegmentoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class SegmentoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroSegmento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        if ($res):
            $formulario->setValor($res);
        endif;
        $formulario
            ->setId(DS_SEGMENTO)
            ->setClasses("ob")
            ->setLabel("Nome do Segmento")
            ->CriaInpunt();

        if ($res):
            $formulario
                ->setType("hidden")
                ->setId(CO_SEGMENTO)
                ->setValues($res[CO_SEGMENTO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }
}
?>
   