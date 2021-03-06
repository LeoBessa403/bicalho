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

    public function salvaSegmento($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $segmentoValidador = new SegmentoValidador();
        /** @var SegmentoValidador $validador */
        $validador = $segmentoValidador->validarSegmento($dados);
        if ($validador[SUCESSO]) {
            $segmento[DS_SEGMENTO] = trim($dados[DS_SEGMENTO]);
            $segmento[NO_SEGMENTO_URL_AMIGAVEL] = Valida::ValNome(trim($dados[DS_SEGMENTO]));

            if (!empty($_POST[CO_SEGMENTO])):
                $coSegmento = $dados[CO_SEGMENTO];
                $retorno[SUCESSO] = $this->Salva($segmento, $coSegmento);
            else:
                $retorno[SUCESSO] = $this->Salva($segmento);
            endif;
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    /**
     * @param $noSegmento
     * @return array
     */
    public function getSeoSegmentos($noSegmento)
    {
        return $this->ObjetoModel->getSeoSegmentos($noSegmento);
    }

}