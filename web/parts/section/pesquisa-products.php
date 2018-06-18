<section id="gaming">
    <div class="grid-list-products">
        <h2 class="section-title">Produtos encontrados: <?= count($produtos); ?></h2>
        <div class="control-bar">
            <div id="popularity-sort" class="le-select">
                <select data-placeholder="sort by popularity">
                    <option value="1">Por preço</option>
                    <option value="2">Por vendas</option>
                    <option value="3">Por Visitas</option>
                </select>
            </div>

            <div id="item-count" class="le-select">
                <select>
                    <option value="1">12 por página</option>
                    <option value="2">24 por página</option>
                    <option value="3">36 por página</option>
                </select>
            </div>

            <div class="grid-list-buttons">
                <ul>
                    <li class="grid-list-button-item <?php if (!$isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                                   href="#grid-view"><i
                                    class="fa fa-th-large"></i> Grid</a></li>
                    <li class="grid-list-button-item <?php if ($isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                                  href="#list-view"><i
                                    class="fa fa-th-list"></i> List</a></li>
                </ul>
            </div>
        </div><!-- /.control-bar -->

        <div class="tab-content">
            <div id="grid-view" class="products-grid fade tab-pane <?php if (!$isListView) echo 'in active'; ?>">
                <div class="product-grid-holder">
                    <div class="row no-margin">
                        <?php
                        /** @var ProdutoEntidade $produto */
                        foreach ($produtos as $produto) {
                            ?>
                            <?php require PASTA_RAIZ . SITE . '/parts/section/grid-produtos.php'; ?>
                        <?php } ?>
                    </div><!-- /.row -->
                </div><!-- /.product-grid-holder -->

                <div class="pagination-holder">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 text-left">
                            <ul class="pagination">
                                <li><a href="#"><<</a></li>
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">>></a></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="result-counter">
                                de<span> 1 a 9</span> de <span>11</span> Encontrados
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.pagination-holder -->
            </div><!-- /.products-grid #grid-view -->

            <div id="list-view" class="products-grid fade tab-pane <?php if ($isListView) echo 'active in'; ?>">
                <div class="products-list">
                    <?php
                    /** @var ProdutoEntidade $produto */
                    foreach ($produtos as $produto) {
                        ?>
                        <?php require PASTA_RAIZ . SITE . '/parts/section/list-produtos.php'; ?>
                    <?php } ?>
                </div><!-- /.products-list -->

                <div class="pagination-holder">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">next</a></li>
                            </ul><!-- /.pagination -->
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="result-counter">
                                de<span> 1 a 9</span> de <span>11</span> Encontrados
                            </div><!-- /.result-counter -->
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.pagination-holder -->

            </div><!-- /.products-grid #list-view -->

        </div><!-- /.tab-content -->
    </div><!-- /.grid-list-products -->

</section><!-- /#gaming -->