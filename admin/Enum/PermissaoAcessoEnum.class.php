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
    const LISTAR_INSCRICAO = 12;
    const INSCRICAO_EDITAR = 13;
    const DETALHAR_PAGAMENTO_INSCRICAO = 14;
    const EDITAR_PARCELA_INSCRICAO = 15;
    const SOBRE_VC_INSCRICAO = 16;
    const DETALHES_INSCRICAO = 17;
    const CALENDARIO = 18;

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
        PermissaoAcessoEnum::CADASTRO_FUNCIONALIDADE => 'Funcionalidade Cadastrar',
        PermissaoAcessoEnum::LISTAR_INSCRICAO => 'Inscricao Listar',
        PermissaoAcessoEnum::INSCRICAO_EDITAR => 'Inscricao Editar',
        PermissaoAcessoEnum::DETALHAR_PAGAMENTO_INSCRICAO => 'Inscricao Detalhar Pagamento',
        PermissaoAcessoEnum::EDITAR_PARCELA_INSCRICAO => 'Inscricao Editar Parcela',
        PermissaoAcessoEnum::SOBRE_VC_INSCRICAO => 'Inscricao Sobre Vc',
        PermissaoAcessoEnum::DETALHES_INSCRICAO => 'Inscricao Detalhes',
        PermissaoAcessoEnum::CALENDARIO => 'Calendário',
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
        PermissaoAcessoEnum::LISTAR_INSCRICAO => 'ListarInscricao',
        PermissaoAcessoEnum::INSCRICAO_EDITAR => 'DetalharInscricao',
        PermissaoAcessoEnum::DETALHAR_PAGAMENTO_INSCRICAO => 'DetalharPagamento',
        PermissaoAcessoEnum::EDITAR_PARCELA_INSCRICAO => 'EditarParcela',
        PermissaoAcessoEnum::SOBRE_VC_INSCRICAO => 'SobreVcInscricao',
        PermissaoAcessoEnum::DETALHES_INSCRICAO => 'DetalhesInscricao',
        PermissaoAcessoEnum::CALENDARIO => 'Calendario',
    ];
}
