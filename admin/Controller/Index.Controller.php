<?php

class Index extends AbstractController
{
    function Index()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PDO $PDO */
        $PDO = $inscricaoService->getPDO();

        $Condicoes = [
            "insc." . ST_STATUS => StatusAcessoEnum::ATIVO,
        ];
        $inscricoes = $inscricaoService->PesquisaAvancada($Condicoes);
        $dados['TotalInscricoes'] = count($inscricoes);
        $dados['TotalNaoMembros'] = 0;
        $dados['TotalMembros'] = 0;
        $dados['TotalServos'] = 0;
        $dados['TotalNaoPago'] = 0;
        $dados['TotalParcial'] = 0;
        $dados['TotalConcluido'] = 0;
        $dados['TotalInscricoesRestantes'] = 0;
        $dados['TotalInscricoesCartao'] = 0;
        $dados['TotalAArrecadar'] = 0;
        $dados['TotalArrecadado'] = 0;
        $dados['TotalRetirantes'] = 0;

        /** @var InscricaoEntidade $inscricao */
        foreach ($inscricoes as $inscricao) {

            if ($inscricao->getDsMembroAtivo() == SimNaoEnum::NAO) {
                $dados['TotalNaoMembros'] = $dados['TotalNaoMembros'] + 1;
            } else {
                $dados['TotalMembros'] = $dados['TotalMembros'] + 1;
            }
            if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::SIM) {
                $dados['TotalServos'] = $dados['TotalServos'] + 1;
            }

            if (!$inscricao->getCoPagamento()) {
                $PDO->beginTransaction();
                $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_DINHEIRO;
                $pagamento[NU_PARCELAS] = 1;
                $pagamento[CO_INSCRICAO] = $inscricao->getCoInscricao();

                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento);
                $parcela[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::DINHEIRO;
                $parcela[NU_PARCELA] = 1;
                $parcela[NU_VALOR_PARCELA] = InscricaoEnum::VALOR_DINHEIRO;
                $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

                $retorno = $parcelamentoService->Salva($parcela);
                if ($retorno) {
                    $PDO->commit();
                } else {
                    $PDO->rollBack();
                }
            } elseif (!$inscricao->getCoPagamento()->getCoParcelamento()) {
                $parcela[CO_PAGAMENTO] = $inscricao->getCoPagamento()->getCoPagamento();
                $parcela[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::DINHEIRO;
                $parcela[NU_PARCELA] = 1;
                $parcela[NU_VALOR_PARCELA] = $inscricao->getCoPagamento()->getNuTotal();
                $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

                $parcelamentoService->Salva($parcela);
            }

            /** @var InscricaoEntidade $inscricao */
            $inscricao = $inscricaoService->PesquisaUmRegistro($inscricao->getCoInscricao());

            /** @var PagamentoEntidade $pagamentoInscricao */
            $pagamentoInscricao = $pagamentoService->PesquisaUmRegistro(
                $inscricao->getCoPagamento()->getCoPagamento()
            );

            if ($pagamentoInscricao->getNuParcelas() == 1
                && $pagamentoInscricao->getCoParcelamento()[0]->getCoTipoPagamento()->getCoTipoPagamento()
                == TipoPagamentoEnum::CARTAO_CREDITO
            ) {
                $dados['TotalInscricoesCartao'] = $dados['TotalInscricoesCartao'] + 1;
            }

            switch ($pagamentoInscricao->getTpSituacao()) {
                case StatusPagamentoEnum::CONCLUIDO:
                    $dados['TotalConcluido'] = $dados['TotalConcluido'] + 1;
                    if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::NAO) {
                        $dados['TotalInscricoesRestantes'] = $dados['TotalInscricoesRestantes'] + 1;
                    }
                    break;
                case StatusPagamentoEnum::NAO_INICIADA:
                    $dados['TotalNaoPago'] = $dados['TotalNaoPago'] + 1;
                    break;
                case StatusPagamentoEnum::INICIADA:
                    $dados['TotalParcial'] = $dados['TotalParcial'] + 1;
                    if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::NAO) {
                        $dados['TotalInscricoesRestantes'] = $dados['TotalInscricoesRestantes'] + 1;
                    }
                    break;
                default:
                    break;
            }
            /** @var ParcelamentoEntidade $pagamentoInsc */
            foreach ($pagamentoInscricao->getCoParcelamento() as $pagamentoInsc) {
                $dados['TotalArrecadado'] = $dados['TotalArrecadado'] + $pagamentoInsc->getNuValorParcelaPago();
            }
            $dados['TotalAArrecadar'] = $dados['TotalAArrecadar'] + $pagamentoInscricao->getNuTotal();
        }
        $dados['TotalRetirantes'] = $dados['TotalInscricoes'] - $dados['TotalServos'];

        $dados['TotalAArrecadar'] = Valida::FormataMoeda($dados['TotalAArrecadar'] - $dados['TotalArrecadado']);
        $dados['TotalArrecadado'] = Valida::FormataMoeda($dados['TotalArrecadado']);

        $this->dados = $dados;
    }

    function Registrar()
    {
        $id = "CadastroUsuario";
        $id2 = "ValidacaoPessoa";
        if (!empty($_POST[$id])) {
            /** @var UsuarioService $usuarioService */
            $usuarioService = static::getService(USUARIO_SERVICE);
            $usuarioService->salvaUsuario($_POST, $_FILES, true);
        } elseif (!empty($_POST[$id2])) {
            $indexValidador = new IndexValidador();
            /** @var InscricaoValidador $validador */
            $validador = $indexValidador->validarCPF($_POST);
            if ($validador[SUCESSO]) {
                /** @var PessoaService $pessoaService */
                $pessoaService = static::getService(PESSOA_SERVICE);
                /** @var PessoaEntidade $pessoa */
                $pessoa = $pessoaService->PesquisaUmQuando([
                    NU_CPF => Valida::RetiraMascara($_POST[NU_CPF])
                ]);
                $res = [];
                if (!empty($pessoa)) {
                    if ($pessoa->getCoUsuario()) {
                        Redireciona('admin/Index/Acessar/' . Valida::GeraParametro('acesso/U'));
                    } else {
                        $res = $pessoaService->getArrayDadosPessoa($pessoa, $res);

                        /** @var EnderecoService $enderecoService */
                        $enderecoService = $this->getService(ENDERECO_SERVICE);
                        $res = $enderecoService->getArrayDadosEndereco($pessoa->getCoEndereco(), $res);

                        /** @var ContatoService $contatoService */
                        $contatoService = $this->getService(CONTATO_SERVICE);
                        $res = $contatoService->getArrayDadosContato($pessoa->getCoContato(), $res);
                        if ($pessoa->getCoInscricao()) {
                            if ($pessoa->getCoInscricao()->getCoImagem()->getDsCaminho()):
                                $res[DS_CAMINHO] = "inscricoes/" . $pessoa->getCoInscricao()->getCoImagem()->getDsCaminho();
                                $res[CO_IMAGEM] = $pessoa->getCoInscricao()->getCoImagem()->getCoImagem();
                            endif;
                        }
                    }
                } else {
                    $res[NU_CPF] = $_POST[NU_CPF];
                }
                $this->form = UsuarioForm::Cadastrar($res, true, 12);
            } else {
                $session = new Session();
                $session->setSession(MENSAGEM, $validador[MSG]);
                $this->form = PessoaForm::ValidarCPF('Index/Acessar');
            }
        } else {
            $this->form = PessoaForm::ValidarCPF('Index/Acessar');
        }
    }

    function RecuperarSenha()
    {
        $visivel = false;
        $msg = '';
        $class = '';
        if (!empty($_POST)) {
            $visivel = true;
            $indexValidador = new IndexValidador();
            /** @var InscricaoValidador $validador */
            $validador = $indexValidador->validarCPF($_POST);
            if ($validador[SUCESSO]) {
                /** @var PessoaService $pessoaService */
                $pessoaService = static::getService(PESSOA_SERVICE);
                /** @var PessoaEntidade $pessoa */
                $pessoa = $pessoaService->PesquisaUmQuando([
                    NU_CPF => Valida::RetiraMascara($_POST[NU_CPF])
                ]);
                if (!empty($pessoa)) {
                    if ($pessoa->getCoUsuario()) {
                        $email = new Email();

                        // Índice = Nome, e Valor = Email.
                        $emails = array(
                            $pessoa->getNoPessoa() => $pessoa->getCoContato()->getDsEmail()
                        );
                        $Mensagem = "<h4>Oi " . $pessoa->getNoPessoa() . ".</h4>";
                        $Mensagem .= "<p>Sua senha de acesso ao sistema do Gej é: <b>" . $pessoa->getCoUsuario()->getDsSenha() .
                            ".</b></p>";

                        $email->setEmailDestinatario($emails)
                            ->setTitulo("[WEB GEJ] - Recuperação de senha")
                            ->setMensagem($Mensagem);

                        // Variável para validação de Emails Enviados com Sucesso.
                        $retorno = $email->Enviar();
                        if ($retorno == true) {
                            $msg = 'Sua senha foi enviada para seu email: ' . $pessoa->getCoContato()->getDsEmail();
                            $class = 1;
                        }
                    } else {
                        $msg = 'Usuário não cadastrado.';
                        $class = 4;
                    }
                } else {
                    $msg = 'Pessoa não cadastrada.';
                    $class = 2;
                }
            } else {
                $msg = $validador[MSG];
                $class = 3;
            }
        } else {
            $msg = 'O Campo CPF é obrigatório';
            $class = 3;
        }
        $this->msg = $msg;
        $this->class = $class;
        $this->visivel = $visivel;
    }

    public function Acessar()
    {
        $acesso = UrlAmigavel::PegaParametro('acesso');
        $class = 0;
        $msg = "";
        $visivel = true;

        switch ($acesso) {
            case 'B':
                $msg = "Por Favor, Preencha o Usuário e senha!";
                $class = 2;
                break;
            case 'R':
                $msg = "Acesso Restrito, Você não tem permição para acessar!";
                $class = 4;
                break;
            case 'A':
                $msg = "CPF ou senha Inválido!";
                $class = 3;
                break;
            case 'I':
                $msg = "Usuário Inativo!";
                $class = 3;
                break;
            case 'D':
                $msg = "Usuário deslogado com sucesso!";
                $class = 1;
                break;
            case 'E':
                $msg = "Sua Sessão foi Expirada!";
                $class = 2;
                break;
            case 'C':
                $msg = Mensagens::USUARIO_CADASTRADO_SUCESSO;
                $class = 1;
                break;
            case 'U':
                $msg = Mensagens::USUARIO_JA_CADASTRADO;
                $class = 2;
                break;
            default:
                $visivel = false;
                break;

        }
        $this->class = " " . $class;
        $this->visivel = $visivel;
        $this->msg = $msg;
    }

    public function Logar()
    {
        // CLASSE DE LOGAR
        $cpf = Valida::RetiraMascara(Valida::LimpaVariavel($_POST[NU_CPF]));
        $senha = Valida::LimpaVariavel($_POST[DS_SENHA]);
        if (($cpf != "") && ($senha != "")):

            /** @var UsuarioService $usuariaService */
            $usuariaService = $this->getService(USUARIO_SERVICE);
            $usuarios = $usuariaService->PesquisaTodos();

            $user = "";
            // Codifica a senha
            $senha = base64_encode(base64_encode($senha));
            /** @var UsuarioEntidade $usuario */
            foreach ($usuarios as $usuario):
                if (($usuario->getCoPessoa()->getNuCpf() == $cpf)
                    && (strtoupper($usuario->getDsCode()) == strtoupper($senha))
                ) {
                    if ($usuario->getStStatus() == "I"):
                        Redireciona(ADMIN . LOGIN . Valida::GeraParametro("acesso/I"));
                        exit();
                    endif;
                    /** @var UsuarioEntidade $user */
                    $user = $usuario;
                    break;
                }
            endforeach;
            if ($user != ""):
                /** @var AcessoService $acessoService */
                $acessoService = $this->getService(ACESSO_SERVICE);
                $acessoService->finalizaAcessos();
                $acessoService->salvarAcesso($user->getCoUsuario());

                $perfis = array();
                $no_perfis = array();
                /** @var UsuarioPerfilEntidade $perfil */
                foreach ($user->getCoUsuarioPerfil() as $perfil) {
                    $perfis[] = $perfil->getCoPerfil()->getCoPerfil();
                    $no_perfis[] = $perfil->getCoPerfil()->getNoPerfil();
                }
                $usuarioAcesso[CO_USUARIO] = $user->getCoUsuario();
                $usuarioAcesso[DS_CAMINHO] = $user->getCoImagem()->getDsCaminho();
                $usuarioAcesso[NU_CPF] = $user->getCoPessoa()->getNuCpf();
                $usuarioAcesso[NO_PESSOA] = $user->getCoPessoa()->getNoPessoa();
                $usuarioAcesso[ST_SEXO] = $user->getCoPessoa()->getStSexo();
                $usuarioAcesso[DT_FIM_ACESSO] = $acessoService->geraDataFimAcesso();
                $usuarioAcesso[CAMPO_PERFIL] = implode(',', $perfis);
                $usuarioAcesso['no_perfis'] = implode(', ', $no_perfis);

                $session = new Session();
                $session->setUser($usuarioAcesso);
                Redireciona(ADMIN . LOGADO);
            else:
                Redireciona(ADMIN . LOGIN . Valida::GeraParametro("acesso/A"));
            endif;
        else:
            Redireciona(ADMIN . LOGIN . Valida::GeraParametro("acesso/B"));
        endif;
    }

    //*************************************************************//
    //************ EXEMPLOS DE ACTION ****************************//
    //*************************************************************//

    // EXEMPLO DE ENVIO DE EMAIL
    function VerGraficos()
    {
//        $grafico = new Grafico(Grafico::PORCENTAGEM, "Teste Porcentagem", "div_porcentagem");
//        $grafico->SetDados(array("Teórica" => 80, "Prática e Teórica" => 12));
//        $grafico->GeraGrafico();
//
//        $grafico = new Grafico(Grafico::MAPA, "Teste Mapa", "div_mapa");
//        $grafico->SetDados(array(
//                "['Cidade','Acessos','Visitas']",
//                "['Natal',2761477,1285.31]",
//                "['Brasília',1324110,181.76]",
//                "['São Paulo',959574,117.27]",
//                "['Rio de Janeiro',67370,213.44]",
//                "['Belo Horizonte',52192,43.43]",
//                "['Maceio',38262,11]"
//            )
//        );
//        $grafico->GeraGrafico();
//
//        $grafico = new Grafico(Grafico::COLUNA, "Teste coluna", "div_coluna");
//        $grafico->SetDados(array(
//            "['Ano','Gordos','Obesos','Magros']",
//            "['Jan',1080,1780,180]",
//            "['Fev',1170,670,180]",
//            "['Mar',660,960,180]",
//            "['Abr',1030,130,540]"
//        ));
//        $grafico->GeraGrafico();
//
//        $grafico = new Grafico(Grafico::LINHA, "Teste Linha", "div_linha");
//        $grafico->SetDados(array(
//            "['Ano','Gordos','Obesos','Magros']",
//            "['2004',1080,1780,180]",
//            "['2005',1170,670,10]",
//            "['2006',660,960,10]",
//            "['2007',1030,130,540]"
//        ));
//        $grafico->GeraGrafico();
//
//        $grafico = new Grafico(Grafico::PIZZA, "Total do programa (Teórica)", "div_pizza");
//        $grafico->SetDados(array(
//            "['Categorias','Procedimentos/Mês']",
//            "['Meta Atingida',800]",
//            "['Meta Restante',356]",
//        ));
//        $grafico->GeraGrafico();
//
//        $grafico = new Grafico(Grafico::COLUNA, "1º Semestre", "div_coluna");
//        $grafico->SetDados(array(
//            "['Horas','Teórica','Teórico-Prática','Prática']",
//            "['Horas',256, 128 , 96]"
//        ));
//        $grafico->SetDados(array(
//            "['Horas','Horas',{ role: 'annotation' }, { role: 'style' }]",
//            "['Teórica',256, 256, 'blue']",
//            "['Teórico-Prática',128, 128, 'red']",
//            "['Prática',96, 96, 'green']",
//        ));
//        $grafico->GeraGrafico();

    }

    // EXEMPLO DE ENVIO DE EMAIL
    function EmailCliente()
    {
        $email = new Email();

        // Índice = Nome, e Valor = Email.
        $emails = array(
            "Leo Bessa Hot" => "leodjx@hotmail.com",
            "Lili Gmail" => "lililasp@gmail.com",
            "Lele Hot" => "lele.403@hotmail.com",
            "Leo Bessa Gmail" => "leonardomcbessa@gmail.com"
        );
        $Mensagem = "<h2>Olá vc ganhou um Bônus de 5 Milhões.... que piada</h2>";

        $email->setEmailDestinatario($emails)
            ->setTitulo("Email de  Teste Pra Todos")
            ->setMensagem($Mensagem);

        // Variável para validação de Emails Enviados com Sucesso.
        $this->Email = $email->Enviar();
    }


    // AÇÃO DA TELA DE PESQUISA AVANÇADA
    function ListarMembrosPesquisaAvancada()
    {

        $id = "pesquisaMembros";

        $formulario = new Form($id, "admin/Membros/ListarMembros", "Pesquisa", 12);


        $label_options = array("" => "Todos", "S" => "Ativo", "N" => "Inativo");
        $formulario
            ->setLabel("Status do Membro")
            ->setId("st_status")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Membro")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        echo $formulario->finalizaFormPesquisaAvancada();

    }

}