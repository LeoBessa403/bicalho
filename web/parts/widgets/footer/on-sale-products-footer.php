<!-- ============================================================= ON SALE PRODUCTS ============================================================= -->
<div class="widget">
    <h2>Mais vendidos</h2>
    <div class="body">
        <ul>
            <?php
            /** @var ProdutoEntidade $produto */
            foreach ($produtosMaisVendidos as $produto) {
            ?>
            <li>
                <article class="row">
                    <div class="col-xs-12 col-sm-9 no-margin">
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                            Valida::Resumi($produto->getNoProduto(), 60);
                            ?></a>
                        <div class="price">
                            <div class="price-prev">de <?=
                                Valida::FormataMoeda(
                                    floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                    , 'R$');
                                ?></div>
                            <div class="price-current">por <?=
                                Valida::FormataMoeda(
                                    $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                );
                                ?></div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 no-margin">
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
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
                </article>
            </li>
            <?php } ?>
        </ul>
    </div><!-- /.body -->
</div> <!-- /.widget -->
<!-- ============================================================= ON SALE PRODUCTS : END ============================================================= -->