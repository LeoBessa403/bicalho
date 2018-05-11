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

        $coSegmento = UrlAmigavel::PegaParametro(CO_SEGMENTO);
        if ($coSegmento) {
            /** @var SegmentoEntidade $segmento */
            $segmento[] = $segmentoService->PesquisaUmRegistro($coSegmento);
        }else{
            /** @var SegmentoEntidade $segmento */
            $segmento = $segmentoService->PesquisaTodos();
        }
        /** @var SegmentoEntidade $this->segmento */
        $this->segmento = $segmento;
        $this->produtoService = $produtoService;
    }
}
?>
   