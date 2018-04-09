<?php
/* 
 * Controller résponsavel para receber e passar dados para controller responsável.
 */
include "../../library/Config.inc.php";

if (isset($_GET['valida'])) {

    switch ($_GET['valida']) {

////////////////////////////////////////////////////////////////////////
/////////////////// PARTICULARIDADES DO SISTEMA ////////////////////////
//////////////////////////////////////////////////////////////////////// 

        case 'cadastro_agenda':
            $dt = $_GET[DT_INICIO];
            $hr = $_GET['hr_inicio'];
            echo 'admin/Agenda/CadastroAgenda/'.
                Valida::GeraParametro('dt/' .$dt.'/hr/'.$hr);
            break;

        case 'pesquisa_agenda':
            if (!empty($_GET['co_agenda'])) {
                $coAgenda = $_GET['co_agenda'];
                echo 'admin/Agenda/CadastroAgenda/'.
                    Valida::GeraParametro('co_agenda/' .$coAgenda);
            }
            break;

        case 'capa_livro':
            $id = $_GET['id'];
            $livro = BibliotecaModel::PesquisaUmLivro($id);
            $capa = $livro[0];
            echo json_encode($capa);
            break;

        case 'pesquisa_livro':
            $id = $_GET['id'];
            $livro = BibliotecaModel::PesquisaUmLivro($id);
            echo $livro[0]['no_titulo'];
            break;

        case 'reservar':
            $id = $_GET['id'];
            $co_codigo_livro = BibliotecaModel::PesquisaLivroDisponivel($id);
            $dados['co_codigo_livro'] = $co_codigo_livro[0]['co_codigo_livro'];
            $dados['dt_reserva'] = Valida::DataAtualBanco();
            $dados['st_situacao'] = "R";
            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();
            $dados['co_usuario'] = $user[md5('co_usuario')];
            echo BibliotecaModel::CadastraResevaLivro($dados);
            break;


    }
} // FIM SWITCH