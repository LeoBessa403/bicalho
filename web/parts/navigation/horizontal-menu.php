<?php
/** @var Segmento $segmentoController */
$segmentoController = new Segmento();
/** @var SegmentoService $segmentoService */
$segmentoService = $segmentoController->getService(SEGMENTO_SERVICE);
$segmentos = $segmentoService->PesquisaTodos();

?>
<!-- ========================================= NAVIGATION ========================================= -->
<nav id="top-megamenu-nav" class="megamenu-vertical animate-dropdown">
    <div class="container">
        <div class="yamm navbar">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#mc-horizontal-menu-collapse">
                    <span class="sr-only">Alternar de navegação</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div><!-- /.navbar-header -->
            <div class="collapse navbar-collapse" id="mc-horizontal-menu-collapse">
                <ul class="nav navbar-nav">
                    <?php
                    /** @var SegmentoEntidade $segmento */
                    foreach ($segmentos as $segmento) {
                        if (count($segmento->getCoCategoria())) {
                            ?>
                            <li class="dropdown">
                                <a href="<?= PASTASITE; ?>Segmentos/ListarSegmentos/<?= $segmento->getNoSegmentoUrlAmigavel(); ?>"
                                   class="dropdown-toggle" data-hover="dropdown"
                                ><?= $segmento->getDsSegmento(); ?></a>
                                <ul class="dropdown-menu">
                                    <?php
                                    /** @var CategoriaEntidade $categoria */
                                    foreach ($segmento->getCoCategoria() as $categoria) {
                                        ?>
                                        <li>
                                            <a href="<?= PASTASITE; ?>Categorias/ListarCategorias/<?= $categoria->getNoCategoriaUrlAmigavel();
                                            ?>"><?= $categoria->getNoCategoria(); ?></a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                        <?php }
                    } ?>
                </ul><!-- /.navbar-nav -->
            </div><!-- /.navbar-collapse -->
        </div><!-- /.navbar -->
    </div><!-- /.container -->
</nav><!-- /.megamenu-vertical -->
<!-- ========================================= NAVIGATION : END ========================================= -->