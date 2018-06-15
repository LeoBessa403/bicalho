<?php
$fabricanteControlle = new Fabricante();
/** @var FabricanteService $fabricanteService */
$fabricanteService = $fabricanteControlle->getService(FABRICANTE_SERVICE);
$fabricantes = $fabricanteService->PesquisaTodos();
?>
<!-- ========================================= PRODUCT FILTER ========================================= -->
<div class="widget">
    <h1>Pesquisa Produto</h1>
    <div class="body bordered">
        <div class="category-filter">
            <h2>Fabricantes</h2>
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
<!--<link rel="stylesheet" href="--><? //= HOME; ?><!--admin/plugins/select2/select2.css">-->
<!--<script src="--><? //= HOME; ?><!--admin/plugins/select2/select2.min.js"></script>-->
<!-- ========================================= PRODUCT FILTER : END ========================================= -->