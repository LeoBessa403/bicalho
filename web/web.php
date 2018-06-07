<?php
ob_start();
$pages = array(
    'IndexWeb/Index' => 'Home',
    'Categorias/ListarCategorias' => 'Categorias',
    'Fabricantes/ListarFabricantes' => 'Fabricantes',
    'Institucional/SobreNos' => 'Sobre nós',
    'Institucional/Contatos' => 'Contatos',
    'Institucional/Duvidas' => 'Dúvidas',
    'Produtos/DetalharFavoritos' => 'Favoritos',
    'Produtos/ComparaProdutos' => 'Comparação de produtos',
);
/** @var UrlAmigavel $url */
$url = new UrlAmigavel();
/** @var Seo $seo */
$seo = new Seo($url);
/** @var Sitemap $siteMap */
$siteMap = new Sitemap();
/** @var VisitaService $visitaService */
$visitaService = new VisitaService();
$visitaService->gestaoVisita();
?>
<!DOCTYPE html>
<html lang="pt-br" itemscope itemtype="https://schema.org/WebSite">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0,user-scalable=0">

    <!-- Inclução das tags do Seo -->
    <?php require_once 'library/includes/SeoTags.php'; ?>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/colors/azul.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/style.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/owl.transitions.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/animate.min.css">

    <!-- Fonts -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/font-awesome.min.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo PASTASITE; ?>images/favicon.ico">

    <!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
    <!--[if lt IE 9]>
    <script src="<?php echo PASTASITE; ?>js/html5shiv.js"></script>
    <script src="<?php echo PASTASITE; ?>js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- GOOGLE ANALITCS -->
<?php if (ID_ANALITCS): ?>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo ID_ANALITCS; ?>"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', '<?php echo ID_ANALITCS; ?>');
    </script>
<?php endif; ?>
<!-- FIM / GOOGLE ANALITCS -->
<div class="wrapper">
    <?php
    require PASTA_RAIZ . SITE . '/parts/navigation/top-menu-bar.php';
    require PASTA_RAIZ . SITE . '/parts/section/header-2.php';

    $url->pegaControllerAction();
    ?>

    <?php require PASTA_RAIZ . SITE . '/parts/section/footer.php'; ?>
    <div class="icon-whats">
        <a class="pulse" title="Nos chame no WhatSapp"
           href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP01) ?>"
           target="_blank">
            <i class="fa fa-whatsapp"></i>
        </a>
    </div>
</div><!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<?php echo PASTASITE; ?>js/jquery-1.10.2.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery-migrate-1.2.1.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap-hover-dropdown.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/owl.carousel.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/css_browser_selector.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/echo.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.easing-1.3.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap-slider.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.raty.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.prettyPhoto.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.customSelect.min.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.mask.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.maskMoney.js"></script>
<script src="<?php echo PASTASITE; ?>js/wow.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/buttons.js"></script>
<script src="<?php echo PASTASITE; ?>js/scripts.js"></script>
<?= '<script type="text/javascript">
                        function constantes(){    
                                var dados = {
                                    "HOME" : "' . HOME . '",
                                    "INATIVO" : "' . INATIVO . '",
                                    "PASTAUPLOADS" : "' . PASTAUPLOADS . '" ,                                       
                                    "AMBIENTE" : "WEB"                                      
                                    };
                                return dados;
                        }
                </script>'; ?>
<script type="text/javascript" src="<?php echo INCLUDES; ?>validacoes.js"></script>
<script type="text/javascript" src="<?php echo PASTAADMIN; ?>js/Funcoes.js"></script>
<?php carregaJs($url); ?>
<script>
    jQuery(document).ready(function () {
        Funcoes.init();
    });
</script>
</body>
</html>
<?php
ob_end_flush();