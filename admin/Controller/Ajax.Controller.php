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

        case 'foto_produto':
            $id = $_GET['id'];
            $dsCaminho = ProdutoModel::getDsCaminhoFotoProduto($id);
            echo json_encode($dsCaminho[0]);
            break;


        case 'pesquisa_site':
            $pesquisa = $_GET['pesquisa'];
            $resultados = ProdutoModel::getPesquisaSite($pesquisa);
            $pesquisas = '';
            foreach ($resultados as $resultado){
                $pesquisas .= "<li><a href='". PASTASITE."Produtos/DetalharProduto/".$resultado['no_produto_url_amigavel']."'>".$resultado['no_produto']."</a></li>";
            }
            echo $pesquisas;
            break;




    }
} // FIM SWITCH