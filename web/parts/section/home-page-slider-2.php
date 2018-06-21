<!-- ========================================== SECTION – HERO ========================================= -->
<div id="hero">
    <div id="owl-main" class="owl-carousel height-lg owl-inner-nav owl-ui-lg">
        <?php
        /** @var ProdutoDetalheEntidade $destaque */
        foreach ($result as $destaque) {
            if ($destaque->getCoProduto()->getStStatus() == StatusAcessoEnum::ATIVO) {
                /** @var ProdutoEntidade $produto */
                $produto = $produtoService->PesquisaUmRegistro(
                    $destaque->getCoProduto()->getCoProduto()
                );
                $foto = Valida::GetMiniatura(
                    'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                    $produto->getNoProduto(),
                    600,
                    500,
                    'img-destaque'
                );
                ?>
                <article class="item">
                    <h1 style="display: none;"><?= $produto->getNoProduto() . ' - ' .
                        $produto->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h1>
                    <div class="container-fluid">
                        <?= $foto; ?>
                        <div class="caption vertical-center text-left right" style="padding-right:0;">
                            <div class="big-text fadeInDown-1" style="text-align: right;">
                                Super Promoção de <span class="big"><span class="sign">R$</span><?=
                                    Valida::FormataMoeda($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                    );
                                    ?></span>
                            </div>
                            <div class="excerpt fadeInDown-2">
                                <?= $produto->getNoProduto(); ?>
                            </div>
                            <div class="small fadeInDown-2">
                                <?= $produto->getCoFabricante()->getNoFabricante(); ?>
                            </div>
                            <div class="button-holder fadeInDown-3">
                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                $produto->getNoProdutoUrlAmigavel(); ?>"
                                   class="big le-button ">Mais Detalhes</a>
                            </div>
                        </div><!-- /.caption -->
                    </div><!-- /.container-fluid -->
                </article><!-- /.item -->
            <?php }
        } ?>
    </div><!-- /.owl-carousel -->
</div>

<!-- ========================================= SECTION – HERO : END ========================================= -->