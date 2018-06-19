<!-- ============================================================= FEATURED PRODUCTS ============================================================= -->
<section class="widget">
    <h2>Produtos em destaque</h2>
    <div class="body">
        <ul>
            <?php
            /** @var ProdutoEntidade $produto */
            foreach ($produtosDestacados as $produto) {
                ?>
                <li>
                    <div class="row">
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
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div><!-- /.body -->
</section> <!-- /.widget -->
<!-- ============================================================= FEATURED PRODUCTS : END ============================================================= -->