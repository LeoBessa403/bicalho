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
            echo 'admin/Agenda/CadastroAgenda/' .
                Valida::GeraParametro('dt/' . $dt . '/hr/' . $hr);
            break;

        case 'pesquisa_agenda':
            if (!empty($_GET['co_agenda'])) {
                $coAgenda = $_GET['co_agenda'];
                echo 'admin/Agenda/CadastroAgenda/' .
                    Valida::GeraParametro('co_agenda/' . $coAgenda);
            }
            break;

        case 'foto_produto':
            $id = $_GET['id'];
            $dsCaminho = ProdutoModel::getDsCaminhoFotoProduto($id);
            echo json_encode($dsCaminho[0]);
            break;


        case 'pesquisa_site':
            $pesquisa = $_GET['pesquisa'];
            $pesquisas = '';
            $produtos = ProdutoModel::getPesquisaSite($pesquisa);
            foreach ($produtos as $produto) {
                $pesquisas .= "<li><a href='" . PASTASITE . "Produtos/DetalharProduto/" .
                    $produto['no_produto_url_amigavel'] . "'>" . $produto['no_produto'] . "</a></li>";
            }
            $categorias = CategoriaModel::getPesquisaSite($pesquisa);
            foreach ($categorias as $categoria) {
                $pesquisas .= "<li><a href='" . PASTASITE . "Categorias/ListarCategorias/" .
                    $categoria['no_categoria_url_amigavel'] . "'>" . $categoria['no_categoria'] . "</a></li>";
            }
            $fabricantes = FabricanteModel::getPesquisaSite($pesquisa);
            foreach ($fabricantes as $fabricante) {
                $pesquisas .= "<li><a href='" . PASTASITE . "Fabricantes/ListarFabricantes/" .
                    $fabricante['no_fabricante_url_amigavel'] . "'>" . $fabricante['no_fabricante'] . "</a></li>";
            }
            $segmentos = SegmentoModel::getPesquisaSite($pesquisa);
            foreach ($segmentos as $segmento) {
                $pesquisas .= "<li><a href='" . PASTASITE . "Segmentos/ListarSegmentos/" .
                    $segmento['no_segmento_url_amigavel'] . "'>" . $segmento['ds_segmento'] . "</a></li>";
            }
            echo $pesquisas;
            break;

        case 'cadastro_lead':
            $email = $_GET['email'];
            $cadastroLeaad = LeadService::salvaLead($email);
            echo $cadastroLeaad;
            break;

    }
} // FIM SWITCH