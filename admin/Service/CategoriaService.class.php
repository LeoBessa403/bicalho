<?php

/**
 * CategoriaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaModel();
    }


//    public static function montaComboSegmento()
//    {
//        /** @var SegmentoService $segmentoService */
//        $segmentoService = $this->getService(PERFIL_FUNCIONALIDADE_SERVICE);
//
//        $segmentos = array();
//        /** @var UsuarioPerfilEntidade $perfil */
//        foreach ($usuario->getCoUsuarioPerfil() as $perfil) :
//            $segmentos[] = $perfil->getCoPerfil()->getCoPerfil();
//        endforeach;
//        return $meusPerfis;
//    }

    public function salvaCategoria($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $categoria[NO_CATEGORIA] = trim($dados[NO_CATEGORIA]);

        if (!empty($_POST[CO_CATEGORIA])):
            $coCategoria = $dados[CO_CATEGORIA];
            $retorno[SUCESSO] = $this->Salva($categoria, $coCategoria);
        else:
            $retorno[SUCESSO] = $this->Salva($categoria);
        endif;
        return $retorno;
    }
}