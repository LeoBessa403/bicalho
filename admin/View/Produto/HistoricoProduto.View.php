<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Produto
                        </a>
                    </li>
                    <li class="active">
                        Historico
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Produto
                        <small>Historico Produto</small>
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
                        Historico do Produto
                    </div>
                    <div class="panel-body">
                        <h2><?= $produto->getNoProduto(); ?></h2>
                        <div id="timeline" class="demo1">
                            <div class="timeline">
                                <div class="spine"></div>
                                <?php
                                $mes_extenso = array(
                                    'Jan' => 'Janeiro',
                                    'Feb' => 'Fevereiro',
                                    'Mar' => 'Marco',
                                    'Apr' => 'Abril',
                                    'May' => 'Maio',
                                    'Jun' => 'Junho',
                                    'Jul' => 'Julho',
                                    'Aug' => 'Agosto',
                                    'Nov' => 'Novembro',
                                    'Sep' => 'Setembro',
                                    'Oct' => 'Outubro',
                                    'Dec' => 'Dezembro'
                                );

                                /** @var ProdutoEntidade $produto */
                                $produtoDet = array_reverse($produto->getCoProdutoDetalhe());

                                $meses = '';
                                $controle = false;
                                $i = 0;
                                /** @var ProdutoDetalheEntidade $produtoDetalhe */
                                foreach ($produtoDet as $produtoDetalhe) {

                                    /** @var PessoaService $pessoaService */
                                    $pessoaService = new PessoaService();
                                    /** @var PessoaEntidade $pessoa */
                                    $pessoa = $pessoaService->PesquisaUmRegistro(
                                        $produtoDetalhe->getCoUsuario()->getCoPessoa()
                                    );
                                    $data = strtotime($produtoDetalhe->getDtCadastro());
                                    if ($meses != Valida::DataShow($produtoDetalhe->getDtCadastro(), 'Y/m')) {
                                        $controle = true;
                                        $meses = Valida::DataShow($produtoDetalhe->getDtCadastro(), 'Y/m')
                                        ?>
                                        <div class="date_separator">
                                            <span><?php
                                                $mes = date('M', $data);
                                                $dia = date('d', $data);
                                                $ano = date('Y', $data);
                                                $hor = date('H', $data);
                                                $min = date('i', $data);
                                                echo $mes_extenso["$mes"] . " de {$ano}";
                                                ?></span>
                                        </div>
                                        <ul class="columns">
                                    <?php }
//                                debug($produtoDetalhe);
                                    ?>
                                    <li>
                                        <div class="timeline_element teal">
                                            <div class="timeline_title">
                                                <span class="timeline_date"></span>
                                            </div>
                                            <div class="content">
                                                Valor de Venda: <b><?=
                                                    Valida::FormataMoeda($produtoDetalhe->getNuPrecoVenda()); ?></b></br>
                                                Alterado Por: <b><?= $pessoa->getNoPessoa(); ?></b></br>
                                                Modificado: <b><?=
                                                    "{$dia} de " . $mes_extenso["$mes"] . " de {$ano} as {$hor}:{$min}";
                                                    ?></b>
                                            </div>
                                            <div class="readmore">
                                                <a href="<?= HOME . SITE . '/Produtos/DetalharProduto/' .
                                                $produto->getNoProdutoUrlAmigavel(); ?>"
                                                   class="btn btn-default" target="_blank">
                                                    Ver Produto <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <?php
                                    if ($controle && (($i + 1) > count($produto))) {
                                        $controle = false;
                                        ?>
                                        </ul>
                                    <?php }
                                    $i++;
                                } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->