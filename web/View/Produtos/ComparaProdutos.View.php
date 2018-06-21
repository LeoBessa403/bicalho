<div class="main-content" id="main-content">
    <div class="container">
        <div class="inner-xs">
            <div class="page-header">
                <h2 class="page-title">
                    Comparação de produtos
                </h2>
            </div>
        </div><!-- /.section-page-title -->

        <div class="table-responsive inner-bottom-xs inner-top-xs">
            <?php
            if (count($comparados)) {
                ?>
                <table class="table table-bordered table-striped compare-list">
                    <thead>
                    <tr>
                        <td>&nbsp;</td>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="text-center produto-<?= $produto->getCoProduto(); ?>">
                                <div class="image-wrap">
                                    <a data-co-produto="<?= $produto->getCoProduto(); ?>" href="#"
                                       class="remove-link remove-compare"><i title="Remover produto"
                                                                             class="fa fa-times-circle"></i></a>
                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                    $produto->getNoProdutoUrlAmigavel(); ?>">
                                        <?php
                                        echo Valida::GetMiniatura(
                                            'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                            $produto->getNoProduto(),
                                            220,
                                            154,
                                            'img-responsive'
                                        );
                                        ?>
                                    </a>
                                </div>
                                <p><strong><a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                            Valida::Resumi($produto->getNoProduto(), 150);
                                            ?></a></strong></p>
                            </td>
                            <?php
                        } ?>
                    </tr>
                    <tr class="tr-add-to-cart">
                        <th style="border: none;">Produtos</th>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="text-center produto-<?= $produto->getCoProduto(); ?>">
                                <a class="le-button add_to_cart_button  product_type_simple"
                                   style="margin-bottom: 7px;"
                                   href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                   $produto->getNoProdutoUrlAmigavel(); ?>"> Ver detalhes</a>
                            </td>
                            <?php
                        } ?>
                    </tr>
                    </thead>
                    <tbody>

                    <tr class="comparison-item price">
                        <th>Preço</th>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="comparison-item-cell odd product_39 produto-<?= $produto->getCoProduto(); ?>">
                                <span class="amount">R$ <?=
                                    Valida::FormataMoeda(
                                        $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                    );
                                    ?></span>
                            </td>
                            <?php
                        } ?>
                    </tr>

                    <tr class="comparison-item description">
                        <th>Descrição</th>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="comparison-item-cell odd product_39 produto-<?= $produto->getCoProduto(); ?>">
                                <p><?=
                                    Valida::Resumi($produto->getDsDescricao(), 300);
                                    ?></p>
                            </td>
                            <?php
                        } ?>
                    </tr>

                    <tr class="comparison-item stock">
                        <th>Disponibilidade</th>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="comparison-item-cell odd product_39 produto-<?= $produto->getCoProduto(); ?>">
                                <?php
                                if ($produto->getUltimoCoProdutoDetalhe()->getNuEstoque() > 0) {
                                    ?>
                                    <span class="label label-success"><span class="">Com estoque</span></span>
                                <?php } else { ?>
                                    <span class="label label-danger"><span class="">Sem estoque</span></span>
                                <?php } ?>
                            </td>
                            <?php
                        } ?>
                    </tr>

                    <tr class="price repeated">
                        <th>Fabricante</th>
                        <?php
                        $produtoControl = new Produtos();
                        /** @var ProdutoService $produtoService */
                        $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                        foreach ($comparados as $comparado) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($comparado);
                            ?>
                            <td class="even product_39 produto-<?= $produto->getCoProduto(); ?>"><span class="amount"><?=
                                    $produto->getCoFabricante()->getNoFabricante();
                                    ?></span></td>
                            <?php
                        }
                        ?>
                    </tr>
                    </tbody>
                </table>
            <?php }
            $display = 'block';
            if (count($comparados)) {
                $display = 'none';
            } ?>
            <div style="text-align: center; display: <?= $display; ?>" id="nenhum-comparado">
                <h2>Nenhum produto adicionado para comparar!</h2>
            </div>
        </div><!-- /.table-responsive -->
    </div><!-- /.container -->
</div>