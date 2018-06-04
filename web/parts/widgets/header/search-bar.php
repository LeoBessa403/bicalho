<?php
$categoriaController = new Produto();
/** @var CategoriaService $categoriaService */
$categoriaService = $categoriaController->getService(CATEGORIA_SERVICE);
$categorias = $categoriaService->PesquisaTodos();
?>
<div class="contact-row">
    <div class="phone inline">
        <a class="link-phone" href="tel:06130461009" target="_blank">
            <i class="fa fa-phone"></i>(61) 3046-1009
        </a>
    </div>
    <div class="phone inline">
        <a class="link-phone" title="Nos chame no WhatSapp"
           href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP02) ?>"
           target="_blank">
            <i class="fa fa-whatsapp"></i>(61) 99370-4240
        </a>
    </div>
    <div class="contact inline">
        <a href="mailto:contato@bicalhorefrigeracao.com">
            <i class="fa fa-envelope"></i>contato@bicalhorefrigeracao.com</span>
        </a>
    </div>
</div><!-- /.contact-row -->
<!-- ============================================================= SEARCH AREA ============================================================= -->
<div class="search-area">
    <form>
        <div class="control-group">
            <input class="search-field" placeholder="Pesquisa por produto"/>
            <ul class="categories-filter animate-dropdown">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="category-grid.html">Categorias</a>
                    <ul class="dropdown-menu" role="menu">
                        <?php
                        /** @var CategoriaEntidade $categoria */
                        foreach ($categorias as $categoria) {
                            ?>
                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                       href="<?= PASTASITE; ?>Categorias/ListarCategorias/<?=
                                                       $categoria->getNoCategoriaUrlAmigavel(); ?>"><?=
                                    $categoria->getNoCategoria(); ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                </li>
            </ul>
            <a class="search-button" href="#"></a>
        </div>
    </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->