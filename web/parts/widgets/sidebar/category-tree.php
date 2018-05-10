<!-- ========================================= CATEGORY TREE ========================================= -->
<div class="widget accordion-widget category-accordions">
    <h1 class="border">Categorias</h1>
    <div id="accordion" class="accordion">
        <?php
        /** @var SegmentoEntidade $segmento */
        foreach ($segmentos as $segmento) {
            if (count($segmento->getCoCategoria())) {
                ?>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle collapsed" data-toggle="collapse"
                           href="#collapse<?= $segmento->getCoSegmento(); ?>" data-parent="#accordion">
                            <?= $segmento->getDsSegmento(); ?>
                        </a>
                    </div>
                    <div id="collapse<?= $segmento->getCoSegmento(); ?>" class="accordion-body collapse">
                        <div class="accordion-inner">
                            <ul>
                                <?php
                                /** @var CategoriaEntidade $categoria */
                                foreach ($segmento->getCoCategoria() as $categoria) {
                                    ?>
                                    <li><a href="<?= PASTASITE; ?>Categorias/ListarCategorias/<?=
                                        Valida::GeraParametro(CO_CATEGORIA . "/" . $categoria->getCoCategoria()); ?>"><?=
                                            $categoria->getNoCategoria();
                                            ?></a></li>
                                <?php } ?>
                            </ul>
                        </div><!-- /.accordion-inner -->
                    </div>
                </div><!-- /.accordion-group -->
            <?php }
        } ?>
    </div><!-- /.accordion -->
</div><!-- /.category-accordions -->
<!-- ========================================= CATEGORY TREE : END ========================================= -->

