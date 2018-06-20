<?php
ob_start();
$url = new UrlAmigavel();
$back = new Backup();
//$entidade = new GerarEntidades();
if (in_array(UrlAmigavel::$action, UrlAmigavel::$ACESSO_PERMITIDO)):
    $url->pegaControllerAction();
    exit;
endif;
$valida = new ValidaUsuario();
$valida->validacao();
$compara = strstr(UrlAmigavel::$action, 'Exporta');
if ($compara != null):
    $url->pegaControllerAction();
    exit;
endif;
?>
    <!DOCTYPE html>
    <!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
    <!--[if IE 8]>
    <html class="ie8 no-js" lang="en"><![endif]-->
    <!--[if IE 9]>
    <html class="ie9 no-js" lang="en"><![endif]-->
    <!--[if !IE]><!-->
    <html lang="en" class="no-js">
    <!--<![endif]-->
    <!-- start: HEAD -->
    <head>
        <title>SISTEMA | <?= DESC_SIS; ?></title>
        <!-- start: META -->
        <meta charset="utf-8"/>
        <!--[if IE]>
        <meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1"/><![endif]-->
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        <!-- end: META -->
        <!-- start: MAIN CSS -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>fonts/style.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main-responsive.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/iCheck/skins/all.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/theme_navy.css" type="text/css" id="skin_color">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/css3-animation/animations.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/print.css" type="text/css" media="print"/>
        <!--[if IE 7]>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome-ie7.min.css">
        <![endif]-->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->

        <!-- end: MAIN CSS -->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"
              rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet"
              type="text/css"/>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.css">
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <!-- start: CSS REQUIRED FOR DATAPICKER -->
        <link rel="stylesheet" href="<?= INCLUDES; ?>Jcalendar.css">
        <!-- start: CSS REQUIRED FOR SELECT -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/select2/select2.css">
        <!-- start: CSS REQUIRED FOR UPLOAD -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
        <!-- start: CSS REQUIRED FOR CHECK -->
        <link rel="stylesheet"
              href="<?= PASTAADMIN; ?>plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
        <!-- start: CSS REQUIRED FOR CHECK -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/DataTables/media/css/DT_bootstrap.css">
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="<?= PASTASITE; ?>img/favicon.ico"/>
        <!-- SCRIPT GERAR GRAFICOS -->
        <script type="text/javascript" src="<?= HOME; ?>library/Helpers/includes/gera-grafico.js"></script>
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body>
    <!-- start: HEADER -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <!-- start: TOP NAVIGATION CONTAINER -->
        <div class="container">
            <div class="navbar-header">
                <!-- start: RESPONSIVE MENU TOGGLER -->
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="clip-list-2"></span>
                </button>
                <!-- end: RESPONSIVE MENU TOGGLER -->
                <!-- start: LOGO -->
                <a class="navbar-brand" href="<?= PASTAADMIN; ?>Index/Index">
                    <?= DESC_SIS; ?>
                </a>
                <!-- end: LOGO -->
            </div>
            <div class="navbar-tools">
                <!-- start: TOP NAVIGATION MENU -->
                <ul class="nav navbar-right">
                    <!-- start: USER DROPDOWN -->
                    <li class="dropdown current-user">
                        <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true"
                           href="#">
                            <?php
                            /** @var Session $us */
                            $us = $_SESSION[SESSION_USER];
                            $user = $us->getUser();
                            $noPessoa = $user[md5(NO_PESSOA)];
                            $foto = $user[md5('ds_caminho')];
                            if ($foto == ""):
                                $sexo = $user[md5('st_sexo')];
                                if ($sexo == "M"):
                                    $fotoPerfil = "avatar-homem.jpg";
                                else:
                                    $fotoPerfil = "avatar-mulher.jpg";
                                endif;
                            else:
                                $fotoPerfil = $foto;
                            endif;

                            if ($foto == ""){
                                echo '<img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME .
                                    'library/Imagens/' . $fotoPerfil . '&w=35&h=35" 
                                alt="' . $noPessoa . '" title="' . $noPessoa . '" 
                                class="circle-img" />';
                            }else{
                                echo Valida::GetMiniatura("usuarios/" . $fotoPerfil,
                                    'Leonardo', 35, 35, "circle-img");
                            }
                            ?>
                            <span class="username">
                            <?php
                            echo Valida::Resumi($noPessoa, 25);
                            ?>
                            </span>
                            <i class="clip-chevron-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<?= PASTAADMIN; ?>Usuario/MeuPerfilUsuario">
                                    <i class="clip-user-3"></i>
                                    &nbsp;Meu Usuário
                                </a>
                            </li>
                            <li>
                                <a href="<?= PASTAADMIN; ?>login/deslogar/desloga/10">
                                    <i class="clip-exit"></i>
                                    &nbsp;Sair do Sistema
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: USER DROPDOWN -->
                </ul>
                <!-- end: TOP NAVIGATION MENU -->
            </div>
        </div>
        <!-- end: TOP NAVIGATION CONTAINER -->
    </div>
    <!-- end: HEADER -->
    <!-- start: MAIN CONTAINER -->
    <div class="main-container">
        <div class="navbar-content">
            <!-- start: SIDEBAR -->
            <div class="main-navigation navbar-collapse collapse">
                <!-- start: MAIN MENU TOGGLER BUTTON -->
                <div class="navigation-toggler">
                    <i class="clip-chevron-left"></i>
                    <i class="clip-chevron-right"></i>
                </div>
                <!-- end: MAIN MENU TOGGLER BUTTON -->
                <!-- start: MAIN NAVIGATION MENU -->
                <?php
                $menu = array(
                    "Produto" => array("fa fa-group", "CadastroProduto", "ListarProduto"),
                    "Fabricante" => array("fa fa-cogs", "CadastroFabricante", "ListarFabricante"),
                    "Categoria" => array("clip-list-6", "CadastroCategoria", "ListarCategoria"),
                    "Segmento" => array("clip-tree", "CadastroSegmento", "ListarSegmento"),
                    "Visita" => array("clip-airplane", "ListarVisita"),
                    "Marketing" => array("fa-envelope fa", "Email"),
                    "Usuario" => array("fa fa-group", "MeuPerfilUsuario", "CadastroUsuario", "ListarUsuario"),
                    "Perfil" => array("clip-stack-empty", "CadastroPerfil", "ListarPerfil"),
                    "Funcionalidade" => array("fa fa-outdent", "CadastroFuncionalidade", "ListarFuncionalidade"),
                    "Acesso" => array("clip-connection-2", "ListarAcesso"),
                    "Auditoria" => array("fa fa-crosshairs", "ListarAuditoria"),
                );
                $url->GeraMenu($menu);
                ?>
                <!-- end: MAIN NAVIGATION MENU -->
            </div>
            <!-- end: SIDEBAR -->
        </div>
        <!-- start: PAGE -->
        <?php
        $url->pegaControllerAction();
        ?>
        <!-- end: PAGE -->
    </div>
    <!-- end: MAIN CONTAINER -->
    <!-- start: FOOTER -->
    <div class="footer clearfix">
        <div class="footer-inner">
            <?php
            $linhas = fopen('versao.txt', "a+");
            $versoes = fgets($linhas);
            $versao = explode('//',$versoes);
            ?>
            <?= date("Y"); ?> &copy; Leo Bessa Desenvolvimento. <b>Versão: <?= $versao[2]; ?></b>
        </div>
        <div class="footer-items">
            <span class="go-top"><i class="clip-chevron-up"></i></span>
        </div>
    </div>
    <!-- end: FOOTER -->
    <?php Modal::aviso("alerta"); ?>
    <!-- start: MAIN JAVASCRIPTS -->
    <!--[if lt IE 9]>
    <script src="<?= PASTAADMIN; ?>plugins/respond.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/excanvas.min.js"></script>
    <script type="text/javascript" src="<?= INCLUDES;?>jquery-1.10.2.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="<?= INCLUDES; ?>jquery-2.0.3.js"></script>
    <!--<![endif]-->
    <script src="<?= INCLUDES; ?>jquery-ui.js"></script>
    <script type="text/javascript" src="<?= INCLUDES; ?>jquery.mask.js"></script>
    <script type="text/javascript" src="<?= INCLUDES; ?>jquery.maskMoney.js"></script>
    <?= '<script type="text/javascript">
                        function constantes(){    
                                var dados = {
                                    "HOME" : "' . HOME . '",
                                    "INATIVO" : "' . INATIVO . '",
                                    "PASTAUPLOADS" : "' . PASTAUPLOADS . '" ,                                       
                                    "AMBIENTE" : "ADMIN"                                      
                                    };
                                return dados;
                        }
                </script>'; ?>
    <script type="text/javascript" src="<?= INCLUDES; ?>validacoes.js"></script>

    <script src="<?= PASTAADMIN; ?>plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/blockUI/jquery.blockUI.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/iCheck/jquery.icheck.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="<?= PASTAADMIN; ?>js/main.js"></script>
    <script src="<?= PASTAADMIN; ?>js/ui-animation.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.pie.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery.sparkline/jquery.sparkline.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
    <script src="<?= PASTAADMIN; ?>js/index.js"></script>

    <script src="<?= PASTAADMIN; ?>plugins/select2/select2.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/DataTables/media/js/DT_bootstrap.js"></script>
    <script src="<?= PASTAADMIN; ?>js/table-data.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/ckeditor/ckeditor.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/ckeditor/adapters/jquery.js"></script>
    <script src="<?= PASTAADMIN; ?>js/Funcoes.js"></script>
    <script src="<?= PASTAADMIN; ?>js/FullCalendar.js"></script>
    <?php carregaJs($url); ?>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script>
        jQuery(document).ready(function () {
            Funcoes.init();
            <?php
            $session = new Session();
            if($session->CheckSession(ATUALIZADO)):
            $session->FinalizaSession(ATUALIZADO);
            ?>
            Funcoes.Sucesso("<?= Mensagens::OK_ATUALIZADO;?>");
            <?php
            endif;

            if($session->CheckSession(CADASTRADO)):
            $session->FinalizaSession(CADASTRADO);
            ?>
            Funcoes.Sucesso("<?= Mensagens::OK_SALVO;?>");
            <?php
            endif;
            if($session->CheckSession(MENSAGEM)):
            ?>
            Funcoes.Informativo("<?php echo $session->getSession(MENSAGEM);?>");
            <?php
            $session->FinalizaSession(MENSAGEM);
            endif;
            ?>
            Main.init();
            TableData.init();
            Calendar.init();
            Index.init();
        });
    </script>
    </body>
    <!-- end: BODY -->
    </html>
<?php
ob_end_flush();