<?php

/**
 * SegmentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  SegmentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SegmentoEntidade::ENTIDADE);
        $this->ObjetoModel = New SegmentoModel();
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

    public function salvaSegmento($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $segmento[DS_SEGMENTO] = trim($dados[DS_SEGMENTO]);

        if (!empty($_POST[CO_SEGMENTO])):
            $coSegmento = $dados[CO_SEGMENTO];
            $retorno[SUCESSO] = $this->Salva($segmento, $coSegmento);
        else:
            $retorno[SUCESSO] = $this->Salva($segmento);
        endif;
        return $retorno;
    }


}