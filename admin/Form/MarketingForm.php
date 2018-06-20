<?php

/**
 * MarketingForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class MarketingForm
{
    public static function Email()
    {
        $id = "EnvioEmail";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Enviar", 6);

        $formulario
            ->setId(DS_DESCRICAO)
            ->setType("textarea")
            ->setLabel("E-mail Promocional")
            ->setClasses("ckeditor")
            ->CriaInpunt();


        return $formulario->finalizaForm();
    }

}

?>
   