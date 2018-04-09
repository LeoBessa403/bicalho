<?php

/**
 * AcessoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  AcessoService extends AbstractService
{
    private $ObjetoModel;
    private $PDO;

    /**
     * AcessoService constructor.
     */
    public function __construct()
    {
        parent::__construct(AcessoEntidade::ENTIDADE);
        $this->ObjetoModel = New AcessoModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    /**
     * @param $coUsuario
     */
    public function salvarAcesso($coUsuario)
    {
        $acesso[DS_SESSION_ID] = session_id();
        $acesso[CO_USUARIO] = $coUsuario;
        $acesso[TP_SITUACAO] = StatusAcessoEnum::ATIVO;

        /** @var AcessoEntidade $meuAcesso */
        $meuAcesso = $this->PesquisaUmQuando($acesso);
        if ($meuAcesso) {
            $novoAcesso[DT_FIM_ACESSO] = $this->geraDataFimAcesso();
            $this->Salva($novoAcesso, $meuAcesso->getCoAcesso());
        } else {
            $acesso[DS_NAVEGADOR] = $this->getBrowser();
            $acesso[DS_SISTEMA_OPERACIONAL] = $this->getOS();
            $acesso[DS_DISPOSITIVO] = $this->getDispositivo();
            $acesso[DT_FIM_ACESSO] = $this->geraDataFimAcesso();
            $acesso[DT_INICIO_ACESSO] = Valida::DataHoraAtualBanco();
            $this->Salva($acesso);
        }
    }

    /**
     * @return false|string
     */
    public function geraDataFimAcesso()
    {
        return date("Y-m-d H:i:s", strtotime(Valida::DataHoraAtualBanco() . " + " . INATIVO . " minutes"));
    }

    /**
     * @param $coUsuario
     */
    public function terminaAcesso($coUsuario)
    {
        $acesso[DS_SESSION_ID] = session_id();
        $acesso[CO_USUARIO] = $coUsuario;
        $acesso[TP_SITUACAO] = StatusAcessoEnum::ATIVO;

        /** @var AcessoEntidade $meuAcesso */
        $meuAcesso = $this->PesquisaUmQuando($acesso);

        if ($meuAcesso) {
            $terminaAcesso[TP_SITUACAO] = StatusAcessoEnum::FINALIZADO;
            $terminaAcesso[DT_FIM_ACESSO] = Valida::DataHoraAtualBanco();
            $this->Salva($terminaAcesso, $meuAcesso->getCoAcesso());
        }
    }

    /**
     * @param $coUsuario
     * @return bool
     */
    public function verificaAcesso($coUsuario)
    {
        $permitido = false;
        $acesso[DS_SESSION_ID] = session_id();
        $acesso[CO_USUARIO] = $coUsuario;
        $acesso[TP_SITUACAO] = StatusAcessoEnum::ATIVO;

        /** @var AcessoEntidade $meuAcesso */
        $meuAcesso = $this->PesquisaUmQuando($acesso);

        if ($meuAcesso) {
            $ultimo_acesso = strtotime($meuAcesso->getDtFimAcesso());
            $agora = strtotime(Valida::DataHoraAtualBanco());
            if ($ultimo_acesso > $agora) {
                $novoAcesso[DT_FIM_ACESSO] = $this->geraDataFimAcesso();
                $this->Salva($novoAcesso, $meuAcesso->getCoAcesso());
                $permitido = true;
            }
        }
        return $permitido;
    }

    /**
     *
     */
    public function finalizaAcessos()
    {
        return $this->ObjetoModel->finalizaAcessos();
    }

    /**
     * @return int
     */
    public function getBrowser()
    {
        $user_agent = $_SERVER['HTTP_USER_AGENT'];

        $browser_array = array(
            'msie' => 'Internet Explorer',
            'firefox' => 'Firefox',
            'chrome' => 'Chrome',
            'safari' => 'Safari',
            'edge' => 'Edge',
            'opera' => 'Opera',
            'netscape' => 'Netscape',
            'mobile' => 'Handheld Browser'
        );

        foreach ($browser_array as $regex => $value) {
            if (preg_match('/' . $regex . '/i', $user_agent)) {
                return $value;
            }
        }

        return 'Outro';
    }

    public function getOS()
    {
        $user_agent = $_SERVER['HTTP_USER_AGENT'];

        $os_array = array(
            'windows nt 10' => 'Windows 10',
            'windows nt 6\.3' => 'Windows 8.1',
            'windows nt 6\.2' => 'Windows 8',
            'windows nt 6\.1' => 'Windows 7',
            'windows nt 6\.0' => 'Windows Vista',
            'windows nt 5\.2' => 'Windows Server 2003/XP x64',
            'windows nt 5\.1' => 'Windows XP',
            'windows xp' => 'Windows XP',
            'windows nt 5\.0' => 'Windows 2000',
            'windows me' => 'Windows ME',
            'win98' => 'Windows 98',
            'win95' => 'Windows 95',
            'win16' => 'Windows 3.11',
            'macintosh|mac os x' => 'Mac OS X',
            'mac_powerpc' => 'Mac OS 9',
            'android' => 'Android',
            'iphone' => 'iPhone',
            'ipod' => 'iPod',
            'ipad' => 'iPad',
            'webos' => 'Mobile',
            'linux' => 'Linux',
            'ubuntu' => 'Ubuntu',
            'blackberry' => 'BlackBerry',
        );

        foreach ($os_array as $regex => $value) {
            if (preg_match('/' . $regex . '/i', $user_agent)) {
                return $value;
            }
        }

        return 'Outro';
    }

    public function getDispositivo()
    {
        $user_agent = $_SERVER['HTTP_USER_AGENT'];

        $dispositivo_array = array(
            'tablet' => 'tablet',
            'iphone' => 'iphone',
            'iPod' => 'iPod',
            'ipad' => 'ipad',
            'android' => 'android',
            'webOS' => 'Mobile',
            'BlackBerry' => 'BlackBerry',
            'Symbian' => 'Symbian',
            'IsGeneric' => 'IsGeneric',
        );

        foreach ($dispositivo_array as $regex => $value) {
            if (preg_match('/' . $regex . '/i', $user_agent)) {
                return $value;
            }
        }

        return 'Computador';
    }

}