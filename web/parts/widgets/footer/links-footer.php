<?php
$categoriaController = new Produto();
/** @var CategoriaService $categoriaService */
$categoriaService = $categoriaController->getService(CATEGORIA_SERVICE);
$categorias = $categoriaService->PesquisaTodos();
?>
<!-- ============================================================= LINKS FOOTER ============================================================= -->
<div class="link-widget">
    <div class="widget">
        <h3>Categorias</h3>
        <ul>
            <?php
            /** @var CategoriaEntidade $categoria */
            foreach ($categorias as $categoria) {
                ?>
                <li><a href="<?= PASTASITE; ?>Categorias/ListarCategorias/<?=
                                           $categoria->getNoCategoriaUrlAmigavel(); ?>"><?=
                        $categoria->getNoCategoria(); ?></a>
                </li>
            <?php } ?>
        </ul>
    </div><!-- /.widget -->
</div><!-- /.link-widget -->

<div class="link-widget">
    <div class="widget">
        <h3>Formas de Pagamento</h3>
        <div class="col-xs-12 no-margin">
            <div class="payment-methods" style="text-align: left; margin-bottom: 30px;">
                <ul>
                    <li><img alt="Visa" title="Visa"
                             src="<?php echo PASTASITE; ?>images/payments/payment-visa.png"></li>
                    <li><img alt="MarterCard" title="MarterCard"
                             src="<?php echo PASTASITE; ?>images/payments/payment-master.png"></li>
                    <li><img alt="Elo" title="Elo"
                             src="<?php echo PASTASITE; ?>images/payments/payment-elo.png"></li>
                    <li><img alt="HiperCard" title="HiperCard"
                             src="<?php echo PASTASITE; ?>images/payments/payment-hiper.png"></li>
                    <li><img alt="BNDS" title="BNDS"
                             src="<?php echo PASTASITE; ?>images/payments/payment-bnds.png"></li>
                    <li><img alt="Transferêcnia Bancária" title="Transferêcnia Bancária"
                             src="<?php echo PASTASITE; ?>images/payments/payment-transferencia.png"></li>
                </ul>
            </div><!-- /.payment-methods -->
        </div>
        <div class="social-icons">
            <h3>Redes Sociais</h3>
            <ul>
                <li><a itemprop="url" title="Facebook" href="https://www.facebook.com.br/bicalhobalancas.77" class="fa fa-facebook"></a></li>
            </ul>
        </div><!-- /.social-icons -->
    </div><!-- /.widget -->
</div><!-- /.link-widget -->

<div class="link-widget">
    <div class="widget">
        <h3>Informações</h3>
        <ul>
            <li><a href="<?php echo PASTASITE; ?>Produtos/DetalharFavoritos">Favoritos</a></li>
            <li><a href="<?php echo PASTASITE; ?>Produtos/ComparaProdutos">Comparação de Produtos</a></li>
            <li><a href="<?php echo PASTASITE; ?>Categorias/Index">Serviço ao cliente</a></li>
            <li><a href="<?php echo PASTASITE; ?>Institucional/Duvidas">Dúvidas</a></li>
            <li><a href="<?php echo PASTASITE; ?>Categorias/Index">Suporte ao Produto</a></li>
        </ul>
    </div><!-- /.widget -->
</div><!-- /.link-widget -->
<!-- ============================================================= LINKS FOOTER : END ============================================================= -->