<?php

class PessoaForm extends AbstractController
{
    public static function ValidarCPF($link)
    {
        $id = "ValidacaoPessoa";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller
            . "/" . UrlAmigavel::$action, 'Validar', 12);

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf ob")
            ->setTamanhoInput(12)
            ->setLabel("CPF")
            ->CriaInpunt();

        return $formulario->finalizaForm($link);
    }

}

?>
   