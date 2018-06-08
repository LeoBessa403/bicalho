<?php

/**
 * LeadService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  LeadService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(LeadEntidade::ENTIDADE);
        $this->ObjetoModel = New LeadModel();
    }

    public static function salvaLead($dsEmail)
    {
        /** @var LeadService $leadService */
        $leadService = new LeadService();
        $lead[DS_EMAIL] = trim($dsEmail);
        return $leadService->Salva($lead);
    }

}