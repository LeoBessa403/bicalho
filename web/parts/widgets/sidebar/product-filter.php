<?php
$fabricanteControlle = new Fabricante();
/** @var FabricanteService $fabricanteService */
$fabricanteService = $fabricanteControlle->getService(FABRICANTE_SERVICE);
$fabricantes = $fabricanteService->PesquisaTodos();
?>
<!-- ========================================= PRODUCT FILTER ========================================= -->
<aside class="widget">
    <h3 style="font-weight: bolder; margin-top: 20px;">Pesquisa Produto</h3>
    <div class="body bordered">
        <form action="<?= PASTASITE; ?>Produtos/PesquisaProdutos" method="post">
            <div class="category-filter">
                <h4>Fabricantes</h4>
                <hr>
                <?php
                $form = "<select multiple='multiple' id='" . CO_FABRICANTE . "' name='" .
                    CO_FABRICANTE . "[]'  placeholder='Selecionar Fabricantes' class='form-control search-select'>";
                /** @var FabricanteEntidade $fabricante */
                foreach ($fabricantes as $fabricante) {
                    if (count($fabricante->getCoProduto())) {
                        $form .= '<option value="' . $fabricante->getCoFabricante() . '" >' .
                            $fabricante->getNoFabricante() . ' (' . count($fabricante->getCoProduto()) . ')</option>';
                    }
                    ?>
                    <?php
                }
                $form .= "</select>";
                echo $form;
                ?>
            </div><!-- /.category-filter -->
            <div class="clear"></div>
            <div class="price-filter">
                <h4>Preço</h4>
                <hr>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" name="preco" id="preco" value="50 : 7000"/>
                    <span class="min-max">
                        Preço: de  R$ <span class="min">89</span> até R$ <span class="max">2899</span>
                    </span>
                    <span class="filter-button">
                        <button class="btn btn-default pesquisa">Pesquisar</button>
                    </span>
                </div>
            </div><!-- /.price-filter -->
        </form>
    </div><!-- /.body -->
</aside><!-- /.widget -->
<!--<link rel="stylesheet" href="--><? //= HOME; ?><!--admin/plugins/select2/select2.css">-->
<!--<script src="--><? //= HOME; ?><!--admin/plugins/select2/select2.min.js"></script>-->
<!-- ========================================= PRODUCT FILTER : END ========================================= -->