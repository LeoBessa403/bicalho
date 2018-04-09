<?php

/**
 * Class TipoPagamento
 */
class CategoriaEventoEnum extends AbstractEnum
{
    const OUTROS = 1;
    const RETIRO = 2;
    const VIGILIA = 3;
    const INTERCESSAO = 4;
    const PREGACAO = 5;
    const ADORACAO = 6;
    const TARDE_INTEGRACAO = 7;

    public static $descricao = [
        CategoriaEventoEnum::OUTROS => 'Outros',
        CategoriaEventoEnum::RETIRO => 'Retiro',
        CategoriaEventoEnum::VIGILIA => 'Vigília',
        CategoriaEventoEnum::INTERCESSAO => 'Intercessão',
        CategoriaEventoEnum::PREGACAO => 'Pregação',
        CategoriaEventoEnum::ADORACAO => 'Adoração',
        CategoriaEventoEnum::TARDE_INTEGRACAO => 'Tarde de Integração',
    ];

}
