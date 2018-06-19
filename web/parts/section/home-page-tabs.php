<section id="products-tab" class="wow fadeInUp">
    <h1 style="display: none;">Sessão de Destaque | <?= DESC; ?></h1>
    <div class="container">
        <div class="tab-holder">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#featured" data-toggle="tab">destaque</a></li>
                <li><a href="#new-arrivals" data-toggle="tab">novas chegadas</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="featured">
                    <div class="product-grid-holder">
                        <?php
                        /** @var ProdutoEntidade $produto */
                        foreach ($produtosDestaque as $produto) {
                            ?>
                            <article class="col-sm-4 col-md-3  no-margin product-item-holder hover">
                                <h2 style="display: none;"><?= $produto->getNoProduto() . ' - ' .
                                    $produto->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h2>
                                <div class="product-item">
                                    <?php
                                    if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                        ?>
                                        <div class="ribbon red"><span>destaque</span></div>
                                        <!--                                        <div class="ribbon blue"><span>novo!</span></div>-->
                                        <!--                                        <div class="ribbon green"><span>mais vendidos</span></div>-->
                                    <?php } ?>
                                    <div class="image">
                                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $produto->getNoProdutoUrlAmigavel(); ?>">
                                            <?php
                                            echo Valida::GetMiniatura(
                                                'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                                $produto->getNoProduto(),
                                                280,
                                                210,
                                                'img-responsive'
                                            );
                                            ?>
                                        </a>
                                    </div>
                                    <div class="body">
                                        <?php
                                        if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                            ?>
                                            <div class="label-discount green">10% desconto</div>
                                        <?php }
                                        if ($produto->getNuEstoque() < 1) {
                                            ?>
                                            <div class="label-discount red">Sem Estoque</div>
                                        <?php } ?>
                                        <div class="title">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                                Valida::Resumi($produto->getNoProduto(), 100);
                                                ?></a>
                                        </div>
                                        <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                    </div>
                                    <div class="prices">
                                        <div class="price-prev">de <?=
                                            Valida::FormataMoeda(
                                                floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                            );
                                            ?></div>
                                        <div class="price-current pull-right">por <?=
                                            Valida::FormataMoeda(
                                                $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                            );
                                            ?></div>
                                    </div>

                                    <div class="hover-area">
                                        <div class="add-cart-button">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            $produto->getNoProdutoUrlAmigavel(); ?>"
                                               class="le-button">Ver Detalhes</a>
                                        </div>
                                        <div class="wish-compare">
                                            <a class="btn-add-to-wishlist <?=
                                            (in_array($produto->getCoProduto(), $favoritos))
                                                ? 'remove-favo' : 'add-favo';; ?>" href="#"
                                               title="Adicionar aos favoritos"
                                               data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                                (in_array($produto->getCoProduto(), $favoritos))
                                                    ? 'Remove dos Favoritos' : 'Add aos Favoritos';; ?></a>
                                            <a class="btn-add-to-compare <?=
                                            (in_array($produto->getCoProduto(), $comparados))
                                                ? 'remove-compare' : 'add-compare';; ?>" href="#"
                                               title="Remove dos comparados"
                                               data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                                (in_array($produto->getCoProduto(), $comparados))
                                                    ? 'Remove dos Comparados' : 'Add aos Comparados';; ?></a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        <?php } ?>
                    </div>
                    <div class="loadmore-holder text-center">
                        <a class="btn-loadmore" href="#">
                            <i class="fa fa-plus"></i>
                            carregar mais produtos</a>
                    </div>
                </div>
                <div class="tab-pane" id="new-arrivals">
                    <div class="product-grid-holder">
                        <?php
                        /** @var ProdutoEntidade $produto */
                        foreach ($novasChegadas as $produto) {
                            ?>
                            <article class="col-sm-4 col-md-3  no-margin product-item-holder hover">
                                <h2 style="display: none;"><?= $produto->getNoProduto() . ' - ' .
                                    $produto->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h2>
                                <div class="product-item">
                                    <!--                                        <div class="ribbon red"><span>destaque</span></div>-->
                                    <div class="ribbon green"><span>novo!</span></div>
                                    <!--                                        <div class="ribbon blue"><span>mais vendidos</span></div>-->
                                    <div class="image">
                                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $produto->getNoProdutoUrlAmigavel(); ?>">
                                            <?php
                                            echo Valida::GetMiniatura(
                                                'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                                $produto->getNoProduto(),
                                                280,
                                                210,
                                                'img-responsive'
                                            );
                                            ?>
                                        </a>
                                    </div>
                                    <div class="body">
                                        <?php
                                        if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                            ?>
                                            <div class="label-discount blue">10% desconto</div>
                                        <?php }
                                        if ($produto->getNuEstoque() < 1) {
                                            ?>
                                            <div class="label-discount red">Sem Estoque</div>
                                        <?php } ?>
                                        <div class="title">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                                Valida::Resumi($produto->getNoProduto(), 100);
                                                ?></a>
                                        </div>
                                        <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                    </div>
                                    <div class="prices">
                                        <div class="price-prev">de <?=
                                            Valida::FormataMoeda(
                                                floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                            );
                                            ?></div>
                                        <div class="price-current pull-right">por <?=
                                            Valida::FormataMoeda(
                                                $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                            );
                                            ?></div>
                                    </div>

                                    <div class="hover-area">
                                        <div class="add-cart-button">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            $produto->getNoProdutoUrlAmigavel(); ?>"
                                               class="le-button">Ver Detalhes</a>
                                        </div>
                                        <div class="wish-compare">
                                            <a class="btn-add-to-wishlist <?=
                                            (in_array($produto->getCoProduto(), $favoritos))
                                                ? 'remove-favo' : 'add-favo';; ?>" href="#"
                                               title="Adicionar aos favoritos"
                                               data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                                (in_array($produto->getCoProduto(), $favoritos))
                                                    ? 'Remove dos Favoritos' : 'Add aos Favoritos';; ?></a>
                                            <a class="btn-add-to-compare <?=
                                            (in_array($produto->getCoProduto(), $comparados))
                                                ? 'remove-compare' : 'add-compare';; ?>" href="#"
                                               title="Remove dos comparados"
                                               data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                                (in_array($produto->getCoProduto(), $comparados))
                                                    ? 'Remove dos Comparados' : 'Add aos Comparados';; ?></a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        <?php } ?>
                    </div>
                    <div class="loadmore-holder text-center">
                        <a class="btn-loadmore" href="#">
                            <i class="fa fa-plus"></i> carregar mais produtos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>