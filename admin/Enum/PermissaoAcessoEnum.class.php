<?php

/**
 * Class TipoPagamento
 */
class PermissaoAcessoEnum extends AbstractEnum
{
    const PERFIL_MASTER = 1;
    const LISTAR_AUDITORIA = 2;
    const DETALHAR_AUDITORIA = 3;
    const CADASTRO_USUARIO = 4;
    const LISTAR_USUARIO = 5;
    const MEU_PERFIL_USUARIO = 6;
    const LISTAR_PERFIL = 7;
    const CADASTRO_PERFIL = 8;
    const LISTAR_FUNCIONALIDADE = 9;
    const CADASTRO_FUNCIONALIDADE = 10;
    const FUNCIONALIDADES_PERFIL = 11;
    const CADASTRO_SEGMENTO = 12;
    const LISTAR_SEGMENTO = 13;
    const CADASTRO_CATEGORIA = 14;
    const LISTAR_CATEGORIA = 15;
    const CADASTRO_FABRICANTE = 16;
    const LISTAR_FABRICANTE = 17;
    const CADASTRO_PRODUTO = 18;
    const LISTAR_PRODUTO = 19;
    const DESATIVAR_PRODUTO = 20;
    const ATIVAR_PRODUTO = 21;
    const ATIVAR_DESTAQUE = 22;
    const DESATIVAR_DESTAQUE = 23;
    const HISTORICO_PRODUTO = 24;
    const LISTAR_VISITA = 25;
    const EMAIL_MARKETING = 26;

    public static $descricao = [
        PermissaoAcessoEnum::PERFIL_MASTER => 'Perfil Master',
        PermissaoAcessoEnum::LISTAR_AUDITORIA => 'Auditoria Listar',
        PermissaoAcessoEnum::DETALHAR_AUDITORIA => 'Auditoria Detalhar',
        PermissaoAcessoEnum::CADASTRO_USUARIO => 'Usuario Cadastrar',
        PermissaoAcessoEnum::LISTAR_USUARIO => 'Usuario Listar',
        PermissaoAcessoEnum::MEU_PERFIL_USUARIO => 'Meu Usuario',
        PermissaoAcessoEnum::LISTAR_PERFIL => 'Perfil Listar',
        PermissaoAcessoEnum::CADASTRO_PERFIL => 'Perfil Cadastrar',
        PermissaoAcessoEnum::LISTAR_FUNCIONALIDADE => 'Funcionalidade Listar',
        PermissaoAcessoEnum::FUNCIONALIDADES_PERFIL => 'Cadastro Funcionalidade',
        PermissaoAcessoEnum::CADASTRO_FUNCIONALIDADE => 'Funcionalidades Perfil',
        PermissaoAcessoEnum::CADASTRO_SEGMENTO => 'Cadastro Segmento',
        PermissaoAcessoEnum::LISTAR_SEGMENTO => 'Listar Segmento',
        PermissaoAcessoEnum::CADASTRO_CATEGORIA => 'Cadastro Categoria',
        PermissaoAcessoEnum::LISTAR_CATEGORIA => 'Listar Categoria',
        PermissaoAcessoEnum::CADASTRO_FABRICANTE => 'Cadastro Fabricante',
        PermissaoAcessoEnum::LISTAR_FABRICANTE => 'Listar Fabricante',
        PermissaoAcessoEnum::CADASTRO_PRODUTO => 'Cadastro Produto',
        PermissaoAcessoEnum::LISTAR_PRODUTO => 'Listar Produto',
        PermissaoAcessoEnum::DESATIVAR_PRODUTO => 'Desativar Produto',
        PermissaoAcessoEnum::ATIVAR_PRODUTO => 'Ativar Produto',
        PermissaoAcessoEnum::ATIVAR_DESTAQUE => 'Ativar Destaque',
        PermissaoAcessoEnum::DESATIVAR_DESTAQUE => 'Desativar Destaque',
        PermissaoAcessoEnum::HISTORICO_PRODUTO => 'Historico Produto',
        PermissaoAcessoEnum::LISTAR_VISITA => 'Listar Visita',
        PermissaoAcessoEnum::EMAIL_MARKETING => 'E-mail Marketing',
    ];

    public static $actions = [
        PermissaoAcessoEnum::PERFIL_MASTER => 'PerfilMaster',
        PermissaoAcessoEnum::LISTAR_AUDITORIA => 'ListarAuditoria',
        PermissaoAcessoEnum::DETALHAR_AUDITORIA => 'DetalharAuditoria',
        PermissaoAcessoEnum::CADASTRO_USUARIO => 'CadastroUsuario',
        PermissaoAcessoEnum::LISTAR_USUARIO => 'ListarUsuario',
        PermissaoAcessoEnum::MEU_PERFIL_USUARIO => 'MeuPerfilUsuario',
        PermissaoAcessoEnum::LISTAR_PERFIL => 'ListarPerfil',
        PermissaoAcessoEnum::CADASTRO_PERFIL => 'CadastroPerfil',
        PermissaoAcessoEnum::LISTAR_FUNCIONALIDADE => 'ListarFuncionalidade',
        PermissaoAcessoEnum::CADASTRO_FUNCIONALIDADE => 'CadastroFuncionalidade',
        PermissaoAcessoEnum::FUNCIONALIDADES_PERFIL => 'FuncionalidadesPerfil',
        PermissaoAcessoEnum::CADASTRO_SEGMENTO => 'CadastroSegmento',
        PermissaoAcessoEnum::LISTAR_SEGMENTO => 'ListarSegmento',
        PermissaoAcessoEnum::CADASTRO_CATEGORIA => 'CadastroCategoria',
        PermissaoAcessoEnum::LISTAR_CATEGORIA => 'ListarCategoria',
        PermissaoAcessoEnum::CADASTRO_FABRICANTE => 'CadastroFabricante',
        PermissaoAcessoEnum::LISTAR_FABRICANTE => 'ListarFabricante',
        PermissaoAcessoEnum::CADASTRO_PRODUTO => 'CadastroProduto',
        PermissaoAcessoEnum::LISTAR_PRODUTO => 'ListarProduto',
        PermissaoAcessoEnum::DESATIVAR_PRODUTO => 'DesativarProduto',
        PermissaoAcessoEnum::ATIVAR_PRODUTO => 'AtivarProduto',
        PermissaoAcessoEnum::ATIVAR_DESTAQUE => 'AtivarDestaque',
        PermissaoAcessoEnum::DESATIVAR_DESTAQUE => 'DesativarDestaque',
        PermissaoAcessoEnum::HISTORICO_PRODUTO => 'HistoricoProduto',
        PermissaoAcessoEnum::EMAIL_MARKETING => 'Email',
    ];
}
