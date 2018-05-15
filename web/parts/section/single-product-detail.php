<div class="no-margin col-xs-12 col-sm-7 body-holder">
    <div class="body">
        <div class="star-holder inline">
            <div class="star" data-score="<?= rand(3, 5); ?>"></div>
        </div>
        <div class="availability"><label>Disponibilidade:</label><span> <?=
                FuncoesSistema::ProdutoEstoqueLabel($produtoPrincipal->getNuEstoque());
                ?></span></div>

        <div class="title"><a href="#"><?= $produtoPrincipal->getNoProduto(); ?></a></div>
        <div class="brand">
            <a href="<?php echo PASTASITE; ?>Fabricantes/ListarFabricantes/<?=
            Valida::GeraParametro(CO_FABRICANTE . "/" .
                $produtoPrincipal->getCoFabricante()->getCoFabricante()); ?>"><?=
                $produtoPrincipal->getCoFabricante()->getNoFabricante();
                ?></a>
        </div>
        <?php
        $noProduto = $produtoPrincipal->getNoProduto() . ' - ' . $produtoPrincipal->getCoFabricante()->getNoFabricante();
        ?>
        <div class="social-row">
            <span title="Compartilhe no Facebook" class="st_facebook_hcount"></span>
            <span title="Compartilhe no Twitter" class="st_twitter_hcount"></span>
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP05, [$noProduto]) ?>"
               target="_blank">
                <i class="fa fa-whatsapp"></i> WhatSapp
            </a>
        </div>

        <div class="buttons-holder">
            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
            <a class="btn-add-to-compare" href="#">comparar</a>
        </div>

        <div class="excerpt">
            <p><?= Valida::Resumi($produtoPrincipal->getDsDescricao(), 280); ?></p>
        </div>

        <div class="prices">
            <div class="price-current"><?=
                Valida::FormataMoeda($produtoPrincipal->getUltimoCoProdutoDetalhe()->getNuPrecoVenda(), 'R$');
                ?></div>
            <div class="price-prev">de <?=
                Valida::FormataMoeda(
                    floor($produtoPrincipal->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                    , 'R$');
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
            <a class="le-button huge" title="Nos chame no WhatSapp"
               href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP05, [$noProduto]) ?>"
               target="_blank">Saber Mais</a>
        </div><!-- /.qnt-holder -->
    </div><!-- /.body -->

</div><!-- /.body-holder -->