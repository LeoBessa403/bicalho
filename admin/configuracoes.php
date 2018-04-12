<?php

function servidor_inicial()
{

    $servidor = "local";
//    $servidor = "web";

    if ($servidor == "web") {
        $config = array('HOME' => 'http://bicalhorefrigeracao.com/', 'HOST' => 'localhost', 'USER' => 'bicalhor_bd', 'PASS' => 'Admin101*', 'DBSA' => 'bicalhor_bd');
    } else {
        $config = array('HOME' => 'http://localhost/bicalho/', 'HOST' => 'localhost', 'USER' => 'root', 'PASS' => '', 'DBSA' => 'bicalhor_bd');
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DESENVOLVEDOR', ($servidor == "web") ? false : true);


    //////////////////////////////////////////////
    // ******* CONFIGURAÇÕES DO SITE ********** //
    //////////////////////////////////////////////

    // Título do Site
    define('DESC', 'Sistema Bicalho');
    // Tabela de pesquisa de usuário para validação
    define('TABLE_USER', 'tb_usuario');
    // Campo de login na Tabela de pesquisa de usuário para validação
    define('CAMPO_USER', 'ds_login');
    // Campo da senha na Tabela de pesquisa de usuário para validação
    define('CAMPO_PASS', 'ds_code');
    // Campo do ID (Chave Primaria) na Tabela de pesquisa de usuário para validação
    define('CAMPO_ID', 'co_usuario');
    // Campo do Perfil na Tabela de pesquisa de usuário para validação dos perfis 
    // (Ex.: cadastrante, administrador, pesquisador) Sepmre separados por (, )
    define('CAMPO_PERFIL', 'ds_perfil');
    // Atribui o nome da Sessão do usuario Logado no sitema
    define('SESSION_USER', 'user_gej');
    // Tempo de Inativadade Máximo em Minutos, aceito para deslogar do Sistema.
    define('INATIVO', 20);
    // A frequencia em dias para realizar o BACKUP NO BANCO DE DADOS
    define('BACKUP', 15);
    // TAMANHO PADRÃO DO WIDTH DAS IAMGENS A SEREM CARREGADAS
    define('TAMANHO', 600);
    // PASTA DE ARMAZENAMENTO DE UPLOADS
    define('PASTAUPLOADS', 'uploads/');
    // TABELA PARA ARMAZENAR OS DADOS PARA AUDITORIA
    define('TABELA_AUDITORIA', AuditoriaEntidade::TABELA);

    //////////////////////////////////////////////
    // ******* CONFIGURAÇÕES DE EMAIL ********** //
    //////////////////////////////////////////////

    define('HOST_EMAIL', 'mail.bicalho.com');
    define('PORTA_EMAIL', 587);
    define('USER_EMAIL', 'sistema@bicalho.com');
    define('PASS_EMAIL', 'Admin101**');

    //////////////////////////////////////////////
    // *********** GOOGLE ANALITCS  *********** //
    //////////////////////////////////////////////

    define('ID_ANALITCS', 'UA-71215942-1');


    //////////////////////////////////////////////
    // ***** SERVIDOR DE LOCALIZAÇÃO DE IP **** //
    //////////////////////////////////////////////

    define('IP_LOCALIZACAO', 'http://ip-api.com/php/');

    include_once('Class/Constantes.class.php');

}


