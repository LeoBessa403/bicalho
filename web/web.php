<?php
require_once 'library/Config.inc.php';

define('MC_ROOT', dirname(__FILE__));
$page = isset($_GET['page']) ? $_GET['page'] : 'home-2';
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
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/style.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/colors/azul.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/owl.transitions.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/animate.min.css">
    <link rel="canonical" href="https://www.bicalhorefrigeracao.com/"/>

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

<div class="wrapper">
    <?php
    require MC_ROOT . '/parts/navigation/top-menu-bar.php';
    require MC_ROOT . '/parts/section/header-2.php';


    $url = new UrlAmigavel();
    $url->pegaControllerAction();
    ?>

    <?php require MC_ROOT . '/parts/section/footer.php'; ?>
</div><!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<?php echo PASTASITE; ?>js/jquery-1.10.2.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery-migrate-1.2.1.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap.min.js"></script>
<script src="//maps.google.com/maps/api/js?key=AIzaSyDDZJO4F0d17RnFoi1F2qtw4wn6Wcaqxao&sensor=false&amp;language=PT-br"></script>
<script src="<?php echo PASTASITE; ?>js/gmap3.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap-hover-dropdown.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/owl.carousel.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/css_browser_selector.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/echo.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.easing-1.3.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/bootstrap-slider.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.raty.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.prettyPhoto.min.js"></script>
<script src="<?php echo PASTASITE; ?>js/jquery.customSelect.min.js"></script>
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
