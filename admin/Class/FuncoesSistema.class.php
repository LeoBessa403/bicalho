<?php

/**
 * Check.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2014, Leo Bessa
 */
class FuncoesSistema
{

    public static function retornoCheckbox($check)
    {
        $check = (isset($check)) ? $check : null;
        if ($check):
            return "S";
        else:
            return "N";
        endif;
    }

    public static function retornoSexo($sexo)
    {
        switch ($sexo) {
            case "M":
                $op = 'Masculino';
                break;
            case "F":
                $op = 'Feminino';
                break;
            default:
                $op = null;
                break;
        }

        return $op;
    }

    public static function OperacaoAuditoria($operacao)
    {

        switch ($operacao) {
            case "I":
                $op = '<span class="label label-success">INSERIU</span>';
                break;
            case "D":
                $op = '<span class="label label-danger">DELETOU</span>';
                break;
            case "U":
                $op = '<span class="label label-warning">ATUALIZOU</span>';
                break;
        }

        return $op;
    }

    public static function GeraCodigo()
    {
        $blocosLetrasEnumeros = 2;
        $sequenciaNumeros = 1;
        $sequenciaLetras = 3;
        $codigo = '';
        for ($p = 0; $p < $blocosLetrasEnumeros; $p++) {
            for ($m = 0; $m < $sequenciaLetras; $m++) {
                $numero = rand(1, 26);
                switch ($numero) {
                    case '1':
                        $letra = 'A';
                        break;
                    case '2':
                        $letra = 'B';
                        break;
                    case '3':
                        $letra = 'C';
                        break;
                    case '4':
                        $letra = 'D';
                        break;
                    case '5':
                        $letra = 'E';
                        break;
                    case '6':
                        $letra = 'F';
                        break;
                    case '7':
                        $letra = 'G';
                        break;
                    case '8':
                        $letra = 'H';
                        break;
                    case '9':
                        $letra = 'K';
                        break;
                    case '10':
                        $letra = 'I';
                        break;
                    case '11':
                        $letra = 'J';
                        break;
                    case '12':
                        $letra = 'L';
                        break;
                    case '13':
                        $letra = 'M';
                        break;
                    case '14':
                        $letra = 'N';
                        break;
                    case '15':
                        $letra = 'O';
                        break;
                    case '16':
                        $letra = 'P';
                        break;
                    case '17':
                        $letra = 'Q';
                        break;
                    case '18':
                        $letra = 'R';
                        break;
                    case '19':
                        $letra = 'S';
                        break;
                    case '20':
                        $letra = 'T';
                        break;
                    case '21':
                        $letra = 'U';
                        break;
                    case '22':
                        $letra = 'V';
                        break;
                    case '23':
                        $letra = 'Y';
                        break;
                    case '24':
                        $letra = 'X';
                        break;
                    case '25':
                        $letra = 'W';
                        break;
                    case '26':
                        $letra = 'Z';
                        break;
                }
                $codigo .= $letra;
            }

            for ($n = 0; $n < $sequenciaNumeros; $n++) {
                $numero = rand(0, 9);
                $codigo .= $numero;
            }
        }

        return $codigo;
    }

    public static function ValidaPerfilAgenda(array $res)
    {
        $us = $_SESSION[SESSION_USER];
        $user = $us->getUser();
        $meusPerfis = explode(",", $user[md5(CAMPO_PERFIL)]);

        $label_options = array();
        /** @var AgendaEntidade $agenda */
        foreach ($res as $agenda) {
            /** @var PerfilAgendaEntidade $perfilAgenda */
            foreach ($agenda->getCoPerfilAgenda() as $perfilAgenda) {
                if (in_array(PermissaoAcessoEnum::PERFIL_MASTER, $meusPerfis) ||
                    (in_array($perfilAgenda->getCoPerfil()->getCoPerfil(), $meusPerfis))) {
                    $label_options[$agenda->getCoAgenda()] = $agenda;
                }
            }
        }
        return $label_options;
    }

    public static function ValidaTarefa(array $res)
    {

        $us = $_SESSION[SESSION_USER];
        $user = $us->getUser();
        $meusPerfis = explode(",", $user[md5(CAMPO_PERFIL)]);

        $label_options = array();
        foreach ($res as $value) {
            if (in_array(1, $meusPerfis)):
                $label_options[] = $value;
            elseif (in_array(2, $meusPerfis)):
                $label_options[] = $value;
            elseif (in_array(3, $meusPerfis) && $value["co_perfil"] == 3):
                $label_options[] = $value;
            elseif (in_array(4, $meusPerfis) && $value["co_evento"] == 3): // Evento que do Perfil Lider de Evento é Responsável
                $label_options[] = $value;
            elseif (in_array(5, $meusPerfis) && in_array($value["co_perfil"], array(5, 6))):
                $label_options[] = $value;
            elseif (in_array(6, $meusPerfis) && $value["co_perfil"] == 6):
                $label_options[] = $value;
            elseif (in_array(7, $meusPerfis) && in_array($value["co_perfil"], array(7, 8))):
                $label_options[] = $value;
            elseif (in_array(8, $meusPerfis) && $value["co_perfil"] == 8):
                $label_options[] = $value;
            elseif (in_array(9, $meusPerfis) && in_array($value["co_perfil"], array(9, 10))):
                $label_options[] = $value;
            elseif (in_array(10, $meusPerfis) && $value["co_perfil"] == 10):
                $label_options[] = $value;
            elseif (in_array(11, $meusPerfis) && in_array($value["co_perfil"], array(11, 12))):
                $label_options[] = $value;
            elseif (in_array(12, $meusPerfis) && $value["co_perfil"] == 12):
                $label_options[] = $value;
            elseif (in_array(13, $meusPerfis) && in_array($value["co_perfil"], array(13, 14))):
                $label_options[] = $value;
            elseif (in_array(14, $meusPerfis) && $value["co_perfil"] == 14):
                $label_options[] = $value;
            elseif (in_array(15, $meusPerfis) && in_array($value["co_perfil"], array(15, 16))):
                $label_options[] = $value;
            elseif (in_array(16, $meusPerfis) && $value["co_perfil"] == 16):
                $label_options[] = $value;
            elseif (in_array(17, $meusPerfis) && in_array($value["co_perfil"], array(17, 18))):
                $label_options[] = $value;
            elseif (in_array(18, $meusPerfis) && $value["co_perfil"] == 18):
                $label_options[] = $value;
            elseif (in_array(19, $meusPerfis) && $value["co_perfil"] == 19):
                $label_options[] = $value;
            endif;

        }

        return $label_options;
    }

    public static function ValidaPerfilCadastro(array $res)
    {

        $us = $_SESSION[SESSION_USER];
        $user = $us->getUser();
        $meusPerfis = explode(",", $user[md5(CAMPO_PERFIL)]);

        foreach ($res as $key => $value) {
            if (in_array(1, $meusPerfis)):
                $label_options[$key] = $value;
            elseif (in_array(2, $meusPerfis)):
                $label_options[$key] = $value;
            elseif (in_array(4, $meusPerfis) && !in_array($key, array(1, 2))): // Evento que do Perfil Lider de Evento é Responsável
                $label_options[$key] = $value;
            elseif (in_array(5, $meusPerfis) && in_array($key, array(5, 6))):
                $label_options[$key] = $value;
            elseif (in_array(7, $meusPerfis) && in_array($key, array(7, 8))):
                $label_options[$key] = $value;
            elseif (in_array(9, $meusPerfis) && in_array($key, array(9, 10))):
                $label_options[$key] = $value;
            elseif (in_array(11, $meusPerfis) && in_array($key, array(11, 12))):
                $label_options[$key] = $value;
            elseif (in_array(13, $meusPerfis) && in_array($key, array(13, 14))):
                $label_options[$key] = $value;
            elseif (in_array(15, $meusPerfis) && in_array($key, array(15, 16))):
                $label_options[$key] = $value;
            elseif (in_array(17, $meusPerfis) && in_array($key, array(17, 18))):
                $label_options[$key] = $value;
            endif;
        }
        return $label_options;
    }

    public static function StatusTarefa($status)
    {

        switch ($status) {
            case "C":
                $st = '<i class="fa fa-check-circle alert-success"></i>';
                break;
            case "N":
                $st = '<i class="fa fa-exclamation-triangle alert-warning"></i>';
                break;
            case "A":
                $st = '<i class="fa fa-info-circle alert-info"></i>';
                break;
            case "I":
                $st = '<i class="fa fa-times-circle alert-danger"></i>';
                break;
        }

        return $st;
    }

    public static function StatusTarefaView($status)
    {

        switch ($status) {
            case "C":
                $st = '<span class="label label-success"><i class="fa fa-check-circle"></i> CONCLUIDA</span>';
                break;
            case "N":
                $st = '<span class="label label-warning"><i class="fa fa-exclamation-triangle"></i> NÃO INICIADA</span>';
                break;
            case "A":
                $st = '<span class="label label-info"><i class="fa fa-info-circle"></i> EM ANDAMENTO</span>';
                break;
            case "I":
                $st = '<span class="label label-danger"><i class="fa fa-times-circle"></i> INATIVA</span>';
                break;
        }

        return $st;
    }

    public static function StatusPrioridade($status)
    {

        switch ($status) {
            case 1:
                $st = '<span class="label label-danger">URGENTE</span>';
                break;
            case 2:
                $st = '<span class="label label-warning">ALTA</span>';
                break;
            case 3:
                $st = '<span class="label label-info">MÉDIA</span>';
                break;
            case 4:
                $st = '<span class="label label-success">BAIXA</span>';
                break;
        }

        return $st;
    }

    public static function SituacaoUsuario($st)
    {

        switch ($st) {
            case "A":
                $op = '<span class="label label-success">ATIVO</span>';
                break;
            case "I":
                $op = '<span class="label label-danger">INATIVO</span>';
                break;
        }

        return $op;
    }

    public static function StatusAcesso($st)
    {

        switch ($st) {
            case "A":
                $op = '<span class="label label-success">ATIVO</span>';
                break;
            case "F":
                $op = '<span class="label label-primary">FINALIZADO</span>';
                break;
        }

        return $op;
    }

    public static function SituacaoUsuarioLabel($st)
    {

        switch ($st) {
            case "A":
                $op = 'ATIVO';
                break;
            case "I":
                $op = 'INATIVO';
                break;
        }

        return $op;
    }

    public static function SituacaoSimNao($st)
    {
        switch ($st) {
            case "S":
                $op = '<span class="label label-success">SIM</span>';
                break;
            default:
                $op = '<span class="label label-danger">NÃO</span>';
                break;
        }

        return $op;
    }

    public static function Pagamento($st)
    {
        switch ($st) {
            case "C":
                $op = '<span class="label label-success">Concluído</span>';
                break;
            case "N":
                $op = '<span class="label label-danger">Não Pago</span>';
                break;
            case "I":
                $op = '<span class="label label-info">Parcial</span>';
                break;
            default:
                $op = '';
                break;
        }

        return $op;
    }

    public static function TamanhoCamisa($tm)
    {
        $op = 'Sem tamanho';
        switch ($tm) {
            case 1:
                $op = 'BL PP';
                break;
            case 2:
                $op = 'BL P';
                break;
            case 3:
                $op = 'BL M';
                break;
            case 4:
                $op = 'BL G';
                break;
            case 5:
                $op = 'BL GG';
                break;
            case 6:
                $op = 'P';
                break;
            case 7:
                $op = 'M';
                break;
            case 8:
                $op = 'G';
                break;
            case 9:
                $op = 'GG';
                break;
            case 10:
                $op = 'XG';
                break;
        }

        return $op;
    }

    public static function getBadgeLabel($operacao)
    {
        switch ($operacao) {
            case AuditoriaEnum::DELETE:
                $classBadge = 'danger';
                break;
            case AuditoriaEnum::INSERT:
                $classBadge = 'green';
                break;
            case AuditoriaEnum::UPDATE:
                $classBadge = 'info';
                break;
            default:
                $classBadge = 'inverse';
                break;
        }
        return $classBadge;
    }

    public static function getDsCampoLabel($noCampo)
    {
        $campo = '';
        $tipo = strtolower(substr($noCampo, 0, 2));
        switch ($tipo) {
            case 'st':
                $campo = str_replace('st_', 'situação_', $noCampo);
                break;
            case 'tp':
                $campo = str_replace('tp_', 'tipo_', $noCampo);
                break;
            case 'dt':
                $campo = str_replace('dt_', 'data_', $noCampo);
                break;
            case 'co':
                $campo = str_replace('co_', 'código_', $noCampo);
                break;
            case 'sg':
                $campo = str_replace('sg_', 'sigla_', $noCampo);
                break;
            case 'no':
                $campo = str_replace('no_', 'nome_', $noCampo);
                break;
            case 'ds':
                $campo = str_replace('ds_', 'descrição_', $noCampo);
                break;
            case 'nu':
                $campo = str_replace('nu_', 'número_', $noCampo);
                break;
            default:
                break;
        }

        $campo = str_replace('_', ' ', $campo);
        $campo = ucwords($campo);

        return $campo;
    }

}