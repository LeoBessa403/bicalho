<?php
          
class Segmentos extends AbstractController
{
    public $result;
    public $segmento;
    public $produtoService;
    
    public function ListarSegmentos()
    {
        /** @var SegmentoService $segmentoService */
        $segmentoService = $this->getService(SEGMENTO_SERVICE);
        /** @var FabricanteService $fabricanteService */
        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
        /** @var ProdutoService $produtoService */
        $produtoService = $this->getService(PRODUTO_SERVICE);

        $this->result = $fabricanteService->PesquisaTodos();

        $noSegmento = UrlAmigavel::PegaParametroUrlAmigavel();
        if ($noSegmento) {
            /** @var SegmentoEntidade $segmentoPrincipal */
            $this->segmento = $segmentoService->PesquisaUmQuando([
                NO_SEGMENTO_URL_AMIGAVEL => $noSegmento
            ]);
            if (empty($this->segmento)) {
                Redireciona('web/Segmentos/SegmentoNaoEncontrado/');
            }
        }else{
            Redireciona('web/Segmentos/SegmentoNaoEncontrado/');
        }
        $this->produtoService = $produtoService;
    }
}
?>
   