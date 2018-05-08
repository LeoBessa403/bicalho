<?php
    /** @var ProdutoEntidade $produto */
    $prod = $produto;
?>
<div class="no-margin col-xs-12 col-sm-7 body-holder">
    <div class="body">
        <div class="star-holder inline">
            <div class="star" data-score="4"></div>
        </div>
        <div class="availability"><label>Disponibilidade:</label><span class="available">  em estoque</span></div>

        <div class="title"><a href="#"><?= $prod->getNoProduto() ;?></a></div>
        <div class="brand">
            <a href="<?php echo PASTASITE; ?>Marcas/Index"><?= $prod->getCoFabricante()->getNoFabricante() ;?></a>
        </div>
        <?php
        $produto = $prod->getNoProduto().' - '. $prod->getCoFabricante()->getNoFabricante();
        ?>
        <div class="social-row">
            <span title="Compartilhe no Facebook" class="st_facebook_hcount"></span>
            <span title="Compartilhe no Twitter" class="st_twitter_hcount"></span>
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP05, [$produto]) ?>"
               target="_blank">
                <i class="fa fa-whatsapp"></i> WhatSapp
            </a>
        </div>

        <div class="buttons-holder">
            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
            <a class="btn-add-to-compare" href="#">comparar</a>
        </div>

        <div class="excerpt">
            <p><?= Valida::Resumi($prod->getDsDescricao(),300) ;?></p>
        </div>

        <div class="prices">
            <div class="price-current"><?=
                Valida::FormataMoeda($prod->getUltimoCoProdutoDetalhe()->getNuPrecoVenda(),'R$');
                ?></div>
            <div class="price-prev">de <?=
                Valida::FormataMoeda(
                        $prod->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.15
                        ,'R$');
                ?></div>
        </div>

        <div class="qnt-holder">
            <div class="le-quantity">
                <form>
                    <a class="minus" href="#reduce"></a>
                    <input name="quantity" readonly="readonly" type="text" value="1"/>
                    <a class="plus" href="#add"></a>
                </form>
            </div>
            <a id="addto-cart" href="index.php?page=cart" class="le-button huge">add ao carrinho</a>
        </div><!-- /.qnt-holder -->
    </div><!-- /.body -->

</div><!-- /.body-holder -->