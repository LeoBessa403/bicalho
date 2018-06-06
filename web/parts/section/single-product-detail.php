<?php
$url = HOME . UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller .
    '/' . UrlAmigavel::$action . '/' . UrlAmigavel::PegaParametroUrlAmigavel();
?>
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
            $produtoPrincipal->getCoFabricante()->getNoFabriCanteUrlAmigavel(); ?>"><?=
                $produtoPrincipal->getCoFabricante()->getNoFabricante();
                ?></a>
        </div>
        <?php
        $noProduto = $produtoPrincipal->getNoProduto() . ' - ' . $produtoPrincipal->getCoFabricante()->getNoFabricante();
        $session = new Session();
        $noCookie = Valida::ValNome(DESC . '-favoritos');
        echo $session::getCookie($noCookie);
        //        $session::FinalizaCookie($noCookie);
        ?>
        <div class="social-row col-lg-12">
            <div id="fb-root"></div>
            <script>(function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = 'https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v3.0';
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
            <div class="fb-share-button"
                 data-href="<?= $url; ?>"
                 data-layout="button_count" data-size="small" data-mobile-iframe="true">
                <a target="_blank"
                   href="https://www.facebook.com/sharer/sharer.php?u=<?=
                   urlencode($url); ?>&amp;src=sdkpreparse"
                   class="fb-xfbml-parse-ignore">Compartilhar</a>
            </div>
            <span title="Compartilhe no Twitter" target="_blank" rel="nofollow"
                  class="st_twitter_hcount sharebox" href=""></span>
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP05, [$noProduto]) ?>"
               target="_blank">
                <i class="fa fa-whatsapp"></i> WhatSapp</a>
        </div>

        <div class="buttons-holder">
            <a class="btn-add-to-wishlist add-favo" href="#" title="Adicionar aos favoritos"
               data-co-produto="<?= $produtoPrincipal->getCoProduto(); ?>"> add aos favoritos</a>
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