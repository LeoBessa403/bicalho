<?php

/**
 * ProdutoImagemService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoImagemService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProdutoImagemEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoImagemModel();
    }

    public function SalvaProdutoImagens($fotos, $coProduto, $nome)
    {
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var ProdutoImagemService $produtoImagemService */
        $produtoImagemService = $this->getService(PRODUTO_IMAGEM_SERVICE);

        $upload = new Upload();
        $fotos = $fotos[CO_PRODUTO_IMAGEM];

        $produtoImagem[CO_PRODUTO] = $coProduto;
        if ($fotos['name'][0]) {
            $pasta = "Produtos/produto-" . $nome;
            $arquivos = $upload->UploadImagens($fotos, $coProduto, $pasta);
            foreach ($arquivos as $value) {
                $imagem[DS_CAMINHO] = $value;
                $produtoImagem[CO_IMAGEM] = $imagemService->Salva($imagem);
                $retorno[SUCESSO] = $produtoImagemService->Salva($produtoImagem);
            }
        }
        return $coProduto;
    }

}