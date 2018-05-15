<?php
$produtoOfertaController = new Produto();
/** @var ProdutoService $produtoOfertaService */
$produtoOfertaService = $produtoOfertaController->getService(PRODUTO_SERVICE);
$ofertas = $produtoOfertaService->pesquisaProdutos(6);
?>
<div class="widget">
    <h1 class="border">ofertas especiais</h1>
    <ul class="product-list">
        <?php
        /** @var ProdutoEntidade $produtoOferta */
        foreach ($ofertas as $produtoOferta) {
            ?>
            <li>
                <div class="row">
                    <div class="col-xs-4 col-sm-4 no-margin">
                        <a class="thumb-holder" href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produtoOferta->getNoProdutoUrlAmigavel(); ?>">
                            <?php
                            echo Valida::GetMiniatura(
                                'ProdutosCapa/' . $produtoOferta->getCoImagem()->getDsCaminho(),
                                $produtoOferta->getNoProduto(),
                                73,
                                73,
                                'img-responsive'
                            );
                            ?>
                        </a>
                    </div>
                    <div class="col-xs-8 col-sm-8 no-margin">
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produtoOferta->getNoProdutoUrlAmigavel(); ?>"><?=
                            Valida::Resumi($produtoOferta->getNoProduto(), 40);
                            ?></a>
                        <div class="price">
                            <div class="price-prev"><?=
                                Valida::FormataMoeda(
                                    floor($produtoOferta->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                    ,'R$');
                                ?></div>
                            <div class="price-current"> <?=
                                Valida::FormataMoeda(
                                    $produtoOferta->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                );
                                ?></div>
                        </div>
                    </div>
                </div>
            </li>
        <?php } ?>
    </ul>
</div><!-- /.widget -->