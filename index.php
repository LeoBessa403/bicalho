<?php

$servidor = "local";
//$servidor = "web";

if ($servidor == "web") {
    $config = array('HOME' => 'http://bicalhorefrigeracao.com/');
} else {
    $config = array('HOME' => 'http://localhost/bicalho/');
}

define('BASE_URL', $config['HOME']);
define('MC_ROOT', dirname(__FILE__));
$page = isset($_GET['page']) ? $_GET['page'] : 'home-2';
    $_GET['style'] = 'alt2';
    $headerStyle = 2;

$pages = array(
    'home-2' => 'Home',
    'category-grid' => 'Category - Grid/List',
    'category-grid-2' => 'Category 2 - Grid/List',
    'single-product' => 'Single Product',
    'single-product-sidebar' => 'Single Product with Sidebar',
    'about' => 'Sobre nós',
    'contact' => 'Contatos',
    'faq' => 'Dúvidas',
    'wishlist' => 'Favoritos',
    'compare' => 'Comparação de produtos',
);
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height,target-densitydpi=medium-dpi, user-scalable=0"/>
    <meta name="description"
          content="Equipamentos para Lanchonetes, Padarias, Açougues, Ambulantes. Automação e Refrigeração Comercial, Ar Condicionados e Muito Mais!"/>
    <meta name="Abstract" content="Bicalho Refrigeração"/>
    <meta name="author" content="Bicalho Refrigeração"/>
    <meta name="copyright" content="Bicalho Refrigeração"/>
    <meta name="keywords"
          content="Equipamentos para Lanchonetes, Padarias, Açougues, Ambulantes. Automação e Refrigeração Comercial, Ar Condicionados e Muito Mais!">
    <meta name="robots" content="all">
    <meta name="language" content="pt-BR"/>
    <meta name="country" content="BRA"/>
    <meta name="currency" content="R$"/>

    <title>Bicalho Refrigeração - Equipamentos de Automação e Refrigeração Comercial para o seu negócio</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/style.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/colors/azul.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/owl.transitions.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/animate.min.css">
    <link rel="canonical" href="https://www.bicalhorefrigeracao.com/"/>

    <!-- Fonts -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/font-awesome.min.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo BASE_URL; ?>assets/images/favicon.ico">

    <!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
    <!--[if lt IE 9]>
    <script src="<?php echo BASE_URL; ?>assets/js/html5shiv.js"></script>
    <script src="<?php echo BASE_URL; ?>assets/js/respond.min.js"></script>
    <![endif]-->

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-52598430-1', 'auto');
        ga('send', 'pageview');
    </script>
</head>
<body>

<div class="wrapper">
    <?php require MC_ROOT . '/parts/navigation/top-menu-bar.php'; ?>
    <?php
    if ($headerStyle == 1):
        require MC_ROOT . '/parts/section/header.php';
        require MC_ROOT . '/parts/breadcrumb/breadcrumb.php';
    else:
        require MC_ROOT . '/parts/section/header-2.php';
    endif;
    ?>
    <?php require_once MC_ROOT . '/pages/' . $page . '.php'; ?>
    <?php require MC_ROOT . '/parts/section/footer.php'; ?>
</div><!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<?php echo BASE_URL; ?>assets/js/jquery-1.10.2.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery-migrate-1.2.1.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap.min.js"></script>
<script src="//maps.google.com/maps/api/js?key=AIzaSyDDZJO4F0d17RnFoi1F2qtw4wn6Wcaqxao&sensor=false&amp;language=PT-br"></script>
<script src="<?php echo BASE_URL; ?>assets/js/gmap3.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/css_browser_selector.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/echo.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.easing-1.3.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap-slider.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.raty.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.prettyPhoto.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.customSelect.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/wow.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/buttons.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/scripts.js"></script>
</body>
</html>
