<?php

/**
 * EventoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  EventoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(EventoEntidade::ENTIDADE);
        $this->ObjetoModel = New EventoModel();
    }

    public function salvarEvento($dados, $fotos)
    {
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var ImagemEventoService $imagemEventoService */
        $imagemEventoService = $this->getService(IMAGEM_EVENTO_SERVICE);

        $upload = new Upload();
        $fotoCapa = $fotos[CO_IMAGEM];
        $fotos = $fotos[CO_IMAGEM_EVENTO];

        if ($fotoCapa["name"]):
            $capa = $upload->UploadImagens($fotoCapa, Valida::ValNome($dados[DS_TITULO]), "Eventos/CapaEventos");
            $capa[DS_CAMINHO] = $capa[0];
            unset($capa[0]);
            $idCapa = $imagemService->Salva($capa);
            $evento[CO_IMAGEM] = $idCapa;
        endif;

        $evento[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $evento[CO_CATEGORIA_EVENTO] = $dados[CO_CATEGORIA_EVENTO];
        $evento[CO_AGENDA] = $dados[CO_AGENDA];
        $idEvento = $this->Salva($evento);

        if ($idEvento):
            $imagemEvento[CO_EVENTO] = $idEvento;
            if ($fotos['name'][0]) {
                $pasta = "Eventos/Evento-" . $idEvento;
                $arquivos = $upload->UploadImagens($fotos, Valida::ValNome($dados[DS_TITULO]), $pasta);
                foreach ($arquivos as $value) {
                    $imagem[DS_CAMINHO] = $value;
                    $imagemEvento[CO_IMAGEM] = $imagemService->Salva($imagem);
                    $retorno[SUCESSO] = $imagemEventoService->Salva($imagemEvento);
                }
            }

        endif;
        return $idEvento;
    }

}