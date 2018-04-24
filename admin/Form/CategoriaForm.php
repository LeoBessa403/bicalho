<?php

class CategoriaForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroCategoria";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(NO_CATEGORIA)
            ->setClasses("ob")
            ->setLabel("Nome do Categoria")
            ->CriaInpunt();

        $formulario
            ->setId(CO_SEGMENTO)
            ->setLabel("Segmento da Categoria")
            ->setClasses("ob")
            ->setType("select")
            ->setAutocomplete(SegmentoEntidade::TABELA, DS_SEGMENTO,SegmentoEntidade::CHAVE)
            ->CriaInpunt();

        if ($res):
            $formulario
                ->setType("hidden")
                ->setId(CO_CATEGORIA)
                ->setValues($res[CO_CATEGORIA])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }
}
?>
   