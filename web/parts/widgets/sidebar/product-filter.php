<!-- ========================================= PRODUCT FILTER ========================================= -->
<div class="widget">
    <h1>Pesquisa Produto</h1>
    <div class="body bordered">
        <div class="category-filter">
            <h2>Fabricantes</h2>
            <hr>
            <ul>
                <?php
                /** @var FabricanteEntidade $fabricante */
                foreach ($fabricantes as $fabricante) {
                    ?>
                    <li>
                        <input class="le-checkbox" type="checkbox"/>
                        <label><?= $fabricante->getNoFabricante(); ?></label>
                        <span class="pull-right">(<?= count($fabricante->getCoProduto()); ?>)</span>
                    </li>
                <?php } ?>
            </ul>
        </div><!-- /.category-filter -->

        <div class="price-filter">
            <h2>Preço</h2>
            <hr>
            <div class="price-range-holder">
                <input type="text" class="price-slider" value="">
                <span class="min-max">
                    Preço: de  R$89 até R$2899
                </span>
                <span class="filter-button">
                    <a href="#" class="btn btn-default">Pesquisar</a>
                </span>
            </div>
        </div><!-- /.price-filter -->
    </div><!-- /.body -->
</div><!-- /.widget -->
<!-- ========================================= PRODUCT FILTER : END ========================================= -->