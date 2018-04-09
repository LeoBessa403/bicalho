<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Inscrições
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Inscrições
                        <small>Listar Inscrições</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Inscrições
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Inscrições');
                        ?>
                        <h2>
                            <small>Inscrições Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::deletaRegistro(UrlAmigavel::$controller);
                        Modal::confirmacao("confirma_Inscricao");
                        $arrColunas = array('Nome', 'Telefone', 'CPF / RG', 'Inscrição', 'Nascimento',
                            'Servo', 'Membro', 'Pagamento', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        $documento = '';
                        $acao = '';

                        /** @var InscricaoEntidade $inscricao */
                        foreach ($result as $inscricao):
                            if ($inscricao->getCoPessoa()->getNuCpf()) {
                                $documento = Valida::MascaraCpf($inscricao->getCoPessoa()->getNuCpf());
                            } elseif ($inscricao->getCoPessoa()->getNuRG()) {
                                $documento = $inscricao->getCoPessoa()->getNuRG();
                            }
                            if (Valida::ValPerfil(PermissaoAcessoEnum::INSCRICAO_EDITAR)) {
                                $acao = '<a href="' . PASTAADMIN . 'Inscricao/DetalharInscricao/'
                                    . Valida::GeraParametro("insc/" . $inscricao->getCoInscricao()) . '" 
                                class="btn btn-primary tooltips" 
                                data-original-title="Visualizar Registro" data-placement="top">
                                <i class="fa fa-clipboard"></i>
                                </a>
                                 <a href="' . PASTAADMIN . 'Inscricao/DetalharPagamento/' .
                                    Valida::GeraParametro("insc/" . $inscricao->getCoInscricao()) . '" 
                                 class="btn btn-dark-grey tooltips" 
                                   data-original-title="Detalhes do Pagamento" data-placement="top">
                                    <i class="fa fa-indent"></i>
                                </a>
                                 <a data-toggle="modal" role="button" class="btn btn-bricky tooltips deleta" 
                                 id="' . $inscricao->getCoInscricao() . '" 
                                   href="#' . UrlAmigavel::$controller . '" data-original-title="Inativar Inscrição" 
                                   data-placement="top">
                                    <i class="fa fa-trash-o"></i>
                                 </a>';
                            }
                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1()));
                            $grid->setColunas($documento);
                            $grid->setColunas(Valida::DataShow($inscricao->getDtCadastro()));
                            $grid->setColunas(Valida::DataShow($inscricao->getCoPessoa()->getDtNascimento()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getStEquipeTrabalho()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getDsMembroAtivo()));
                            $grid->setColunas(FuncoesSistema::Pagamento($inscricao->getCoPagamento()->getTpSituacao()));
                            if (Valida::ValPerfil(PermissaoAcessoEnum::INSCRICAO_EDITAR)) {
                                $grid->setColunas($acao, 3);
                            } else {
                                $grid->setColunas('', 0);
                            }
                            $grid->criaLinha(
                                $inscricao->getCoInscricao(),
                                ($inscricao->getStStatus() == StatusAcessoEnum::DESISTENTE)
                                    ? true : null
                            );
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->