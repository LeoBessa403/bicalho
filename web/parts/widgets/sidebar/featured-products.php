<?php
$produtoController = new Produto();
/** @var ProdutoService $produtoService */
$produtoService = $produtoController->getService(PRODUTO_SERVICE);
$maisVendidos =  $produtoService->pesquisaProdutos(8);
?>
<!-- ========================================= FEATURED PRODUCTS ========================================= -->
<aside class="widget">
    <h1 class="border">Mais vendidos</h1>
    <ul class="product-list">
        <?php
        /** @var ProdutoEntidade $produto */
        foreach ($maisVendidos as $produto) {
            ?>
            <li class="sidebar-product-list-item">
                <article class="row">
                    <h1 style="display: none;"><?= $produto->getNoProduto() . ' - ' .
                        $produto->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h1>
                    <div class="col-xs-4 col-sm-4 no-margin">
                        <a class="thumb-holder" href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produto->getNoProdutoUrlAmigavel(); ?>">
                            <?php
                            echo Valida::GetMiniatura(
                                'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                $produto->getNoProduto(),
                                73,
                                73,
                                'img-responsive'
                            );
                            ?>
                        </a>
                    </div>
                    <div class="col-xs-8 col-sm-8 no-margin">
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                            Valida::Resumi($produto->getNoProduto(), 40);
                            ?></a>
                        <div class="price">
                            <div class="price-prev"><?=
                                Valida::FormataMoeda(
                                    floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                    ,'R$');
                                ?></div>
                            <div class="price-current"> <?=
                                Valida::FormataMoeda(
                                    $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                );
                                ?></div>
                        </div>
                    </div>
                </article>
            </li><!-- /.sidebar-product-list-item -->
        <?php } ?>
    </ul><!-- /.product-list -->
</aside><!-- /.widget -->
<!-- ========================================= FEATURED PRODUCTS : END ========================================= -->