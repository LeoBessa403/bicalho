CREATE DATABASE IF NOT EXISTS gej_bd;

USE gej_bd;

DROP TABLE IF EXISTS tb_acesso;


CREATE TABLE `tb_acesso` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) NOT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `ds_navegador` varchar(40) NOT NULL,
  `ds_sistema_operacional` varchar(40) NOT NULL,
  `ds_dispositivo` varchar(40) NOT NULL,
  `tp_situacao` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`),
  KEY `FK_TB_ACESSO_TB_USUARIO1_IDX` (`co_usuario`),
  CONSTRAINT `FK_TB_ACESSO_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `tb_usuario` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("257","bmvlnqo22629m70i2uf2oavji5","2018-02-19 16:19:34","2018-03-05 13:37:35","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("258","uuu8ljb6akcnvupurqscsf6ml6","2018-03-05 13:05:40","2018-03-05 13:10:33","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("259","uuu8ljb6akcnvupurqscsf6ml6","2018-03-05 13:11:36","2018-03-05 13:12:15","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("260","uuu8ljb6akcnvupurqscsf6ml6","2018-03-05 13:12:24","2018-03-05 13:12:41","Firefox","Windows 10","Computador","F","2");

INSERT INTO tb_acesso VALUES("261","uuu8ljb6akcnvupurqscsf6ml6","2018-03-05 13:12:45","2018-03-05 14:33:59","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("262","g2rrtc1t4st2ii80mqa409rhr6","2018-03-06 10:10:08","2018-03-06 10:40:15","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("263","g2rrtc1t4st2ii80mqa409rhr6","2018-03-06 11:42:31","2018-03-06 12:11:09","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("264","g2rrtc1t4st2ii80mqa409rhr6","2018-03-06 13:53:45","2018-03-06 15:17:35","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("265","g2rrtc1t4st2ii80mqa409rhr6","2018-03-06 15:18:12","2018-03-06 15:47:18","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("266","ah5v1mru66qd0lqpvg5naeh6m4","2018-03-12 14:55:05","2018-03-12 16:17:06","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("267","ah5v1mru66qd0lqpvg5naeh6m4","2018-03-12 16:17:35","2018-03-12 16:56:59","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("268","kdi7urn6v8akenpiamkkf8kht3","2018-03-15 11:35:56","2018-03-15 11:57:13","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("269","kdi7urn6v8akenpiamkkf8kht3","2018-03-15 16:19:21","2018-03-15 16:43:57","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("270","kdi7urn6v8akenpiamkkf8kht3","2018-03-15 17:02:25","2018-03-15 18:25:34","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("271","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 14:35:28","2018-03-16 14:46:01","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("272","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 14:46:12","2018-03-16 14:47:10","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("273","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 14:47:14","2018-03-16 15:28:37","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("274","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 15:40:37","2018-03-16 15:40:54","Firefox","Windows 10","Computador","F","2");

INSERT INTO tb_acesso VALUES("275","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 15:40:57","2018-03-16 16:34:33","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("276","kdi7urn6v8akenpiamkkf8kht3","2018-03-16 16:34:38","2018-03-16 18:07:56","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("277","kdi7urn6v8akenpiamkkf8kht3","2018-03-19 10:07:12","2018-03-19 11:54:15","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("278","kdi7urn6v8akenpiamkkf8kht3","2018-03-19 14:48:07","2018-03-19 16:28:38","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("279","kdi7urn6v8akenpiamkkf8kht3","2018-03-19 16:38:55","2018-03-19 17:19:07","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("280","kdi7urn6v8akenpiamkkf8kht3","2018-03-20 14:11:34","2018-03-20 14:37:39","Firefox","Windows 10","Computador","F","1");




DROP TABLE IF EXISTS tb_agenda;


CREATE TABLE `tb_agenda` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_dia_todo` varchar(1) DEFAULT NULL COMMENT 'N - Não / S - SIm',
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_categoria_agenda` int(11) NOT NULL,
  `co_evento` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`co_agenda`,`co_usuario`,`co_categoria_agenda`,`co_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO tb_agenda VALUES("1","vamos ver neh","2018-03-19 10:17:58","N","2018-03-17 16:00:00","2018-03-20 12:00:00","Vígília Alegria que vem de Deus","1","5","0");

INSERT INTO tb_agenda VALUES("2","SO PRA VER","2018-03-19 10:41:48","N","2018-03-01 20:00:00","","Formação dos Anjos","1","4","0");

INSERT INTO tb_agenda VALUES("4","NOssa próxima reunião","2018-03-19 15:18:53","N","2018-03-15 16:00:00","","Reunião Extraordinária","1","1","1");

INSERT INTO tb_agenda VALUES("5","gergre ger gregre ","2018-03-19 15:25:59","N","2018-03-14 20:00:00","","novo evento","1","6","0");

INSERT INTO tb_agenda VALUES("6","nossa intercessão","2018-03-19 15:26:46","N","2018-03-07 20:00:00","","Intercessão missão EAC","1","6","0");




DROP TABLE IF EXISTS tb_auditoria;


CREATE TABLE `tb_auditoria` (
  `co_auditoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("214","2018-02-19 15:15:19","Via Site","0");

INSERT INTO tb_auditoria VALUES("215","2018-02-19 15:30:01","Via Site","0");

INSERT INTO tb_auditoria VALUES("216","2018-02-19 15:30:39","Via Site","0");

INSERT INTO tb_auditoria VALUES("217","2018-02-19 15:44:10","Via Site","0");

INSERT INTO tb_auditoria VALUES("218","2018-02-19 15:46:06","Via Site","0");

INSERT INTO tb_auditoria VALUES("219","2018-02-19 15:47:45","Via Site","0");

INSERT INTO tb_auditoria VALUES("220","2018-02-19 15:49:49","Via Site","0");

INSERT INTO tb_auditoria VALUES("221","2018-02-19 16:11:08","Via Site","0");

INSERT INTO tb_auditoria VALUES("222","2018-02-19 16:11:46","Via Site","0");

INSERT INTO tb_auditoria VALUES("223","2018-02-19 16:19:24","Via Site","0");

INSERT INTO tb_auditoria VALUES("224","2018-02-19 16:19:34","Via Site","0");

INSERT INTO tb_auditoria VALUES("225","2018-02-19 16:19:54","Master","1");

INSERT INTO tb_auditoria VALUES("226","2018-02-19 16:25:58","Master","1");

INSERT INTO tb_auditoria VALUES("227","2018-02-19 16:27:30","Master","1");

INSERT INTO tb_auditoria VALUES("228","2018-02-19 16:28:14","Master","1");

INSERT INTO tb_auditoria VALUES("229","2018-02-19 16:28:20","Master","1");

INSERT INTO tb_auditoria VALUES("230","2018-02-19 16:28:24","Master","1");

INSERT INTO tb_auditoria VALUES("231","2018-02-19 16:28:38","Master","1");

INSERT INTO tb_auditoria VALUES("232","2018-02-19 16:28:53","Master","1");

INSERT INTO tb_auditoria VALUES("233","2018-02-19 16:29:15","Master","1");

INSERT INTO tb_auditoria VALUES("234","2018-02-19 16:30:47","Master","1");

INSERT INTO tb_auditoria VALUES("235","2018-02-19 16:39:22","Master","1");

INSERT INTO tb_auditoria VALUES("236","2018-02-19 16:41:03","Master","1");

INSERT INTO tb_auditoria VALUES("237","2018-02-19 16:41:56","Master","1");

INSERT INTO tb_auditoria VALUES("238","2018-02-19 16:58:51","Master","1");

INSERT INTO tb_auditoria VALUES("239","2018-02-19 17:00:34","Master","1");

INSERT INTO tb_auditoria VALUES("240","2018-02-19 17:01:05","Master","1");

INSERT INTO tb_auditoria VALUES("241","2018-02-19 17:23:38","Master","1");

INSERT INTO tb_auditoria VALUES("242","2018-02-19 17:23:45","Master","1");

INSERT INTO tb_auditoria VALUES("243","2018-02-19 17:25:24","Master","1");

INSERT INTO tb_auditoria VALUES("244","2018-02-19 17:25:28","Master","1");

INSERT INTO tb_auditoria VALUES("245","2018-02-19 17:27:31","Master","1");

INSERT INTO tb_auditoria VALUES("246","2018-02-19 17:27:48","Master","1");

INSERT INTO tb_auditoria VALUES("247","2018-02-19 17:27:56","Master","1");

INSERT INTO tb_auditoria VALUES("248","2018-02-19 17:28:27","Master","1");

INSERT INTO tb_auditoria VALUES("249","2018-02-19 17:29:01","Master","1");

INSERT INTO tb_auditoria VALUES("250","2018-02-19 17:29:12","Master","1");

INSERT INTO tb_auditoria VALUES("251","2018-03-05 13:11:27","Via Site","0");

INSERT INTO tb_auditoria VALUES("252","2018-03-05 13:12:09","Master","1");

INSERT INTO tb_auditoria VALUES("253","2018-03-05 13:17:28","Master","1");

INSERT INTO tb_auditoria VALUES("254","2018-03-05 13:17:43","Master","1");

INSERT INTO tb_auditoria VALUES("255","2018-03-05 13:41:34","Master","1");

INSERT INTO tb_auditoria VALUES("256","2018-03-05 13:41:45","Master","1");

INSERT INTO tb_auditoria VALUES("257","2018-03-06 11:46:43","Master","1");

INSERT INTO tb_auditoria VALUES("258","2018-03-06 11:50:16","Master","1");

INSERT INTO tb_auditoria VALUES("259","2018-03-06 11:51:00","Via Site","0");

INSERT INTO tb_auditoria VALUES("260","2018-03-06 14:21:14","Master","1");

INSERT INTO tb_auditoria VALUES("261","2018-03-06 14:39:49","Master","1");

INSERT INTO tb_auditoria VALUES("262","2018-03-06 14:57:31","Master","1");

INSERT INTO tb_auditoria VALUES("263","2018-03-06 15:23:40","Master","1");

INSERT INTO tb_auditoria VALUES("264","2018-03-06 15:25:00","Master","1");

INSERT INTO tb_auditoria VALUES("265","2018-03-06 15:27:30","Via Site","0");

INSERT INTO tb_auditoria VALUES("266","2018-03-15 14:52:10","Via Site","0");

INSERT INTO tb_auditoria VALUES("267","2018-03-15 16:48:56","Via Site","0");

INSERT INTO tb_auditoria VALUES("268","2018-03-16 14:45:52","Master","1");

INSERT INTO tb_auditoria VALUES("269","2018-03-16 14:48:22","iiii, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("270","2018-03-16 17:05:02","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("271","2018-03-16 17:06:44","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("272","2018-03-16 17:08:24","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("273","2018-03-16 17:08:34","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("274","2018-03-16 17:17:43","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("275","2018-03-19 10:17:58","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("276","2018-03-19 10:41:48","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("277","2018-03-19 14:49:21","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("278","2018-03-19 15:18:53","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("279","2018-03-19 15:23:32","Via Site","0");

INSERT INTO tb_auditoria VALUES("280","2018-03-19 15:25:59","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("281","2018-03-19 15:26:46","Coordenador Administrativo, Comissão, Membro, Master","1");

INSERT INTO tb_auditoria VALUES("282","2018-03-20 14:12:54","Via Site","0");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL COMMENT 'Valor do registro Antes de Atualizar ou Deletar',
  `ds_item_atual` varchar(255) DEFAULT NULL COMMENT 'Valor do Registro que passou a ser apos o Cadastro ou Atualização\n',
  `ds_campo` varchar(120) DEFAULT NULL COMMENT 'Nome do campo da Tabela de Origem',
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=863 DEFAULT CHARSET=latin1;


INSERT INTO tb_auditoria_itens VALUES("1","","160","nu_total","6");

INSERT INTO tb_auditoria_itens VALUES("2","","1","nu_parcelas","6");

INSERT INTO tb_auditoria_itens VALUES("3","","138","co_inscricao","6");

INSERT INTO tb_auditoria_itens VALUES("4","","143","co_pagamento","7");

INSERT INTO tb_auditoria_itens VALUES("5","","2","co_tipo_pagamento","7");

INSERT INTO tb_auditoria_itens VALUES("6","","1","nu_parcela","7");

INSERT INTO tb_auditoria_itens VALUES("7","","160","nu_valor_parcela","7");

INSERT INTO tb_auditoria_itens VALUES("8","","2018-02-19","dt_vencimento","7");

INSERT INTO tb_auditoria_itens VALUES("9","","QNF 8 casa 32 teste","ds_endereco","8");

INSERT INTO tb_auditoria_itens VALUES("10","","","ds_complemento","8");

INSERT INTO tb_auditoria_itens VALUES("11","","","ds_bairro","8");

INSERT INTO tb_auditoria_itens VALUES("12","","","nu_cep","8");

INSERT INTO tb_auditoria_itens VALUES("13","","","no_cidade","8");

INSERT INTO tb_auditoria_itens VALUES("14","","DF","sg_uf","8");

INSERT INTO tb_auditoria_itens VALUES("15","","34543543543","nu_tel1","9");

INSERT INTO tb_auditoria_itens VALUES("16","","","nu_tel2","9");

INSERT INTO tb_auditoria_itens VALUES("17","","","nu_tel3","9");

INSERT INTO tb_auditoria_itens VALUES("18","","gggg4reg@tghtrhrjytj.com.br","ds_email","9");

INSERT INTO tb_auditoria_itens VALUES("19","","07759869177","nu_cpf","10");

INSERT INTO tb_auditoria_itens VALUES("20","","LEOGER G","no_pessoa","10");

INSERT INTO tb_auditoria_itens VALUES("21","","","nu_rg","10");

INSERT INTO tb_auditoria_itens VALUES("22","","2018-02-19 16:11:46","dt_cadastro","10");

INSERT INTO tb_auditoria_itens VALUES("23","","2003-02-13","dt_nascimento","10");

INSERT INTO tb_auditoria_itens VALUES("24","","M","st_sexo","10");

INSERT INTO tb_auditoria_itens VALUES("25","","186","co_endereco","10");

INSERT INTO tb_auditoria_itens VALUES("26","","187","co_contato","10");

INSERT INTO tb_auditoria_itens VALUES("27","","leoger-g-5a8b21728ac9f.PNG","ds_caminho","11");

INSERT INTO tb_auditoria_itens VALUES("28","","","ds_pastoral","12");

INSERT INTO tb_auditoria_itens VALUES("29","","N","ds_retiro","12");

INSERT INTO tb_auditoria_itens VALUES("30","","2018-02-19 16:11:46","dt_cadastro","12");

INSERT INTO tb_auditoria_itens VALUES("31","","N","ds_membro_ativo","12");

INSERT INTO tb_auditoria_itens VALUES("32","","","ds_situacao_atual_grupo","12");

INSERT INTO tb_auditoria_itens VALUES("33","","2","nu_camisa","12");

INSERT INTO tb_auditoria_itens VALUES("34","","THRTRH","no_responsavel","12");

INSERT INTO tb_auditoria_itens VALUES("35","","53634745754","nu_tel_responsavel","12");

INSERT INTO tb_auditoria_itens VALUES("36","","A","st_status","12");

INSERT INTO tb_auditoria_itens VALUES("37","","gerg","ds_descricao","12");

INSERT INTO tb_auditoria_itens VALUES("38","","","ds_alimentacao","12");

INSERT INTO tb_auditoria_itens VALUES("39","","","ds_medicacao","12");

INSERT INTO tb_auditoria_itens VALUES("40","","N","st_equipe_trabalho","12");

INSERT INTO tb_auditoria_itens VALUES("41","","184","co_pessoa","12");

INSERT INTO tb_auditoria_itens VALUES("42","","181","co_imagem","12");

INSERT INTO tb_auditoria_itens VALUES("43","","150","nu_total","13");

INSERT INTO tb_auditoria_itens VALUES("44","","1","nu_parcelas","13");

INSERT INTO tb_auditoria_itens VALUES("45","","139","co_inscricao","13");

INSERT INTO tb_auditoria_itens VALUES("46","","144","co_pagamento","14");

INSERT INTO tb_auditoria_itens VALUES("47","","1","co_tipo_pagamento","14");

INSERT INTO tb_auditoria_itens VALUES("48","","1","nu_parcela","14");

INSERT INTO tb_auditoria_itens VALUES("49","","150","nu_valor_parcela","14");

INSERT INTO tb_auditoria_itens VALUES("50","","2018-02-19","dt_vencimento","14");

INSERT INTO tb_auditoria_itens VALUES("51","","150","nu_total","15");

INSERT INTO tb_auditoria_itens VALUES("52","","1","nu_parcelas","15");

INSERT INTO tb_auditoria_itens VALUES("53","","137","co_inscricao","15");

INSERT INTO tb_auditoria_itens VALUES("54","","145","co_pagamento","16");

INSERT INTO tb_auditoria_itens VALUES("55","","1","co_tipo_pagamento","16");

INSERT INTO tb_auditoria_itens VALUES("56","","1","nu_parcela","16");

INSERT INTO tb_auditoria_itens VALUES("57","","150","nu_valor_parcela","16");

INSERT INTO tb_auditoria_itens VALUES("58","","2018-02-19","dt_vencimento","16");

INSERT INTO tb_auditoria_itens VALUES("59","","bmvlnqo22629m70i2uf2oavji5","ds_session_id","17");

INSERT INTO tb_auditoria_itens VALUES("60","","1","co_usuario","17");

INSERT INTO tb_auditoria_itens VALUES("61","","A","tp_situacao","17");

INSERT INTO tb_auditoria_itens VALUES("62","","Firefox","ds_navegador","17");

INSERT INTO tb_auditoria_itens VALUES("63","","Windows 10","ds_sistema_operacional","17");

INSERT INTO tb_auditoria_itens VALUES("64","","Computador","ds_dispositivo","17");

INSERT INTO tb_auditoria_itens VALUES("65","","2018-02-19 16:39:34","dt_fim_acesso","17");

INSERT INTO tb_auditoria_itens VALUES("66","","2018-02-19 16:19:34","dt_inicio_acesso","17");

INSERT INTO tb_auditoria_itens VALUES("67","186","","co_endereco","30");

INSERT INTO tb_auditoria_itens VALUES("68","QNF 8 casa 32 teste","QNF 8 casa 32 teste","ds_endereco","30");

INSERT INTO tb_auditoria_itens VALUES("69","","","ds_complemento","30");

INSERT INTO tb_auditoria_itens VALUES("70","","","ds_bairro","30");

INSERT INTO tb_auditoria_itens VALUES("71","","","nu_cep","30");

INSERT INTO tb_auditoria_itens VALUES("72","","","no_cidade","30");

INSERT INTO tb_auditoria_itens VALUES("73","DF","DF","sg_uf","30");

INSERT INTO tb_auditoria_itens VALUES("74","187","","co_contato","31");

INSERT INTO tb_auditoria_itens VALUES("75","34543543543","34543543543","nu_tel1","31");

INSERT INTO tb_auditoria_itens VALUES("76","","","nu_tel2","31");

INSERT INTO tb_auditoria_itens VALUES("77","","","nu_tel3","31");

INSERT INTO tb_auditoria_itens VALUES("78","gggg4reg@tghtrhrjytj.com.br","gggg4reg@tghtrhrjytj.com.br","ds_email","31");

INSERT INTO tb_auditoria_itens VALUES("79","184","","co_pessoa","32");

INSERT INTO tb_auditoria_itens VALUES("80","07759869177","07759869177","nu_cpf","32");

INSERT INTO tb_auditoria_itens VALUES("81","LEOGER G","LEOGER G","no_pessoa","32");

INSERT INTO tb_auditoria_itens VALUES("82","","","nu_rg","32");

INSERT INTO tb_auditoria_itens VALUES("83","2018-02-19 16:11:46","2018-02-19 16:41:56","dt_cadastro","32");

INSERT INTO tb_auditoria_itens VALUES("84","2003-02-13","2003-02-13","dt_nascimento","32");

INSERT INTO tb_auditoria_itens VALUES("85","M","M","st_sexo","32");

INSERT INTO tb_auditoria_itens VALUES("86","187","","co_contato","32");

INSERT INTO tb_auditoria_itens VALUES("87","186","","co_endereco","32");

INSERT INTO tb_auditoria_itens VALUES("88","139","","co_inscricao","33");

INSERT INTO tb_auditoria_itens VALUES("89","","","ds_pastoral","33");

INSERT INTO tb_auditoria_itens VALUES("90","N","N","ds_retiro","33");

INSERT INTO tb_auditoria_itens VALUES("91","2018-02-19 16:11:46","","dt_cadastro","33");

INSERT INTO tb_auditoria_itens VALUES("92","A","A","st_status","33");

INSERT INTO tb_auditoria_itens VALUES("93","N","N","ds_membro_ativo","33");

INSERT INTO tb_auditoria_itens VALUES("94","N","N","st_equipe_trabalho","33");

INSERT INTO tb_auditoria_itens VALUES("95","","","ds_situacao_atual_grupo","33");

INSERT INTO tb_auditoria_itens VALUES("96","2","2","nu_camisa","33");

INSERT INTO tb_auditoria_itens VALUES("97","THRTRH","THRTRH","no_responsavel","33");

INSERT INTO tb_auditoria_itens VALUES("98","53634745754","53634745754","nu_tel_responsavel","33");

INSERT INTO tb_auditoria_itens VALUES("99","gerg","gerg","ds_descricao","33");

INSERT INTO tb_auditoria_itens VALUES("100","","","ds_medicacao","33");

INSERT INTO tb_auditoria_itens VALUES("101","","","ds_alimentacao","33");

INSERT INTO tb_auditoria_itens VALUES("102","184","","co_pessoa","33");

INSERT INTO tb_auditoria_itens VALUES("103","181","","co_imagem","33");

INSERT INTO tb_auditoria_itens VALUES("109","","QNF 8 casa 32 testeerg er gfwef","ds_endereco","37");

INSERT INTO tb_auditoria_itens VALUES("110","","","ds_complemento","37");

INSERT INTO tb_auditoria_itens VALUES("111","","","ds_bairro","37");

INSERT INTO tb_auditoria_itens VALUES("112","","","nu_cep","37");

INSERT INTO tb_auditoria_itens VALUES("113","","","no_cidade","37");

INSERT INTO tb_auditoria_itens VALUES("114","","DF","sg_uf","37");

INSERT INTO tb_auditoria_itens VALUES("115","","43254235325","nu_tel1","38");

INSERT INTO tb_auditoria_itens VALUES("116","","","nu_tel2","38");

INSERT INTO tb_auditoria_itens VALUES("117","","","nu_tel3","38");

INSERT INTO tb_auditoria_itens VALUES("118","","grefffrfgffff@tghtrhrjytj.com.br","ds_email","38");

INSERT INTO tb_auditoria_itens VALUES("119","","04768775128","nu_cpf","39");

INSERT INTO tb_auditoria_itens VALUES("120","","DGGGE DVGFEFHH DQWD REG REGREG","no_pessoa","39");

INSERT INTO tb_auditoria_itens VALUES("121","","","nu_rg","39");

INSERT INTO tb_auditoria_itens VALUES("122","","2018-02-19 17:00:34","dt_cadastro","39");

INSERT INTO tb_auditoria_itens VALUES("123","","2001-02-16","dt_nascimento","39");

INSERT INTO tb_auditoria_itens VALUES("124","","M","st_sexo","39");

INSERT INTO tb_auditoria_itens VALUES("125","","187","co_endereco","39");

INSERT INTO tb_auditoria_itens VALUES("126","","188","co_contato","39");

INSERT INTO tb_auditoria_itens VALUES("127","","dggge-dvgfefhh-dqwd-reg-regreg-5a8b2ce2382ee.jpg","ds_caminho","40");

INSERT INTO tb_auditoria_itens VALUES("128","","","ds_pastoral","41");

INSERT INTO tb_auditoria_itens VALUES("129","","N","ds_retiro","41");

INSERT INTO tb_auditoria_itens VALUES("130","","2018-02-19 17:00:34","dt_cadastro","41");

INSERT INTO tb_auditoria_itens VALUES("131","","N","ds_membro_ativo","41");

INSERT INTO tb_auditoria_itens VALUES("132","","","ds_situacao_atual_grupo","41");

INSERT INTO tb_auditoria_itens VALUES("133","","1","nu_camisa","41");

INSERT INTO tb_auditoria_itens VALUES("134","","FWEFWE","no_responsavel","41");

INSERT INTO tb_auditoria_itens VALUES("135","","23556436346","nu_tel_responsavel","41");

INSERT INTO tb_auditoria_itens VALUES("136","","A","st_status","41");

INSERT INTO tb_auditoria_itens VALUES("137","","fe","ds_descricao","41");

INSERT INTO tb_auditoria_itens VALUES("138","","","ds_alimentacao","41");

INSERT INTO tb_auditoria_itens VALUES("139","","","ds_medicacao","41");

INSERT INTO tb_auditoria_itens VALUES("140","","N","st_equipe_trabalho","41");

INSERT INTO tb_auditoria_itens VALUES("141","","185","co_pessoa","41");

INSERT INTO tb_auditoria_itens VALUES("142","","182","co_imagem","41");

INSERT INTO tb_auditoria_itens VALUES("143","","160","nu_total","42");

INSERT INTO tb_auditoria_itens VALUES("144","","1","nu_parcelas","42");

INSERT INTO tb_auditoria_itens VALUES("145","","140","co_inscricao","42");

INSERT INTO tb_auditoria_itens VALUES("146","","146","co_pagamento","43");

INSERT INTO tb_auditoria_itens VALUES("147","","2","co_tipo_pagamento","43");

INSERT INTO tb_auditoria_itens VALUES("148","","1","nu_parcela","43");

INSERT INTO tb_auditoria_itens VALUES("149","","160","nu_valor_parcela","43");

INSERT INTO tb_auditoria_itens VALUES("150","","2018-02-19","dt_vencimento","43");

INSERT INTO tb_auditoria_itens VALUES("151","","QNF 8 casa 32 testegre","ds_endereco","44");

INSERT INTO tb_auditoria_itens VALUES("152","","","ds_complemento","44");

INSERT INTO tb_auditoria_itens VALUES("153","","","ds_bairro","44");

INSERT INTO tb_auditoria_itens VALUES("154","","","nu_cep","44");

INSERT INTO tb_auditoria_itens VALUES("155","","","no_cidade","44");

INSERT INTO tb_auditoria_itens VALUES("156","","DF","sg_uf","44");

INSERT INTO tb_auditoria_itens VALUES("157","","43434343543","nu_tel1","45");

INSERT INTO tb_auditoria_itens VALUES("158","","","nu_tel2","45");

INSERT INTO tb_auditoria_itens VALUES("159","","","nu_tel3","45");

INSERT INTO tb_auditoria_itens VALUES("160","","gg4reg@tghggtrhrjytj.com.br","ds_email","45");

INSERT INTO tb_auditoria_itens VALUES("161","","05836568111","nu_cpf","46");

INSERT INTO tb_auditoria_itens VALUES("162","","DGGGE DV FWEGHH DQWD  EWFWEQ FEWFEW","no_pessoa","46");

INSERT INTO tb_auditoria_itens VALUES("163","","","nu_rg","46");

INSERT INTO tb_auditoria_itens VALUES("164","","2018-02-19 17:23:38","dt_cadastro","46");

INSERT INTO tb_auditoria_itens VALUES("165","","1999-02-03","dt_nascimento","46");

INSERT INTO tb_auditoria_itens VALUES("166","","F","st_sexo","46");

INSERT INTO tb_auditoria_itens VALUES("167","","188","co_endereco","46");

INSERT INTO tb_auditoria_itens VALUES("168","","189","co_contato","46");

INSERT INTO tb_auditoria_itens VALUES("169","","dggge-dv-fweghh-dqwd-ewfweq-fewfew-5a8b324aac7fd.jpg","ds_caminho","47");

INSERT INTO tb_auditoria_itens VALUES("170","","","ds_pastoral","48");

INSERT INTO tb_auditoria_itens VALUES("171","","N","ds_retiro","48");

INSERT INTO tb_auditoria_itens VALUES("172","","2018-02-19 17:23:38","dt_cadastro","48");

INSERT INTO tb_auditoria_itens VALUES("173","","N","ds_membro_ativo","48");

INSERT INTO tb_auditoria_itens VALUES("174","","","ds_situacao_atual_grupo","48");

INSERT INTO tb_auditoria_itens VALUES("175","","3","nu_camisa","48");

INSERT INTO tb_auditoria_itens VALUES("176","","GERGRE","no_responsavel","48");

INSERT INTO tb_auditoria_itens VALUES("177","","43534543643","nu_tel_responsavel","48");

INSERT INTO tb_auditoria_itens VALUES("178","","A","st_status","48");

INSERT INTO tb_auditoria_itens VALUES("179","","gerg","ds_descricao","48");

INSERT INTO tb_auditoria_itens VALUES("180","","","ds_alimentacao","48");

INSERT INTO tb_auditoria_itens VALUES("181","","","ds_medicacao","48");

INSERT INTO tb_auditoria_itens VALUES("182","","N","st_equipe_trabalho","48");

INSERT INTO tb_auditoria_itens VALUES("183","","186","co_pessoa","48");

INSERT INTO tb_auditoria_itens VALUES("184","","183","co_imagem","48");

INSERT INTO tb_auditoria_itens VALUES("185","","160","nu_total","49");

INSERT INTO tb_auditoria_itens VALUES("186","","1","nu_parcelas","49");

INSERT INTO tb_auditoria_itens VALUES("187","","141","co_inscricao","49");

INSERT INTO tb_auditoria_itens VALUES("188","","147","co_pagamento","50");

INSERT INTO tb_auditoria_itens VALUES("189","","2","co_tipo_pagamento","50");

INSERT INTO tb_auditoria_itens VALUES("190","","1","nu_parcela","50");

INSERT INTO tb_auditoria_itens VALUES("191","","160","nu_valor_parcela","50");

INSERT INTO tb_auditoria_itens VALUES("192","","2018-02-19","dt_vencimento","50");

INSERT INTO tb_auditoria_itens VALUES("193","","QNF 8 casa 32 teste htr hr 3rgg","ds_endereco","51");

INSERT INTO tb_auditoria_itens VALUES("194","","","ds_complemento","51");

INSERT INTO tb_auditoria_itens VALUES("195","","","ds_bairro","51");

INSERT INTO tb_auditoria_itens VALUES("196","","","nu_cep","51");

INSERT INTO tb_auditoria_itens VALUES("197","","","no_cidade","51");

INSERT INTO tb_auditoria_itens VALUES("198","","DF","sg_uf","51");

INSERT INTO tb_auditoria_itens VALUES("199","","32543643643","nu_tel1","52");

INSERT INTO tb_auditoria_itens VALUES("200","","","nu_tel2","52");

INSERT INTO tb_auditoria_itens VALUES("201","","","nu_tel3","52");

INSERT INTO tb_auditoria_itens VALUES("202","","grefffg@tggghtrhrjytj.com.br","ds_email","52");

INSERT INTO tb_auditoria_itens VALUES("203","","08155386180","nu_cpf","53");

INSERT INTO tb_auditoria_itens VALUES("204","","DGFEGGE DVGHH DQWD REG REGREG","no_pessoa","53");

INSERT INTO tb_auditoria_itens VALUES("205","","","nu_rg","53");

INSERT INTO tb_auditoria_itens VALUES("206","","2018-02-19 17:25:24","dt_cadastro","53");

INSERT INTO tb_auditoria_itens VALUES("207","","2002-02-06","dt_nascimento","53");

INSERT INTO tb_auditoria_itens VALUES("208","","M","st_sexo","53");

INSERT INTO tb_auditoria_itens VALUES("209","","189","co_endereco","53");

INSERT INTO tb_auditoria_itens VALUES("210","","190","co_contato","53");

INSERT INTO tb_auditoria_itens VALUES("211","","dgfegge-dvghh-dqwd-reg-regreg-5a8b32b44968c.jpg","ds_caminho","54");

INSERT INTO tb_auditoria_itens VALUES("212","","","ds_pastoral","55");

INSERT INTO tb_auditoria_itens VALUES("213","","N","ds_retiro","55");

INSERT INTO tb_auditoria_itens VALUES("214","","2018-02-19 17:25:24","dt_cadastro","55");

INSERT INTO tb_auditoria_itens VALUES("215","","N","ds_membro_ativo","55");

INSERT INTO tb_auditoria_itens VALUES("216","","","ds_situacao_atual_grupo","55");

INSERT INTO tb_auditoria_itens VALUES("217","","3","nu_camisa","55");

INSERT INTO tb_auditoria_itens VALUES("218","","REGER","no_responsavel","55");

INSERT INTO tb_auditoria_itens VALUES("219","","53232364364","nu_tel_responsavel","55");

INSERT INTO tb_auditoria_itens VALUES("220","","A","st_status","55");

INSERT INTO tb_auditoria_itens VALUES("221","","dfg","ds_descricao","55");

INSERT INTO tb_auditoria_itens VALUES("222","","","ds_alimentacao","55");

INSERT INTO tb_auditoria_itens VALUES("223","","","ds_medicacao","55");

INSERT INTO tb_auditoria_itens VALUES("224","","N","st_equipe_trabalho","55");

INSERT INTO tb_auditoria_itens VALUES("225","","187","co_pessoa","55");

INSERT INTO tb_auditoria_itens VALUES("226","","184","co_imagem","55");

INSERT INTO tb_auditoria_itens VALUES("227","","160","nu_total","56");

INSERT INTO tb_auditoria_itens VALUES("228","","1","nu_parcelas","56");

INSERT INTO tb_auditoria_itens VALUES("229","","142","co_inscricao","56");

INSERT INTO tb_auditoria_itens VALUES("230","","148","co_pagamento","57");

INSERT INTO tb_auditoria_itens VALUES("231","","2","co_tipo_pagamento","57");

INSERT INTO tb_auditoria_itens VALUES("232","","1","nu_parcela","57");

INSERT INTO tb_auditoria_itens VALUES("233","","160","nu_valor_parcela","57");

INSERT INTO tb_auditoria_itens VALUES("234","","2018-02-19","dt_vencimento","57");

INSERT INTO tb_auditoria_itens VALUES("235","186","","co_endereco","58");

INSERT INTO tb_auditoria_itens VALUES("236","QNF 8 casa 32 teste","QNF 8 casa 32 teste novo endereco","ds_endereco","58");

INSERT INTO tb_auditoria_itens VALUES("237","","","ds_complemento","58");

INSERT INTO tb_auditoria_itens VALUES("238","","","ds_bairro","58");

INSERT INTO tb_auditoria_itens VALUES("239","","","nu_cep","58");

INSERT INTO tb_auditoria_itens VALUES("240","","","no_cidade","58");

INSERT INTO tb_auditoria_itens VALUES("241","DF","DF","sg_uf","58");

INSERT INTO tb_auditoria_itens VALUES("242","187","","co_contato","59");

INSERT INTO tb_auditoria_itens VALUES("243","34543543543","11111111111","nu_tel1","59");

INSERT INTO tb_auditoria_itens VALUES("244","","","nu_tel2","59");

INSERT INTO tb_auditoria_itens VALUES("245","","","nu_tel3","59");

INSERT INTO tb_auditoria_itens VALUES("246","gggg4reg@tghtrhrjytj.com.br","mail@mail.com","ds_email","59");

INSERT INTO tb_auditoria_itens VALUES("247","184","","co_pessoa","60");

INSERT INTO tb_auditoria_itens VALUES("248","07759869177","07759869177","nu_cpf","60");

INSERT INTO tb_auditoria_itens VALUES("249","LEOGER G","NOVO NOME MEU","no_pessoa","60");

INSERT INTO tb_auditoria_itens VALUES("250","","","nu_rg","60");

INSERT INTO tb_auditoria_itens VALUES("251","2018-02-19 16:41:56","2018-02-19 17:27:31","dt_cadastro","60");

INSERT INTO tb_auditoria_itens VALUES("252","2003-02-13","2003-02-13","dt_nascimento","60");

INSERT INTO tb_auditoria_itens VALUES("253","M","M","st_sexo","60");

INSERT INTO tb_auditoria_itens VALUES("254","187","","co_contato","60");

INSERT INTO tb_auditoria_itens VALUES("255","186","","co_endereco","60");

INSERT INTO tb_auditoria_itens VALUES("256","139","","co_inscricao","61");

INSERT INTO tb_auditoria_itens VALUES("257","","","ds_pastoral","61");

INSERT INTO tb_auditoria_itens VALUES("258","N","N","ds_retiro","61");

INSERT INTO tb_auditoria_itens VALUES("259","2018-02-19 16:11:46","","dt_cadastro","61");

INSERT INTO tb_auditoria_itens VALUES("260","A","A","st_status","61");

INSERT INTO tb_auditoria_itens VALUES("261","N","N","ds_membro_ativo","61");

INSERT INTO tb_auditoria_itens VALUES("262","N","N","st_equipe_trabalho","61");

INSERT INTO tb_auditoria_itens VALUES("263","","","ds_situacao_atual_grupo","61");

INSERT INTO tb_auditoria_itens VALUES("264","2","2","nu_camisa","61");

INSERT INTO tb_auditoria_itens VALUES("265","THRTRH","PESSOA","no_responsavel","61");

INSERT INTO tb_auditoria_itens VALUES("266","53634745754","22222222222","nu_tel_responsavel","61");

INSERT INTO tb_auditoria_itens VALUES("267","gerg","fala","ds_descricao","61");

INSERT INTO tb_auditoria_itens VALUES("268","","","ds_medicacao","61");

INSERT INTO tb_auditoria_itens VALUES("269","","","ds_alimentacao","61");

INSERT INTO tb_auditoria_itens VALUES("270","184","","co_pessoa","61");

INSERT INTO tb_auditoria_itens VALUES("271","181","","co_imagem","61");

INSERT INTO tb_auditoria_itens VALUES("272","186","","co_endereco","62");

INSERT INTO tb_auditoria_itens VALUES("273","QNF 8 casa 32 teste novo endereco","QNF 8 casa 32 teste novo endereco","ds_endereco","62");

INSERT INTO tb_auditoria_itens VALUES("274","","","ds_complemento","62");

INSERT INTO tb_auditoria_itens VALUES("275","","","ds_bairro","62");

INSERT INTO tb_auditoria_itens VALUES("276","","","nu_cep","62");

INSERT INTO tb_auditoria_itens VALUES("277","","","no_cidade","62");

INSERT INTO tb_auditoria_itens VALUES("278","DF","DF","sg_uf","62");

INSERT INTO tb_auditoria_itens VALUES("279","187","","co_contato","63");

INSERT INTO tb_auditoria_itens VALUES("280","11111111111","11111111111","nu_tel1","63");

INSERT INTO tb_auditoria_itens VALUES("281","","","nu_tel2","63");

INSERT INTO tb_auditoria_itens VALUES("282","","","nu_tel3","63");

INSERT INTO tb_auditoria_itens VALUES("283","mail@mail.com","mail@mail.com","ds_email","63");

INSERT INTO tb_auditoria_itens VALUES("284","184","","co_pessoa","64");

INSERT INTO tb_auditoria_itens VALUES("285","07759869177","07759869177","nu_cpf","64");

INSERT INTO tb_auditoria_itens VALUES("286","NOVO NOME MEU","NOVO NOME MEU","no_pessoa","64");

INSERT INTO tb_auditoria_itens VALUES("287","","","nu_rg","64");

INSERT INTO tb_auditoria_itens VALUES("288","2018-02-19 17:27:31","2018-02-19 17:27:48","dt_cadastro","64");

INSERT INTO tb_auditoria_itens VALUES("289","2003-02-13","2003-02-13","dt_nascimento","64");

INSERT INTO tb_auditoria_itens VALUES("290","M","M","st_sexo","64");

INSERT INTO tb_auditoria_itens VALUES("291","187","","co_contato","64");

INSERT INTO tb_auditoria_itens VALUES("292","186","","co_endereco","64");

INSERT INTO tb_auditoria_itens VALUES("293","139","","co_inscricao","65");

INSERT INTO tb_auditoria_itens VALUES("294","","","ds_pastoral","65");

INSERT INTO tb_auditoria_itens VALUES("295","N","N","ds_retiro","65");

INSERT INTO tb_auditoria_itens VALUES("296","2018-02-19 16:11:46","","dt_cadastro","65");

INSERT INTO tb_auditoria_itens VALUES("297","A","A","st_status","65");

INSERT INTO tb_auditoria_itens VALUES("298","N","N","ds_membro_ativo","65");

INSERT INTO tb_auditoria_itens VALUES("299","N","N","st_equipe_trabalho","65");

INSERT INTO tb_auditoria_itens VALUES("300","","","ds_situacao_atual_grupo","65");

INSERT INTO tb_auditoria_itens VALUES("301","2","2","nu_camisa","65");

INSERT INTO tb_auditoria_itens VALUES("302","PESSOA","PESSOA","no_responsavel","65");

INSERT INTO tb_auditoria_itens VALUES("303","22222222222","22222222222","nu_tel_responsavel","65");

INSERT INTO tb_auditoria_itens VALUES("304","fala","fala","ds_descricao","65");

INSERT INTO tb_auditoria_itens VALUES("305","","","ds_medicacao","65");

INSERT INTO tb_auditoria_itens VALUES("306","","","ds_alimentacao","65");

INSERT INTO tb_auditoria_itens VALUES("307","184","","co_pessoa","65");

INSERT INTO tb_auditoria_itens VALUES("308","181","","co_imagem","65");

INSERT INTO tb_auditoria_itens VALUES("309","186","","co_endereco","66");

INSERT INTO tb_auditoria_itens VALUES("310","QNF 8 casa 32 teste novo endereco","QNF 8 casa 32 teste novo endereco","ds_endereco","66");

INSERT INTO tb_auditoria_itens VALUES("311","","","ds_complemento","66");

INSERT INTO tb_auditoria_itens VALUES("312","","","ds_bairro","66");

INSERT INTO tb_auditoria_itens VALUES("313","","","nu_cep","66");

INSERT INTO tb_auditoria_itens VALUES("314","","","no_cidade","66");

INSERT INTO tb_auditoria_itens VALUES("315","DF","DF","sg_uf","66");

INSERT INTO tb_auditoria_itens VALUES("316","187","","co_contato","67");

INSERT INTO tb_auditoria_itens VALUES("317","11111111111","11111111111","nu_tel1","67");

INSERT INTO tb_auditoria_itens VALUES("318","","","nu_tel2","67");

INSERT INTO tb_auditoria_itens VALUES("319","","","nu_tel3","67");

INSERT INTO tb_auditoria_itens VALUES("320","mail@mail.com","mail@mail.com","ds_email","67");

INSERT INTO tb_auditoria_itens VALUES("321","184","","co_pessoa","68");

INSERT INTO tb_auditoria_itens VALUES("322","07759869177","07759869177","nu_cpf","68");

INSERT INTO tb_auditoria_itens VALUES("323","NOVO NOME MEU","NOVO NOME MEU","no_pessoa","68");

INSERT INTO tb_auditoria_itens VALUES("324","","","nu_rg","68");

INSERT INTO tb_auditoria_itens VALUES("325","2018-02-19 17:27:48","2018-02-19 17:27:56","dt_cadastro","68");

INSERT INTO tb_auditoria_itens VALUES("326","2003-02-13","2003-02-13","dt_nascimento","68");

INSERT INTO tb_auditoria_itens VALUES("327","M","M","st_sexo","68");

INSERT INTO tb_auditoria_itens VALUES("328","187","","co_contato","68");

INSERT INTO tb_auditoria_itens VALUES("329","186","","co_endereco","68");

INSERT INTO tb_auditoria_itens VALUES("330","139","","co_inscricao","69");

INSERT INTO tb_auditoria_itens VALUES("331","","","ds_pastoral","69");

INSERT INTO tb_auditoria_itens VALUES("332","N","N","ds_retiro","69");

INSERT INTO tb_auditoria_itens VALUES("333","2018-02-19 16:11:46","","dt_cadastro","69");

INSERT INTO tb_auditoria_itens VALUES("334","A","A","st_status","69");

INSERT INTO tb_auditoria_itens VALUES("335","N","N","ds_membro_ativo","69");

INSERT INTO tb_auditoria_itens VALUES("336","N","N","st_equipe_trabalho","69");

INSERT INTO tb_auditoria_itens VALUES("337","","","ds_situacao_atual_grupo","69");

INSERT INTO tb_auditoria_itens VALUES("338","2","2","nu_camisa","69");

INSERT INTO tb_auditoria_itens VALUES("339","PESSOA","PESSOA","no_responsavel","69");

INSERT INTO tb_auditoria_itens VALUES("340","22222222222","22222222222","nu_tel_responsavel","69");

INSERT INTO tb_auditoria_itens VALUES("341","fala","fala","ds_descricao","69");

INSERT INTO tb_auditoria_itens VALUES("342","","","ds_medicacao","69");

INSERT INTO tb_auditoria_itens VALUES("343","","","ds_alimentacao","69");

INSERT INTO tb_auditoria_itens VALUES("344","184","","co_pessoa","69");

INSERT INTO tb_auditoria_itens VALUES("345","181","","co_imagem","69");

INSERT INTO tb_auditoria_itens VALUES("346","186","","co_endereco","71");

INSERT INTO tb_auditoria_itens VALUES("347","QNF 8 casa 32 teste novo endereco","","ds_endereco","71");

INSERT INTO tb_auditoria_itens VALUES("348","","","ds_complemento","71");

INSERT INTO tb_auditoria_itens VALUES("349","","","ds_bairro","71");

INSERT INTO tb_auditoria_itens VALUES("350","","","nu_cep","71");

INSERT INTO tb_auditoria_itens VALUES("351","","","no_cidade","71");

INSERT INTO tb_auditoria_itens VALUES("352","DF","","sg_uf","71");

INSERT INTO tb_auditoria_itens VALUES("353","187","","co_contato","72");

INSERT INTO tb_auditoria_itens VALUES("354","11111111111","","nu_tel1","72");

INSERT INTO tb_auditoria_itens VALUES("355","","","nu_tel2","72");

INSERT INTO tb_auditoria_itens VALUES("356","","","nu_tel3","72");

INSERT INTO tb_auditoria_itens VALUES("357","mail@mail.com","","ds_email","72");

INSERT INTO tb_auditoria_itens VALUES("358","184","","co_pessoa","73");

INSERT INTO tb_auditoria_itens VALUES("359","07759869177","","nu_cpf","73");

INSERT INTO tb_auditoria_itens VALUES("360","NOVO NOME MEU","","no_pessoa","73");

INSERT INTO tb_auditoria_itens VALUES("361","","","nu_rg","73");

INSERT INTO tb_auditoria_itens VALUES("362","2018-02-19 17:27:56","","dt_cadastro","73");

INSERT INTO tb_auditoria_itens VALUES("363","2003-02-13","","dt_nascimento","73");

INSERT INTO tb_auditoria_itens VALUES("364","M","","st_sexo","73");

INSERT INTO tb_auditoria_itens VALUES("365","187","","co_contato","73");

INSERT INTO tb_auditoria_itens VALUES("366","186","","co_endereco","73");

INSERT INTO tb_auditoria_itens VALUES("367","139","","co_inscricao","74");

INSERT INTO tb_auditoria_itens VALUES("368","","","ds_pastoral","74");

INSERT INTO tb_auditoria_itens VALUES("369","N","","ds_retiro","74");

INSERT INTO tb_auditoria_itens VALUES("370","2018-02-19 16:11:46","","dt_cadastro","74");

INSERT INTO tb_auditoria_itens VALUES("371","A","","st_status","74");

INSERT INTO tb_auditoria_itens VALUES("372","N","","ds_membro_ativo","74");

INSERT INTO tb_auditoria_itens VALUES("373","N","","st_equipe_trabalho","74");

INSERT INTO tb_auditoria_itens VALUES("374","","","ds_situacao_atual_grupo","74");

INSERT INTO tb_auditoria_itens VALUES("375","2","","nu_camisa","74");

INSERT INTO tb_auditoria_itens VALUES("376","PESSOA","","no_responsavel","74");

INSERT INTO tb_auditoria_itens VALUES("377","22222222222","","nu_tel_responsavel","74");

INSERT INTO tb_auditoria_itens VALUES("378","fala","","ds_descricao","74");

INSERT INTO tb_auditoria_itens VALUES("379","","","ds_medicacao","74");

INSERT INTO tb_auditoria_itens VALUES("380","","","ds_alimentacao","74");

INSERT INTO tb_auditoria_itens VALUES("381","184","","co_pessoa","74");

INSERT INTO tb_auditoria_itens VALUES("382","181","","co_imagem","74");

INSERT INTO tb_auditoria_itens VALUES("383","186","","co_endereco","75");

INSERT INTO tb_auditoria_itens VALUES("384","QNF 8 casa 32 teste novo endereco","QNF 8 casa 32 teste novo endereco","ds_endereco","75");

INSERT INTO tb_auditoria_itens VALUES("385","","","ds_complemento","75");

INSERT INTO tb_auditoria_itens VALUES("386","","","ds_bairro","75");

INSERT INTO tb_auditoria_itens VALUES("387","","","nu_cep","75");

INSERT INTO tb_auditoria_itens VALUES("388","","","no_cidade","75");

INSERT INTO tb_auditoria_itens VALUES("389","DF","DF","sg_uf","75");

INSERT INTO tb_auditoria_itens VALUES("390","187","","co_contato","76");

INSERT INTO tb_auditoria_itens VALUES("391","11111111111","11111111111","nu_tel1","76");

INSERT INTO tb_auditoria_itens VALUES("392","","","nu_tel2","76");

INSERT INTO tb_auditoria_itens VALUES("393","","","nu_tel3","76");

INSERT INTO tb_auditoria_itens VALUES("394","mail@mail.com","mail@mail.com","ds_email","76");

INSERT INTO tb_auditoria_itens VALUES("395","184","","co_pessoa","77");

INSERT INTO tb_auditoria_itens VALUES("396","07759869177","07759869177","nu_cpf","77");

INSERT INTO tb_auditoria_itens VALUES("397","NOVO NOME MEU","NOVO NOME MEU","no_pessoa","77");

INSERT INTO tb_auditoria_itens VALUES("398","","","nu_rg","77");

INSERT INTO tb_auditoria_itens VALUES("399","2018-02-19 17:29:01","2018-02-19 17:29:12","dt_cadastro","77");

INSERT INTO tb_auditoria_itens VALUES("400","2003-02-13","2003-02-13","dt_nascimento","77");

INSERT INTO tb_auditoria_itens VALUES("401","M","M","st_sexo","77");

INSERT INTO tb_auditoria_itens VALUES("402","187","","co_contato","77");

INSERT INTO tb_auditoria_itens VALUES("403","186","","co_endereco","77");

INSERT INTO tb_auditoria_itens VALUES("404","139","","co_inscricao","78");

INSERT INTO tb_auditoria_itens VALUES("405","","","ds_pastoral","78");

INSERT INTO tb_auditoria_itens VALUES("406","N","N","ds_retiro","78");

INSERT INTO tb_auditoria_itens VALUES("407","2018-02-19 16:11:46","","dt_cadastro","78");

INSERT INTO tb_auditoria_itens VALUES("408","A","A","st_status","78");

INSERT INTO tb_auditoria_itens VALUES("409","N","N","ds_membro_ativo","78");

INSERT INTO tb_auditoria_itens VALUES("410","N","N","st_equipe_trabalho","78");

INSERT INTO tb_auditoria_itens VALUES("411","","","ds_situacao_atual_grupo","78");

INSERT INTO tb_auditoria_itens VALUES("412","2","2","nu_camisa","78");

INSERT INTO tb_auditoria_itens VALUES("413","PESSOA","PESSOA","no_responsavel","78");

INSERT INTO tb_auditoria_itens VALUES("414","22222222222","22222222222","nu_tel_responsavel","78");

INSERT INTO tb_auditoria_itens VALUES("415","fala","fala","ds_descricao","78");

INSERT INTO tb_auditoria_itens VALUES("416","","","ds_medicacao","78");

INSERT INTO tb_auditoria_itens VALUES("417","","","ds_alimentacao","78");

INSERT INTO tb_auditoria_itens VALUES("418","184","","co_pessoa","78");

INSERT INTO tb_auditoria_itens VALUES("419","181","","co_imagem","78");

INSERT INTO tb_auditoria_itens VALUES("420","","QNF 8 casa 32 testeerg er g","ds_endereco","79");

INSERT INTO tb_auditoria_itens VALUES("421","","","ds_complemento","79");

INSERT INTO tb_auditoria_itens VALUES("422","","","ds_bairro","79");

INSERT INTO tb_auditoria_itens VALUES("423","","","nu_cep","79");

INSERT INTO tb_auditoria_itens VALUES("424","","","no_cidade","79");

INSERT INTO tb_auditoria_itens VALUES("425","","DF","sg_uf","79");

INSERT INTO tb_auditoria_itens VALUES("426","","32543543543","nu_tel1","80");

INSERT INTO tb_auditoria_itens VALUES("427","","","nu_tel2","80");

INSERT INTO tb_auditoria_itens VALUES("428","","","nu_tel3","80");

INSERT INTO tb_auditoria_itens VALUES("429","","gg4ddreg@tghtrhrjytj.com.br","ds_email","80");

INSERT INTO tb_auditoria_itens VALUES("430","","lele-5a9d6c2f0325b.jpg","ds_caminho","81");

INSERT INTO tb_auditoria_itens VALUES("431","","22322191191","nu_cpf","82");

INSERT INTO tb_auditoria_itens VALUES("432","","LELE","no_pessoa","82");

INSERT INTO tb_auditoria_itens VALUES("433","","43643643","nu_rg","82");

INSERT INTO tb_auditoria_itens VALUES("434","","2018-03-05","dt_cadastro","82");

INSERT INTO tb_auditoria_itens VALUES("435","","2001-03-12","dt_nascimento","82");

INSERT INTO tb_auditoria_itens VALUES("436","","F","st_sexo","82");

INSERT INTO tb_auditoria_itens VALUES("437","","190","co_endereco","82");

INSERT INTO tb_auditoria_itens VALUES("438","","191","co_contato","82");

INSERT INTO tb_auditoria_itens VALUES("439","","TVRJek5EVTJLaW89","ds_code","83");

INSERT INTO tb_auditoria_itens VALUES("440","","123456**","ds_senha","83");

INSERT INTO tb_auditoria_itens VALUES("441","","2018-03-05","dt_cadastro","83");

INSERT INTO tb_auditoria_itens VALUES("442","","185","co_imagem","83");

INSERT INTO tb_auditoria_itens VALUES("443","","188","co_pessoa","83");

INSERT INTO tb_auditoria_itens VALUES("444","","2","co_usuario","84");

INSERT INTO tb_auditoria_itens VALUES("445","","3","co_perfil","84");

INSERT INTO tb_auditoria_itens VALUES("446","191","","co_contato","85");

INSERT INTO tb_auditoria_itens VALUES("447","32543543543","32543543543","nu_tel1","85");

INSERT INTO tb_auditoria_itens VALUES("448","","___________","nu_tel2","85");

INSERT INTO tb_auditoria_itens VALUES("449","","","nu_tel3","85");

INSERT INTO tb_auditoria_itens VALUES("450","gg4ddreg@tghtrhrjytj.com.br","gg4ddreg@tghtrhrjytj.com.br","ds_email","85");

INSERT INTO tb_auditoria_itens VALUES("451","190","","co_endereco","86");

INSERT INTO tb_auditoria_itens VALUES("452","QNF 8 casa 32 testeerg er g","QNF 8 casa 32 testeerg er g","ds_endereco","86");

INSERT INTO tb_auditoria_itens VALUES("453","","","ds_complemento","86");

INSERT INTO tb_auditoria_itens VALUES("454","","","ds_bairro","86");

INSERT INTO tb_auditoria_itens VALUES("455","","","nu_cep","86");

INSERT INTO tb_auditoria_itens VALUES("456","","","no_cidade","86");

INSERT INTO tb_auditoria_itens VALUES("457","DF","DF","sg_uf","86");

INSERT INTO tb_auditoria_itens VALUES("458","188","","co_pessoa","87");

INSERT INTO tb_auditoria_itens VALUES("459","22322191191","22322191191","nu_cpf","87");

INSERT INTO tb_auditoria_itens VALUES("460","LELE","LELE","no_pessoa","87");

INSERT INTO tb_auditoria_itens VALUES("461","43643643","43643643","nu_rg","87");

INSERT INTO tb_auditoria_itens VALUES("462","2018-03-05 00:00:00","2018-03-05 13:12:09","dt_cadastro","87");

INSERT INTO tb_auditoria_itens VALUES("463","2001-03-12","2001-03-12","dt_nascimento","87");

INSERT INTO tb_auditoria_itens VALUES("464","F","F","st_sexo","87");

INSERT INTO tb_auditoria_itens VALUES("465","191","","co_contato","87");

INSERT INTO tb_auditoria_itens VALUES("466","190","","co_endereco","87");

INSERT INTO tb_auditoria_itens VALUES("467","2","","co_usuario","88");

INSERT INTO tb_auditoria_itens VALUES("468","123456**","123456**","ds_senha","88");

INSERT INTO tb_auditoria_itens VALUES("469","TVRJek5EVTJLaW89","TVRJek5EVTJLaW89","ds_code","88");

INSERT INTO tb_auditoria_itens VALUES("470","I","A","st_status","88");

INSERT INTO tb_auditoria_itens VALUES("471","2018-03-05 00:00:00","","dt_cadastro","88");

INSERT INTO tb_auditoria_itens VALUES("472","185","","co_imagem","88");

INSERT INTO tb_auditoria_itens VALUES("473","188","","co_pessoa","88");

INSERT INTO tb_auditoria_itens VALUES("474","2","","co_usuario_perfil","89");

INSERT INTO tb_auditoria_itens VALUES("475","2","","co_usuario","89");

INSERT INTO tb_auditoria_itens VALUES("476","3","","co_perfil","89");

INSERT INTO tb_auditoria_itens VALUES("477","","2","co_usuario","90");

INSERT INTO tb_auditoria_itens VALUES("478","","6","co_perfil","90");

INSERT INTO tb_auditoria_itens VALUES("479","","2","co_usuario","91");

INSERT INTO tb_auditoria_itens VALUES("480","","4","co_perfil","91");

INSERT INTO tb_auditoria_itens VALUES("481","","2","co_usuario","92");

INSERT INTO tb_auditoria_itens VALUES("482","","3","co_perfil","92");

INSERT INTO tb_auditoria_itens VALUES("483","","2","co_usuario","93");

INSERT INTO tb_auditoria_itens VALUES("484","","3","co_perfil","93");

INSERT INTO tb_auditoria_itens VALUES("485","7","","co_parcelamento","94");

INSERT INTO tb_auditoria_itens VALUES("486","1","","nu_parcela","94");

INSERT INTO tb_auditoria_itens VALUES("487","160.00","","nu_valor_parcela","94");

INSERT INTO tb_auditoria_itens VALUES("488","","100.00","nu_valor_parcela_pago","94");

INSERT INTO tb_auditoria_itens VALUES("489","2018-02-19","","dt_vencimento","94");

INSERT INTO tb_auditoria_itens VALUES("490","","2018-03-06","dt_vencimento_pago","94");

INSERT INTO tb_auditoria_itens VALUES("491","","","ds_observacao","94");

INSERT INTO tb_auditoria_itens VALUES("492","147","","co_pagamento","94");

INSERT INTO tb_auditoria_itens VALUES("493","2","1","co_tipo_pagamento","94");

INSERT INTO tb_auditoria_itens VALUES("494","147","","co_pagamento","95");

INSERT INTO tb_auditoria_itens VALUES("495","160.00","","nu_total","95");

INSERT INTO tb_auditoria_itens VALUES("496","","100","nu_valor_pago","95");

INSERT INTO tb_auditoria_itens VALUES("497","1","","nu_parcelas","95");

INSERT INTO tb_auditoria_itens VALUES("498","N","I","tp_situacao","95");

INSERT INTO tb_auditoria_itens VALUES("499","","","ds_observacao","95");

INSERT INTO tb_auditoria_itens VALUES("500","141","","co_inscricao","95");

INSERT INTO tb_auditoria_itens VALUES("501","6","","co_parcelamento","96");

INSERT INTO tb_auditoria_itens VALUES("502","1","","nu_parcela","96");

INSERT INTO tb_auditoria_itens VALUES("503","160.00","","nu_valor_parcela","96");

INSERT INTO tb_auditoria_itens VALUES("504","","160.00","nu_valor_parcela_pago","96");

INSERT INTO tb_auditoria_itens VALUES("505","2018-02-19","","dt_vencimento","96");

INSERT INTO tb_auditoria_itens VALUES("506","","2018-03-06","dt_vencimento_pago","96");

INSERT INTO tb_auditoria_itens VALUES("507","","","ds_observacao","96");

INSERT INTO tb_auditoria_itens VALUES("508","146","","co_pagamento","96");

INSERT INTO tb_auditoria_itens VALUES("509","2","2","co_tipo_pagamento","96");

INSERT INTO tb_auditoria_itens VALUES("510","146","","co_pagamento","97");

INSERT INTO tb_auditoria_itens VALUES("511","160.00","","nu_total","97");

INSERT INTO tb_auditoria_itens VALUES("512","","160","nu_valor_pago","97");

INSERT INTO tb_auditoria_itens VALUES("513","1","","nu_parcelas","97");

INSERT INTO tb_auditoria_itens VALUES("514","N","C","tp_situacao","97");

INSERT INTO tb_auditoria_itens VALUES("515","","","ds_observacao","97");

INSERT INTO tb_auditoria_itens VALUES("516","140","","co_inscricao","97");

INSERT INTO tb_auditoria_itens VALUES("517","186","","co_endereco","98");

INSERT INTO tb_auditoria_itens VALUES("518","QNF 8 casa 32 teste novo endereco","QNF 8 casa 32 teste novo endereco","ds_endereco","98");

INSERT INTO tb_auditoria_itens VALUES("519","","","ds_complemento","98");

INSERT INTO tb_auditoria_itens VALUES("520","","","ds_bairro","98");

INSERT INTO tb_auditoria_itens VALUES("521","","","nu_cep","98");

INSERT INTO tb_auditoria_itens VALUES("522","","","no_cidade","98");

INSERT INTO tb_auditoria_itens VALUES("523","DF","DF","sg_uf","98");

INSERT INTO tb_auditoria_itens VALUES("524","187","","co_contato","99");

INSERT INTO tb_auditoria_itens VALUES("525","11111111111","11111111111","nu_tel1","99");

INSERT INTO tb_auditoria_itens VALUES("526","","","nu_tel2","99");

INSERT INTO tb_auditoria_itens VALUES("527","","","nu_tel3","99");

INSERT INTO tb_auditoria_itens VALUES("528","mail@mail.com","mail@mail.com","ds_email","99");

INSERT INTO tb_auditoria_itens VALUES("529","184","","co_pessoa","100");

INSERT INTO tb_auditoria_itens VALUES("530","07759869177","07759869177","nu_cpf","100");

INSERT INTO tb_auditoria_itens VALUES("531","NOVO NOME MEU","NOVO NOME MEU","no_pessoa","100");

INSERT INTO tb_auditoria_itens VALUES("532","","","nu_rg","100");

INSERT INTO tb_auditoria_itens VALUES("533","2018-02-19 17:29:12","","dt_cadastro","100");

INSERT INTO tb_auditoria_itens VALUES("534","2003-02-13","2003-02-13","dt_nascimento","100");

INSERT INTO tb_auditoria_itens VALUES("535","M","M","st_sexo","100");

INSERT INTO tb_auditoria_itens VALUES("536","187","","co_contato","100");

INSERT INTO tb_auditoria_itens VALUES("537","186","","co_endereco","100");

INSERT INTO tb_auditoria_itens VALUES("538","139","","co_inscricao","101");

INSERT INTO tb_auditoria_itens VALUES("539","","","ds_pastoral","101");

INSERT INTO tb_auditoria_itens VALUES("540","N","N","ds_retiro","101");

INSERT INTO tb_auditoria_itens VALUES("541","2018-02-19 16:11:46","","dt_cadastro","101");

INSERT INTO tb_auditoria_itens VALUES("542","A","A","st_status","101");

INSERT INTO tb_auditoria_itens VALUES("543","N","S","ds_membro_ativo","101");

INSERT INTO tb_auditoria_itens VALUES("544","N","S","st_equipe_trabalho","101");

INSERT INTO tb_auditoria_itens VALUES("545","","","ds_situacao_atual_grupo","101");

INSERT INTO tb_auditoria_itens VALUES("546","2","2","nu_camisa","101");

INSERT INTO tb_auditoria_itens VALUES("547","PESSOA","PESSOA","no_responsavel","101");

INSERT INTO tb_auditoria_itens VALUES("548","22222222222","22222222222","nu_tel_responsavel","101");

INSERT INTO tb_auditoria_itens VALUES("549","fala","fala","ds_descricao","101");

INSERT INTO tb_auditoria_itens VALUES("550","","","ds_medicacao","101");

INSERT INTO tb_auditoria_itens VALUES("551","","","ds_alimentacao","101");

INSERT INTO tb_auditoria_itens VALUES("552","184","","co_pessoa","101");

INSERT INTO tb_auditoria_itens VALUES("553","181","","co_imagem","101");

INSERT INTO tb_auditoria_itens VALUES("554","182","","co_endereco","102");

INSERT INTO tb_auditoria_itens VALUES("555","QNF 8 casa 32 teste htr h","QNF 8 casa 32 teste htr h","ds_endereco","102");

INSERT INTO tb_auditoria_itens VALUES("556","","","ds_complemento","102");

INSERT INTO tb_auditoria_itens VALUES("557","","","ds_bairro","102");

INSERT INTO tb_auditoria_itens VALUES("558","","","nu_cep","102");

INSERT INTO tb_auditoria_itens VALUES("559","","","no_cidade","102");

INSERT INTO tb_auditoria_itens VALUES("560","DF","DF","sg_uf","102");

INSERT INTO tb_auditoria_itens VALUES("561","185","","co_contato","103");

INSERT INTO tb_auditoria_itens VALUES("562","43253253253","43253253253","nu_tel1","103");

INSERT INTO tb_auditoria_itens VALUES("563","","","nu_tel2","103");

INSERT INTO tb_auditoria_itens VALUES("564","","","nu_tel3","103");

INSERT INTO tb_auditoria_itens VALUES("565","grfefffg@tghtrhrjytj.com.br","grfefffg@tghtrhrjytj.com.br","ds_email","103");

INSERT INTO tb_auditoria_itens VALUES("566","182","","co_pessoa","104");

INSERT INTO tb_auditoria_itens VALUES("567","07756279174","07756279174","nu_cpf","104");

INSERT INTO tb_auditoria_itens VALUES("568","LEO EFW F","LEO EFW F","no_pessoa","104");

INSERT INTO tb_auditoria_itens VALUES("569","","","nu_rg","104");

INSERT INTO tb_auditoria_itens VALUES("570","2018-02-19 15:44:10","","dt_cadastro","104");

INSERT INTO tb_auditoria_itens VALUES("571","1999-02-17","1999-02-17","dt_nascimento","104");

INSERT INTO tb_auditoria_itens VALUES("572","M","M","st_sexo","104");

INSERT INTO tb_auditoria_itens VALUES("573","185","","co_contato","104");

INSERT INTO tb_auditoria_itens VALUES("574","182","","co_endereco","104");

INSERT INTO tb_auditoria_itens VALUES("575","137","","co_inscricao","105");

INSERT INTO tb_auditoria_itens VALUES("576","","","ds_pastoral","105");

INSERT INTO tb_auditoria_itens VALUES("577","N","N","ds_retiro","105");

INSERT INTO tb_auditoria_itens VALUES("578","2018-02-19 15:44:10","","dt_cadastro","105");

INSERT INTO tb_auditoria_itens VALUES("579","A","A","st_status","105");

INSERT INTO tb_auditoria_itens VALUES("580","N","S","ds_membro_ativo","105");

INSERT INTO tb_auditoria_itens VALUES("581","N","N","st_equipe_trabalho","105");

INSERT INTO tb_auditoria_itens VALUES("582","","","ds_situacao_atual_grupo","105");

INSERT INTO tb_auditoria_itens VALUES("583","1","1","nu_camisa","105");

INSERT INTO tb_auditoria_itens VALUES("584","FWEFW","FWEFW","no_responsavel","105");

INSERT INTO tb_auditoria_itens VALUES("585","14215122525","14215122525","nu_tel_responsavel","105");

INSERT INTO tb_auditoria_itens VALUES("586","fwef","fwef","ds_descricao","105");

INSERT INTO tb_auditoria_itens VALUES("587","","","ds_medicacao","105");

INSERT INTO tb_auditoria_itens VALUES("588","","","ds_alimentacao","105");

INSERT INTO tb_auditoria_itens VALUES("589","182","","co_pessoa","105");

INSERT INTO tb_auditoria_itens VALUES("590","179","","co_imagem","105");

INSERT INTO tb_auditoria_itens VALUES("591","","Nova fun fun","no_funcionalidade","106");

INSERT INTO tb_auditoria_itens VALUES("592","19","","co_funcionalidade","107");

INSERT INTO tb_auditoria_itens VALUES("593","Nova fun fun","Nova fun fun 22","no_funcionalidade","107");

INSERT INTO tb_auditoria_itens VALUES("594","I","","st_status","107");

INSERT INTO tb_auditoria_itens VALUES("595","18","","co_funcionalidade","108");

INSERT INTO tb_auditoria_itens VALUES("596","itri","","no_funcionalidade","108");

INSERT INTO tb_auditoria_itens VALUES("597","I","","st_status","108");

INSERT INTO tb_auditoria_itens VALUES("598","","Nova Funcionalidade","no_funcionalidade","109");

INSERT INTO tb_auditoria_itens VALUES("599","","20","co_funcionalidade","110");

INSERT INTO tb_auditoria_itens VALUES("600","","5","co_perfil","110");

INSERT INTO tb_auditoria_itens VALUES("601","","20","co_funcionalidade","111");

INSERT INTO tb_auditoria_itens VALUES("602","","3","co_perfil","111");

INSERT INTO tb_auditoria_itens VALUES("603","20","","co_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("604","Nova Funcionalidade","Nova Funcionalidade 22","no_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("605","I","","st_status","112");

INSERT INTO tb_auditoria_itens VALUES("606","33","","co_perfil_funcionalidade","113");

INSERT INTO tb_auditoria_itens VALUES("607","5","","co_perfil","113");

INSERT INTO tb_auditoria_itens VALUES("608","20","","co_funcionalidade","113");

INSERT INTO tb_auditoria_itens VALUES("609","34","","co_perfil_funcionalidade","113");

INSERT INTO tb_auditoria_itens VALUES("610","3","","co_perfil","113");

INSERT INTO tb_auditoria_itens VALUES("611","20","","co_funcionalidade","113");

INSERT INTO tb_auditoria_itens VALUES("612","","20","co_funcionalidade","114");

INSERT INTO tb_auditoria_itens VALUES("613","","5","co_perfil","114");

INSERT INTO tb_auditoria_itens VALUES("614","","20","co_funcionalidade","115");

INSERT INTO tb_auditoria_itens VALUES("615","","3","co_perfil","115");

INSERT INTO tb_auditoria_itens VALUES("616","","20","co_funcionalidade","116");

INSERT INTO tb_auditoria_itens VALUES("617","","2","co_perfil","116");

INSERT INTO tb_auditoria_itens VALUES("618","19","","co_funcionalidade","117");

INSERT INTO tb_auditoria_itens VALUES("619","Nova fun fun 22","Nova fun fun 22","no_funcionalidade","117");

INSERT INTO tb_auditoria_itens VALUES("620","I","","st_status","117");

INSERT INTO tb_auditoria_itens VALUES("621","","19","co_funcionalidade","119");

INSERT INTO tb_auditoria_itens VALUES("622","","6","co_perfil","119");

INSERT INTO tb_auditoria_itens VALUES("623","","Novo Perfil","no_perfil","120");

INSERT INTO tb_auditoria_itens VALUES("624","","7","co_perfil","121");

INSERT INTO tb_auditoria_itens VALUES("625","","20","co_funcionalidade","121");

INSERT INTO tb_auditoria_itens VALUES("626","","7","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("627","","19","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("628","","7","co_perfil","123");

INSERT INTO tb_auditoria_itens VALUES("629","","13","co_funcionalidade","123");

INSERT INTO tb_auditoria_itens VALUES("630","7","","co_perfil","124");

INSERT INTO tb_auditoria_itens VALUES("631","Novo Perfil","Novo Perfil","no_perfil","124");

INSERT INTO tb_auditoria_itens VALUES("632","I","","st_status","124");

INSERT INTO tb_auditoria_itens VALUES("633","39","","co_perfil_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("634","7","","co_perfil","125");

INSERT INTO tb_auditoria_itens VALUES("635","20","","co_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("636","40","","co_perfil_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("637","7","","co_perfil","125");

INSERT INTO tb_auditoria_itens VALUES("638","19","","co_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("639","41","","co_perfil_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("640","7","","co_perfil","125");

INSERT INTO tb_auditoria_itens VALUES("641","13","","co_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("642","","7","co_perfil","126");

INSERT INTO tb_auditoria_itens VALUES("643","","20","co_funcionalidade","126");

INSERT INTO tb_auditoria_itens VALUES("644","","7","co_perfil","127");

INSERT INTO tb_auditoria_itens VALUES("645","","19","co_funcionalidade","127");

INSERT INTO tb_auditoria_itens VALUES("646","6","","co_perfil","128");

INSERT INTO tb_auditoria_itens VALUES("647","iiii","","no_perfil","128");

INSERT INTO tb_auditoria_itens VALUES("648","I","","st_status","128");

INSERT INTO tb_auditoria_itens VALUES("649","","150","nu_total","129");

INSERT INTO tb_auditoria_itens VALUES("650","","1","nu_parcelas","129");

INSERT INTO tb_auditoria_itens VALUES("651","","142","co_inscricao","129");

INSERT INTO tb_auditoria_itens VALUES("652","","149","co_pagamento","130");

INSERT INTO tb_auditoria_itens VALUES("653","","1","co_tipo_pagamento","130");

INSERT INTO tb_auditoria_itens VALUES("654","","1","nu_parcela","130");

INSERT INTO tb_auditoria_itens VALUES("655","","150","nu_valor_parcela","130");

INSERT INTO tb_auditoria_itens VALUES("656","","2018-03-15","dt_vencimento","130");

INSERT INTO tb_auditoria_itens VALUES("657","","150","nu_total","131");

INSERT INTO tb_auditoria_itens VALUES("658","","1","nu_parcelas","131");

INSERT INTO tb_auditoria_itens VALUES("659","","142","co_inscricao","131");

INSERT INTO tb_auditoria_itens VALUES("660","","150","co_pagamento","132");

INSERT INTO tb_auditoria_itens VALUES("661","","1","co_tipo_pagamento","132");

INSERT INTO tb_auditoria_itens VALUES("662","","1","nu_parcela","132");

INSERT INTO tb_auditoria_itens VALUES("663","","150","nu_valor_parcela","132");

INSERT INTO tb_auditoria_itens VALUES("664","","2018-03-15","dt_vencimento","132");

INSERT INTO tb_auditoria_itens VALUES("665","1","","co_contato","133");

INSERT INTO tb_auditoria_itens VALUES("666","61993274991","61993274991","nu_tel1","133");

INSERT INTO tb_auditoria_itens VALUES("667","6130826060","6130826060_","nu_tel2","133");

INSERT INTO tb_auditoria_itens VALUES("668","","","nu_tel3","133");

INSERT INTO tb_auditoria_itens VALUES("669","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","133");

INSERT INTO tb_auditoria_itens VALUES("670","1","","co_endereco","134");

INSERT INTO tb_auditoria_itens VALUES("671","qr 403 conjunto 10 casa 28","qr 403 conjunto 10 casa 28","ds_endereco","134");

INSERT INTO tb_auditoria_itens VALUES("672","","","ds_complemento","134");

INSERT INTO tb_auditoria_itens VALUES("673","Samambaia Norte","Samambaia Norte","ds_bairro","134");

INSERT INTO tb_auditoria_itens VALUES("674","72319111","72319111","nu_cep","134");

INSERT INTO tb_auditoria_itens VALUES("675","Brasília","Brasília","no_cidade","134");

INSERT INTO tb_auditoria_itens VALUES("676","DF","DF","sg_uf","134");

INSERT INTO tb_auditoria_itens VALUES("677","1","","co_pessoa","135");

INSERT INTO tb_auditoria_itens VALUES("678","72681438187","72681438187","nu_cpf","135");

INSERT INTO tb_auditoria_itens VALUES("679","LEONARDO MACHADO CARVALHO BESSA","LEONARDO MACHADO CARVALHO BESSA","no_pessoa","135");

INSERT INTO tb_auditoria_itens VALUES("680","2077811","2077811","nu_rg","135");

INSERT INTO tb_auditoria_itens VALUES("681","2016-10-31 00:00:00","2018-03-16 14:45:52","dt_cadastro","135");

INSERT INTO tb_auditoria_itens VALUES("682","1984-07-06","1984-07-06","dt_nascimento","135");

INSERT INTO tb_auditoria_itens VALUES("683","M","M","st_sexo","135");

INSERT INTO tb_auditoria_itens VALUES("684","1","","co_contato","135");

INSERT INTO tb_auditoria_itens VALUES("685","1","","co_endereco","135");

INSERT INTO tb_auditoria_itens VALUES("686","1","","co_usuario","136");

INSERT INTO tb_auditoria_itens VALUES("687","123456**","123456**","ds_senha","136");

INSERT INTO tb_auditoria_itens VALUES("688","TVRJek5EVTJLaW89","TVRJek5EVTJLaW89","ds_code","136");

INSERT INTO tb_auditoria_itens VALUES("689","A","A","st_status","136");

INSERT INTO tb_auditoria_itens VALUES("690","2016-10-31 00:00:00","","dt_cadastro","136");

INSERT INTO tb_auditoria_itens VALUES("691","1","","co_imagem","136");

INSERT INTO tb_auditoria_itens VALUES("692","1","","co_pessoa","136");

INSERT INTO tb_auditoria_itens VALUES("693","1","","co_usuario_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("694","1","","co_usuario","137");

INSERT INTO tb_auditoria_itens VALUES("695","1","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("696","","1","co_usuario","138");

INSERT INTO tb_auditoria_itens VALUES("697","","6","co_perfil","138");

INSERT INTO tb_auditoria_itens VALUES("698","","1","co_usuario","139");

INSERT INTO tb_auditoria_itens VALUES("699","","4","co_perfil","139");

INSERT INTO tb_auditoria_itens VALUES("700","","1","co_usuario","140");

INSERT INTO tb_auditoria_itens VALUES("701","","3","co_perfil","140");

INSERT INTO tb_auditoria_itens VALUES("702","","1","co_usuario","141");

INSERT INTO tb_auditoria_itens VALUES("703","","3","co_perfil","141");

INSERT INTO tb_auditoria_itens VALUES("704","","Calendário","no_funcionalidade","142");

INSERT INTO tb_auditoria_itens VALUES("705","","21","co_funcionalidade","143");

INSERT INTO tb_auditoria_itens VALUES("706","","3","co_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("707","","Será uma formação com todos nossa sobre os anjos","ds_descricao","144");

INSERT INTO tb_auditoria_itens VALUES("708","","2018-03-16 17:05:02","dt_cadastro","144");

INSERT INTO tb_auditoria_itens VALUES("709","","1","co_usuario","144");

INSERT INTO tb_auditoria_itens VALUES("710","","N","st_dia_todo","144");

INSERT INTO tb_auditoria_itens VALUES("711","","2018-03-10 16:00:00","dt_inicio","144");

INSERT INTO tb_auditoria_itens VALUES("712","","","dt_fim","144");

INSERT INTO tb_auditoria_itens VALUES("713","","Formação dos Anjos","ds_titulo","144");

INSERT INTO tb_auditoria_itens VALUES("714","","4","co_categoria_agenda","144");

INSERT INTO tb_auditoria_itens VALUES("715","","1","co_evento","144");

INSERT INTO tb_auditoria_itens VALUES("716","","2","co_agenda","145");

INSERT INTO tb_auditoria_itens VALUES("717","","7","co_perfil","145");

INSERT INTO tb_auditoria_itens VALUES("718","","2","co_agenda","146");

INSERT INTO tb_auditoria_itens VALUES("719","","6","co_perfil","146");

INSERT INTO tb_auditoria_itens VALUES("720","","Será uma formação com todos nossa sobre os anjos","ds_descricao","147");

INSERT INTO tb_auditoria_itens VALUES("721","","2018-03-16 17:06:44","dt_cadastro","147");

INSERT INTO tb_auditoria_itens VALUES("722","","1","co_usuario","147");

INSERT INTO tb_auditoria_itens VALUES("723","","N","st_dia_todo","147");

INSERT INTO tb_auditoria_itens VALUES("724","","2018-03-10 16:00:00","dt_inicio","147");

INSERT INTO tb_auditoria_itens VALUES("725","","","dt_fim","147");

INSERT INTO tb_auditoria_itens VALUES("726","","Formação dos Anjos","ds_titulo","147");

INSERT INTO tb_auditoria_itens VALUES("727","","4","co_categoria_agenda","147");

INSERT INTO tb_auditoria_itens VALUES("728","","1","co_evento","147");

INSERT INTO tb_auditoria_itens VALUES("729","","3","co_agenda","148");

INSERT INTO tb_auditoria_itens VALUES("730","","7","co_perfil","148");

INSERT INTO tb_auditoria_itens VALUES("731","","3","co_agenda","149");

INSERT INTO tb_auditoria_itens VALUES("732","","6","co_perfil","149");

INSERT INTO tb_auditoria_itens VALUES("742","","Será uma formação com todos nossa sobre os anjos","ds_descricao","151");

INSERT INTO tb_auditoria_itens VALUES("743","","2018-03-16 17:08:34","dt_cadastro","151");

INSERT INTO tb_auditoria_itens VALUES("744","","1","co_usuario","151");

INSERT INTO tb_auditoria_itens VALUES("745","","N","st_dia_todo","151");

INSERT INTO tb_auditoria_itens VALUES("746","","2018-03-10 16:00:00","dt_inicio","151");

INSERT INTO tb_auditoria_itens VALUES("747","","","dt_fim","151");

INSERT INTO tb_auditoria_itens VALUES("748","","Formação dos Anjos","ds_titulo","151");

INSERT INTO tb_auditoria_itens VALUES("749","","4","co_categoria_agenda","151");

INSERT INTO tb_auditoria_itens VALUES("750","","1","co_evento","151");

INSERT INTO tb_auditoria_itens VALUES("751","","5","co_agenda","152");

INSERT INTO tb_auditoria_itens VALUES("752","","7","co_perfil","152");

INSERT INTO tb_auditoria_itens VALUES("753","","5","co_agenda","153");

INSERT INTO tb_auditoria_itens VALUES("754","","6","co_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("755","","Será uma formação com todos nossa sobre os anjos","ds_descricao","154");

INSERT INTO tb_auditoria_itens VALUES("756","","2018-03-16 17:17:43","dt_cadastro","154");

INSERT INTO tb_auditoria_itens VALUES("757","","1","co_usuario","154");

INSERT INTO tb_auditoria_itens VALUES("758","","N","st_dia_todo","154");

INSERT INTO tb_auditoria_itens VALUES("759","","2018-03-10 16:00:00","dt_inicio","154");

INSERT INTO tb_auditoria_itens VALUES("760","","","dt_fim","154");

INSERT INTO tb_auditoria_itens VALUES("761","","Formação dos Anjos","ds_titulo","154");

INSERT INTO tb_auditoria_itens VALUES("762","","4","co_categoria_agenda","154");

INSERT INTO tb_auditoria_itens VALUES("763","","1","co_evento","154");

INSERT INTO tb_auditoria_itens VALUES("764","","6","co_agenda","155");

INSERT INTO tb_auditoria_itens VALUES("765","","7","co_perfil","155");

INSERT INTO tb_auditoria_itens VALUES("766","","6","co_agenda","156");

INSERT INTO tb_auditoria_itens VALUES("767","","6","co_perfil","156");

INSERT INTO tb_auditoria_itens VALUES("768","","vamos ver neh","ds_descricao","157");

INSERT INTO tb_auditoria_itens VALUES("769","","2018-03-19 10:17:58","dt_cadastro","157");

INSERT INTO tb_auditoria_itens VALUES("770","","1","co_usuario","157");

INSERT INTO tb_auditoria_itens VALUES("771","","N","st_dia_todo","157");

INSERT INTO tb_auditoria_itens VALUES("772","","2018-03-17 16:00:00","dt_inicio","157");

INSERT INTO tb_auditoria_itens VALUES("773","","2018-03-20 12:00:00","dt_fim","157");

INSERT INTO tb_auditoria_itens VALUES("774","","Vígília Alegria que vem de Deus","ds_titulo","157");

INSERT INTO tb_auditoria_itens VALUES("775","","5","co_categoria_agenda","157");

INSERT INTO tb_auditoria_itens VALUES("776","","1","co_agenda","158");

INSERT INTO tb_auditoria_itens VALUES("777","","3","co_perfil","158");

INSERT INTO tb_auditoria_itens VALUES("778","","SO PRA VER","ds_descricao","159");

INSERT INTO tb_auditoria_itens VALUES("779","","2018-03-19 10:41:48","dt_cadastro","159");

INSERT INTO tb_auditoria_itens VALUES("780","","1","co_usuario","159");

INSERT INTO tb_auditoria_itens VALUES("781","","N","st_dia_todo","159");

INSERT INTO tb_auditoria_itens VALUES("782","","2018-03-01 20:00:00","dt_inicio","159");

INSERT INTO tb_auditoria_itens VALUES("783","","","dt_fim","159");

INSERT INTO tb_auditoria_itens VALUES("784","","Formação dos Anjos","ds_titulo","159");

INSERT INTO tb_auditoria_itens VALUES("785","","4","co_categoria_agenda","159");

INSERT INTO tb_auditoria_itens VALUES("786","","0","co_evento","159");

INSERT INTO tb_auditoria_itens VALUES("787","","2","co_agenda","160");

INSERT INTO tb_auditoria_itens VALUES("788","","5","co_perfil","160");

INSERT INTO tb_auditoria_itens VALUES("789","","Nova descrição de teste","ds_descricao","161");

INSERT INTO tb_auditoria_itens VALUES("790","","2018-03-19 14:49:21","dt_cadastro","161");

INSERT INTO tb_auditoria_itens VALUES("791","","1","co_usuario","161");

INSERT INTO tb_auditoria_itens VALUES("792","","N","st_dia_todo","161");

INSERT INTO tb_auditoria_itens VALUES("793","","2018-03-13 20:00:00","dt_inicio","161");

INSERT INTO tb_auditoria_itens VALUES("794","","2018-03-13 22:00:00","dt_fim","161");

INSERT INTO tb_auditoria_itens VALUES("795","","Ensaio da Música","ds_titulo","161");

INSERT INTO tb_auditoria_itens VALUES("796","","2","co_categoria_agenda","161");

INSERT INTO tb_auditoria_itens VALUES("797","","1","co_evento","161");

INSERT INTO tb_auditoria_itens VALUES("798","","3","co_agenda","162");

INSERT INTO tb_auditoria_itens VALUES("799","","7","co_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("800","","3","co_agenda","163");

INSERT INTO tb_auditoria_itens VALUES("801","","6","co_perfil","163");

INSERT INTO tb_auditoria_itens VALUES("802","","NOssa próxima reunião","ds_descricao","164");

INSERT INTO tb_auditoria_itens VALUES("803","","1","co_usuario","164");

INSERT INTO tb_auditoria_itens VALUES("804","","2018-03-15 16:00:00","dt_inicio","164");

INSERT INTO tb_auditoria_itens VALUES("805","","","dt_fim","164");

INSERT INTO tb_auditoria_itens VALUES("806","","Reunião Extraordinária","ds_titulo","164");

INSERT INTO tb_auditoria_itens VALUES("807","","1","co_categoria_agenda","164");

INSERT INTO tb_auditoria_itens VALUES("808","","1","co_evento","164");

INSERT INTO tb_auditoria_itens VALUES("809","","2018-03-19 15:18:53","dt_cadastro","164");

INSERT INTO tb_auditoria_itens VALUES("810","","N","st_dia_todo","164");

INSERT INTO tb_auditoria_itens VALUES("811","","4","co_agenda","165");

INSERT INTO tb_auditoria_itens VALUES("812","","3","co_perfil","165");

INSERT INTO tb_auditoria_itens VALUES("813","","4","co_agenda","166");

INSERT INTO tb_auditoria_itens VALUES("814","","2","co_perfil","166");

INSERT INTO tb_auditoria_itens VALUES("815","3","","co_agenda","167");

INSERT INTO tb_auditoria_itens VALUES("816","Nova descrição de teste","","ds_descricao","167");

INSERT INTO tb_auditoria_itens VALUES("817","2018-03-19 14:49:21","","dt_cadastro","167");

INSERT INTO tb_auditoria_itens VALUES("818","N","","st_dia_todo","167");

INSERT INTO tb_auditoria_itens VALUES("819","2018-03-13 20:00:00","","dt_inicio","167");

INSERT INTO tb_auditoria_itens VALUES("820","2018-03-13 22:00:00","","dt_fim","167");

INSERT INTO tb_auditoria_itens VALUES("821","Ensaio da Música","","ds_titulo","167");

INSERT INTO tb_auditoria_itens VALUES("822","1","","co_usuario","167");

INSERT INTO tb_auditoria_itens VALUES("823","2","","co_categoria_agenda","167");

INSERT INTO tb_auditoria_itens VALUES("824","1","","co_evento","167");

INSERT INTO tb_auditoria_itens VALUES("825","","gergre ger gregre ","ds_descricao","168");

INSERT INTO tb_auditoria_itens VALUES("826","","1","co_usuario","168");

INSERT INTO tb_auditoria_itens VALUES("827","","2018-03-14 20:00:00","dt_inicio","168");

INSERT INTO tb_auditoria_itens VALUES("828","","","dt_fim","168");

INSERT INTO tb_auditoria_itens VALUES("829","","novo evento","ds_titulo","168");

INSERT INTO tb_auditoria_itens VALUES("830","","6","co_categoria_agenda","168");

INSERT INTO tb_auditoria_itens VALUES("831","","0","co_evento","168");

INSERT INTO tb_auditoria_itens VALUES("832","","2018-03-19 15:25:59","dt_cadastro","168");

INSERT INTO tb_auditoria_itens VALUES("833","","N","st_dia_todo","168");

INSERT INTO tb_auditoria_itens VALUES("834","","5","co_agenda","169");

INSERT INTO tb_auditoria_itens VALUES("835","","5","co_perfil","169");

INSERT INTO tb_auditoria_itens VALUES("836","","nossa intercessão","ds_descricao","170");

INSERT INTO tb_auditoria_itens VALUES("837","","1","co_usuario","170");

INSERT INTO tb_auditoria_itens VALUES("838","","2018-03-07 20:00:00","dt_inicio","170");

INSERT INTO tb_auditoria_itens VALUES("839","","","dt_fim","170");

INSERT INTO tb_auditoria_itens VALUES("840","","Intercessão missão EAC","ds_titulo","170");

INSERT INTO tb_auditoria_itens VALUES("841","","6","co_categoria_agenda","170");

INSERT INTO tb_auditoria_itens VALUES("842","","0","co_evento","170");

INSERT INTO tb_auditoria_itens VALUES("843","","2018-03-19 15:26:46","dt_cadastro","170");

INSERT INTO tb_auditoria_itens VALUES("844","","N","st_dia_todo","170");

INSERT INTO tb_auditoria_itens VALUES("845","","6","co_agenda","171");

INSERT INTO tb_auditoria_itens VALUES("846","","3","co_perfil","171");

INSERT INTO tb_auditoria_itens VALUES("847","142","","co_inscricao","172");

INSERT INTO tb_auditoria_itens VALUES("848","","","ds_pastoral","172");

INSERT INTO tb_auditoria_itens VALUES("849","N","","ds_retiro","172");

INSERT INTO tb_auditoria_itens VALUES("850","2018-02-19 17:25:24","","dt_cadastro","172");

INSERT INTO tb_auditoria_itens VALUES("851","A","D","st_status","172");

INSERT INTO tb_auditoria_itens VALUES("852","N","","ds_membro_ativo","172");

INSERT INTO tb_auditoria_itens VALUES("853","N","","st_equipe_trabalho","172");

INSERT INTO tb_auditoria_itens VALUES("854","","","ds_situacao_atual_grupo","172");

INSERT INTO tb_auditoria_itens VALUES("855","3","","nu_camisa","172");

INSERT INTO tb_auditoria_itens VALUES("856","REGER","","no_responsavel","172");

INSERT INTO tb_auditoria_itens VALUES("857","53232364364","","nu_tel_responsavel","172");

INSERT INTO tb_auditoria_itens VALUES("858","dfg","","ds_descricao","172");

INSERT INTO tb_auditoria_itens VALUES("859","","","ds_medicacao","172");

INSERT INTO tb_auditoria_itens VALUES("860","","","ds_alimentacao","172");

INSERT INTO tb_auditoria_itens VALUES("861","187","","co_pessoa","172");

INSERT INTO tb_auditoria_itens VALUES("862","184","","co_imagem","172");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Informações da tabela da auditotia',
  `no_tabela` varchar(45) NOT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL COMMENT 'I - Insert / U - Update / D - Delete',
  `co_registro` int(11) DEFAULT NULL COMMENT 'Código da chave primária da tabela de origem',
  `co_auditoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;


INSERT INTO tb_auditoria_tabela VALUES("1","TB_ENDERECO","I","185","220");

INSERT INTO tb_auditoria_tabela VALUES("2","TB_CONTATO","I","186","220");

INSERT INTO tb_auditoria_tabela VALUES("3","TB_PESSOA","I","183","220");

INSERT INTO tb_auditoria_tabela VALUES("4","TB_IMAGEM","I","180","220");

INSERT INTO tb_auditoria_tabela VALUES("5","TB_INSCRICAO","I","138","220");

INSERT INTO tb_auditoria_tabela VALUES("6","TB_PAGAMENTO","I","143","221");

INSERT INTO tb_auditoria_tabela VALUES("7","TB_PARCELAMENTO","I","2","221");

INSERT INTO tb_auditoria_tabela VALUES("8","TB_ENDERECO","I","186","222");

INSERT INTO tb_auditoria_tabela VALUES("9","TB_CONTATO","I","187","222");

INSERT INTO tb_auditoria_tabela VALUES("10","TB_PESSOA","I","184","222");

INSERT INTO tb_auditoria_tabela VALUES("11","TB_IMAGEM","I","181","222");

INSERT INTO tb_auditoria_tabela VALUES("12","TB_INSCRICAO","I","139","222");

INSERT INTO tb_auditoria_tabela VALUES("13","TB_PAGAMENTO","I","144","223");

INSERT INTO tb_auditoria_tabela VALUES("14","TB_PARCELAMENTO","I","3","223");

INSERT INTO tb_auditoria_tabela VALUES("15","TB_PAGAMENTO","I","145","223");

INSERT INTO tb_auditoria_tabela VALUES("16","TB_PARCELAMENTO","I","4","223");

INSERT INTO tb_auditoria_tabela VALUES("17","TB_ACESSO","I","257","224");

INSERT INTO tb_auditoria_tabela VALUES("30","TB_ENDERECO","U","186","237");

INSERT INTO tb_auditoria_tabela VALUES("31","TB_CONTATO","U","187","237");

INSERT INTO tb_auditoria_tabela VALUES("32","TB_PESSOA","U","184","237");

INSERT INTO tb_auditoria_tabela VALUES("33","TB_INSCRICAO","U","139","237");

INSERT INTO tb_auditoria_tabela VALUES("37","TB_ENDERECO","I","187","239");

INSERT INTO tb_auditoria_tabela VALUES("38","TB_CONTATO","I","188","239");

INSERT INTO tb_auditoria_tabela VALUES("39","TB_PESSOA","I","185","239");

INSERT INTO tb_auditoria_tabela VALUES("40","TB_IMAGEM","I","182","239");

INSERT INTO tb_auditoria_tabela VALUES("41","TB_INSCRICAO","I","140","239");

INSERT INTO tb_auditoria_tabela VALUES("42","TB_PAGAMENTO","I","146","240");

INSERT INTO tb_auditoria_tabela VALUES("43","TB_PARCELAMENTO","I","6","240");

INSERT INTO tb_auditoria_tabela VALUES("44","TB_ENDERECO","I","188","241");

INSERT INTO tb_auditoria_tabela VALUES("45","TB_CONTATO","I","189","241");

INSERT INTO tb_auditoria_tabela VALUES("46","TB_PESSOA","I","186","241");

INSERT INTO tb_auditoria_tabela VALUES("47","TB_IMAGEM","I","183","241");

INSERT INTO tb_auditoria_tabela VALUES("48","TB_INSCRICAO","I","141","241");

INSERT INTO tb_auditoria_tabela VALUES("49","TB_PAGAMENTO","I","147","242");

INSERT INTO tb_auditoria_tabela VALUES("50","TB_PARCELAMENTO","I","7","242");

INSERT INTO tb_auditoria_tabela VALUES("51","TB_ENDERECO","I","189","243");

INSERT INTO tb_auditoria_tabela VALUES("52","TB_CONTATO","I","190","243");

INSERT INTO tb_auditoria_tabela VALUES("53","TB_PESSOA","I","187","243");

INSERT INTO tb_auditoria_tabela VALUES("54","TB_IMAGEM","I","184","243");

INSERT INTO tb_auditoria_tabela VALUES("55","TB_INSCRICAO","I","142","243");

INSERT INTO tb_auditoria_tabela VALUES("56","TB_PAGAMENTO","I","148","244");

INSERT INTO tb_auditoria_tabela VALUES("57","TB_PARCELAMENTO","I","8","244");

INSERT INTO tb_auditoria_tabela VALUES("58","TB_ENDERECO","U","186","245");

INSERT INTO tb_auditoria_tabela VALUES("59","TB_CONTATO","U","187","245");

INSERT INTO tb_auditoria_tabela VALUES("60","TB_PESSOA","U","184","245");

INSERT INTO tb_auditoria_tabela VALUES("61","TB_INSCRICAO","U","139","245");

INSERT INTO tb_auditoria_tabela VALUES("62","TB_ENDERECO","U","186","246");

INSERT INTO tb_auditoria_tabela VALUES("63","TB_CONTATO","U","187","246");

INSERT INTO tb_auditoria_tabela VALUES("64","TB_PESSOA","U","184","246");

INSERT INTO tb_auditoria_tabela VALUES("65","TB_INSCRICAO","U","139","246");

INSERT INTO tb_auditoria_tabela VALUES("66","TB_ENDERECO","U","186","247");

INSERT INTO tb_auditoria_tabela VALUES("67","TB_CONTATO","U","187","247");

INSERT INTO tb_auditoria_tabela VALUES("68","TB_PESSOA","U","184","247");

INSERT INTO tb_auditoria_tabela VALUES("69","TB_INSCRICAO","U","139","247");

INSERT INTO tb_auditoria_tabela VALUES("71","TB_ENDERECO","U","186","249");

INSERT INTO tb_auditoria_tabela VALUES("72","TB_CONTATO","U","187","249");

INSERT INTO tb_auditoria_tabela VALUES("73","TB_PESSOA","U","184","249");

INSERT INTO tb_auditoria_tabela VALUES("74","TB_INSCRICAO","U","139","249");

INSERT INTO tb_auditoria_tabela VALUES("75","TB_ENDERECO","U","186","250");

INSERT INTO tb_auditoria_tabela VALUES("76","TB_CONTATO","U","187","250");

INSERT INTO tb_auditoria_tabela VALUES("77","TB_PESSOA","U","184","250");

INSERT INTO tb_auditoria_tabela VALUES("78","TB_INSCRICAO","U","139","250");

INSERT INTO tb_auditoria_tabela VALUES("79","TB_ENDERECO","I","190","251");

INSERT INTO tb_auditoria_tabela VALUES("80","TB_CONTATO","I","191","251");

INSERT INTO tb_auditoria_tabela VALUES("81","TB_IMAGEM","I","185","251");

INSERT INTO tb_auditoria_tabela VALUES("82","TB_PESSOA","I","188","251");

INSERT INTO tb_auditoria_tabela VALUES("83","TB_USUARIO","I","2","251");

INSERT INTO tb_auditoria_tabela VALUES("84","TB_USUARIO_PERFIL","I","2","251");

INSERT INTO tb_auditoria_tabela VALUES("85","TB_CONTATO","U","191","252");

INSERT INTO tb_auditoria_tabela VALUES("86","TB_ENDERECO","U","190","252");

INSERT INTO tb_auditoria_tabela VALUES("87","TB_PESSOA","U","188","252");

INSERT INTO tb_auditoria_tabela VALUES("88","TB_USUARIO","U","2","252");

INSERT INTO tb_auditoria_tabela VALUES("89","TB_USUARIO_PERFIL","D","","252");

INSERT INTO tb_auditoria_tabela VALUES("90","TB_USUARIO_PERFIL","I","3","252");

INSERT INTO tb_auditoria_tabela VALUES("91","TB_USUARIO_PERFIL","I","4","252");

INSERT INTO tb_auditoria_tabela VALUES("92","TB_USUARIO_PERFIL","I","5","252");

INSERT INTO tb_auditoria_tabela VALUES("93","TB_USUARIO_PERFIL","I","6","252");

INSERT INTO tb_auditoria_tabela VALUES("94","TB_PARCELAMENTO","U","7","253");

INSERT INTO tb_auditoria_tabela VALUES("95","TB_PAGAMENTO","U","147","253");

INSERT INTO tb_auditoria_tabela VALUES("96","TB_PARCELAMENTO","U","6","254");

INSERT INTO tb_auditoria_tabela VALUES("97","TB_PAGAMENTO","U","146","254");

INSERT INTO tb_auditoria_tabela VALUES("98","TB_ENDERECO","U","186","255");

INSERT INTO tb_auditoria_tabela VALUES("99","TB_CONTATO","U","187","255");

INSERT INTO tb_auditoria_tabela VALUES("100","TB_PESSOA","U","184","255");

INSERT INTO tb_auditoria_tabela VALUES("101","TB_INSCRICAO","U","139","255");

INSERT INTO tb_auditoria_tabela VALUES("102","TB_ENDERECO","U","182","256");

INSERT INTO tb_auditoria_tabela VALUES("103","TB_CONTATO","U","185","256");

INSERT INTO tb_auditoria_tabela VALUES("104","TB_PESSOA","U","182","256");

INSERT INTO tb_auditoria_tabela VALUES("105","TB_INSCRICAO","U","137","256");

INSERT INTO tb_auditoria_tabela VALUES("106","TB_FUNCIONALIDADE","I","19","257");

INSERT INTO tb_auditoria_tabela VALUES("107","TB_FUNCIONALIDADE","U","19","258");

INSERT INTO tb_auditoria_tabela VALUES("108","TB_FUNCIONALIDADE","D","18","259");

INSERT INTO tb_auditoria_tabela VALUES("109","TB_FUNCIONALIDADE","I","20","260");

INSERT INTO tb_auditoria_tabela VALUES("110","TB_PERFIL_FUNCIONALIDADE","I","33","260");

INSERT INTO tb_auditoria_tabela VALUES("111","TB_PERFIL_FUNCIONALIDADE","I","34","260");

INSERT INTO tb_auditoria_tabela VALUES("112","TB_FUNCIONALIDADE","U","20","261");

INSERT INTO tb_auditoria_tabela VALUES("113","TB_PERFIL_FUNCIONALIDADE","D","","261");

INSERT INTO tb_auditoria_tabela VALUES("114","TB_PERFIL_FUNCIONALIDADE","I","35","261");

INSERT INTO tb_auditoria_tabela VALUES("115","TB_PERFIL_FUNCIONALIDADE","I","36","261");

INSERT INTO tb_auditoria_tabela VALUES("116","TB_PERFIL_FUNCIONALIDADE","I","37","261");

INSERT INTO tb_auditoria_tabela VALUES("117","TB_FUNCIONALIDADE","U","19","262");

INSERT INTO tb_auditoria_tabela VALUES("118","TB_PERFIL_FUNCIONALIDADE","D","","262");

INSERT INTO tb_auditoria_tabela VALUES("119","TB_PERFIL_FUNCIONALIDADE","I","38","262");

INSERT INTO tb_auditoria_tabela VALUES("120","TB_PERFIL","I","7","263");

INSERT INTO tb_auditoria_tabela VALUES("121","TB_PERFIL_FUNCIONALIDADE","I","39","263");

INSERT INTO tb_auditoria_tabela VALUES("122","TB_PERFIL_FUNCIONALIDADE","I","40","263");

INSERT INTO tb_auditoria_tabela VALUES("123","TB_PERFIL_FUNCIONALIDADE","I","41","263");

INSERT INTO tb_auditoria_tabela VALUES("124","TB_PERFIL","U","7","264");

INSERT INTO tb_auditoria_tabela VALUES("125","TB_PERFIL_FUNCIONALIDADE","D","","264");

INSERT INTO tb_auditoria_tabela VALUES("126","TB_PERFIL_FUNCIONALIDADE","I","42","264");

INSERT INTO tb_auditoria_tabela VALUES("127","TB_PERFIL_FUNCIONALIDADE","I","43","264");

INSERT INTO tb_auditoria_tabela VALUES("128","TB_PERFIL","D","6","265");

INSERT INTO tb_auditoria_tabela VALUES("129","TB_PAGAMENTO","I","149","266");

INSERT INTO tb_auditoria_tabela VALUES("130","TB_PARCELAMENTO","I","9","266");

INSERT INTO tb_auditoria_tabela VALUES("131","TB_PAGAMENTO","I","150","267");

INSERT INTO tb_auditoria_tabela VALUES("132","TB_PARCELAMENTO","I","10","267");

INSERT INTO tb_auditoria_tabela VALUES("133","TB_CONTATO","U","1","268");

INSERT INTO tb_auditoria_tabela VALUES("134","TB_ENDERECO","U","1","268");

INSERT INTO tb_auditoria_tabela VALUES("135","TB_PESSOA","U","1","268");

INSERT INTO tb_auditoria_tabela VALUES("136","TB_USUARIO","U","1","268");

INSERT INTO tb_auditoria_tabela VALUES("137","TB_USUARIO_PERFIL","D","","268");

INSERT INTO tb_auditoria_tabela VALUES("138","TB_USUARIO_PERFIL","I","7","268");

INSERT INTO tb_auditoria_tabela VALUES("139","TB_USUARIO_PERFIL","I","8","268");

INSERT INTO tb_auditoria_tabela VALUES("140","TB_USUARIO_PERFIL","I","9","268");

INSERT INTO tb_auditoria_tabela VALUES("141","TB_USUARIO_PERFIL","I","10","268");

INSERT INTO tb_auditoria_tabela VALUES("142","TB_FUNCIONALIDADE","I","21","269");

INSERT INTO tb_auditoria_tabela VALUES("143","TB_PERFIL_FUNCIONALIDADE","I","44","269");

INSERT INTO tb_auditoria_tabela VALUES("144","TB_AGENDA","I","2","270");

INSERT INTO tb_auditoria_tabela VALUES("145","TB_PERFIL_AGENDA","I","3","270");

INSERT INTO tb_auditoria_tabela VALUES("146","TB_PERFIL_AGENDA","I","4","270");

INSERT INTO tb_auditoria_tabela VALUES("147","TB_AGENDA","I","3","271");

INSERT INTO tb_auditoria_tabela VALUES("148","TB_PERFIL_AGENDA","I","5","271");

INSERT INTO tb_auditoria_tabela VALUES("149","TB_PERFIL_AGENDA","I","6","271");

INSERT INTO tb_auditoria_tabela VALUES("151","TB_AGENDA","I","5","273");

INSERT INTO tb_auditoria_tabela VALUES("152","TB_PERFIL_AGENDA","I","7","273");

INSERT INTO tb_auditoria_tabela VALUES("153","TB_PERFIL_AGENDA","I","8","273");

INSERT INTO tb_auditoria_tabela VALUES("154","TB_AGENDA","I","6","274");

INSERT INTO tb_auditoria_tabela VALUES("155","TB_PERFIL_AGENDA","I","9","274");

INSERT INTO tb_auditoria_tabela VALUES("156","TB_PERFIL_AGENDA","I","10","274");

INSERT INTO tb_auditoria_tabela VALUES("157","TB_AGENDA","I","1","275");

INSERT INTO tb_auditoria_tabela VALUES("158","TB_PERFIL_AGENDA","I","11","275");

INSERT INTO tb_auditoria_tabela VALUES("159","TB_AGENDA","I","2","276");

INSERT INTO tb_auditoria_tabela VALUES("160","TB_PERFIL_AGENDA","I","12","276");

INSERT INTO tb_auditoria_tabela VALUES("161","TB_AGENDA","I","3","277");

INSERT INTO tb_auditoria_tabela VALUES("162","TB_PERFIL_AGENDA","I","13","277");

INSERT INTO tb_auditoria_tabela VALUES("163","TB_PERFIL_AGENDA","I","14","277");

INSERT INTO tb_auditoria_tabela VALUES("164","TB_AGENDA","I","4","278");

INSERT INTO tb_auditoria_tabela VALUES("165","TB_PERFIL_AGENDA","I","15","278");

INSERT INTO tb_auditoria_tabela VALUES("166","TB_PERFIL_AGENDA","I","16","278");

INSERT INTO tb_auditoria_tabela VALUES("167","TB_AGENDA","D","3","279");

INSERT INTO tb_auditoria_tabela VALUES("168","TB_AGENDA","I","5","280");

INSERT INTO tb_auditoria_tabela VALUES("169","TB_PERFIL_AGENDA","I","17","280");

INSERT INTO tb_auditoria_tabela VALUES("170","TB_AGENDA","I","6","281");

INSERT INTO tb_auditoria_tabela VALUES("171","TB_PERFIL_AGENDA","I","18","281");

INSERT INTO tb_auditoria_tabela VALUES("172","TB_INSCRICAO","U","142","282");




DROP TABLE IF EXISTS tb_categoria_agenda;


CREATE TABLE `tb_categoria_agenda` (
  `co_categoria_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_agenda` varchar(60) DEFAULT NULL,
  `ds_cor` varchar(20) NOT NULL,
  PRIMARY KEY (`co_categoria_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO tb_categoria_agenda VALUES("1","Reunião","green");

INSERT INTO tb_categoria_agenda VALUES("2","Ensaio","default");

INSERT INTO tb_categoria_agenda VALUES("3","Encontro","purple");

INSERT INTO tb_categoria_agenda VALUES("4","Formação","orange");

INSERT INTO tb_categoria_agenda VALUES("5","Evento","beige");

INSERT INTO tb_categoria_agenda VALUES("6","Intercessão","primary");




DROP TABLE IF EXISTS tb_categoria_evento;


CREATE TABLE `tb_categoria_evento` (
  `co_categoria_evento` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_evento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`co_categoria_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


INSERT INTO tb_categoria_evento VALUES("1","Outros");

INSERT INTO tb_categoria_evento VALUES("2","Retiro");

INSERT INTO tb_categoria_evento VALUES("3","Vigília");

INSERT INTO tb_categoria_evento VALUES("4","Intercessão");

INSERT INTO tb_categoria_evento VALUES("5","Pregação");

INSERT INTO tb_categoria_evento VALUES("6","Adoração");

INSERT INTO tb_categoria_evento VALUES("7","Tarde de Integração");




DROP TABLE IF EXISTS tb_comissao_evento;


CREATE TABLE `tb_comissao_evento` (
  `co_comissao_evento` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(11) NOT NULL,
  `co_evento` int(11) NOT NULL,
  PRIMARY KEY (`co_comissao_evento`,`co_usuario`,`co_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_contato;


CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;


INSERT INTO tb_contato VALUES("1","61993274991","6130826060_","","leonardomcbessa@gmail.com");

INSERT INTO tb_contato VALUES("184","44354364643","","","gg4rteg@tghtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("185","43253253253","","","grfefffg@tghtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("186","43325332523","","","ggGSG4reg@tghtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("187","11111111111","","","mail@mail.com");

INSERT INTO tb_contato VALUES("188","43254235325","","","grefffrfgffff@tghtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("189","43434343543","","","gg4reg@tghggtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("190","32543643643","","","grefffg@tggghtrhrjytj.com.br");

INSERT INTO tb_contato VALUES("191","32543543543","___________","","gg4ddreg@tghtrhrjytj.com.br");




DROP TABLE IF EXISTS tb_endereco;


CREATE TABLE `tb_endereco` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) NOT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(15) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;


INSERT INTO tb_endereco VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("181","QNF 8 casa 32 teste htr h","","","","","DF");

INSERT INTO tb_endereco VALUES("182","QNF 8 casa 32 teste htr h","","","","","DF");

INSERT INTO tb_endereco VALUES("185","QNF 8 casa 32 teste htr hr 3r","","","","","DF");

INSERT INTO tb_endereco VALUES("186","QNF 8 casa 32 teste novo endereco","","","","","DF");

INSERT INTO tb_endereco VALUES("187","QNF 8 casa 32 testeerg er gfwef","","","","","DF");

INSERT INTO tb_endereco VALUES("188","QNF 8 casa 32 testegre","","","","","DF");

INSERT INTO tb_endereco VALUES("189","QNF 8 casa 32 teste htr hr 3rgg","","","","","DF");

INSERT INTO tb_endereco VALUES("190","QNF 8 casa 32 testeerg er g","","","","","DF");




DROP TABLE IF EXISTS tb_evento;


CREATE TABLE `tb_evento` (
  `co_evento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL COMMENT 'Data do cadastro',
  `co_categoria_evento` int(11) NOT NULL,
  `co_endereco` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL COMMENT 'Capa do Evento',
  PRIMARY KEY (`co_evento`,`co_categoria_evento`,`co_endereco`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tb_evento VALUES("1","Nossa vígilia de 24 horas com maria","2018-03-19 00:00:00","2","1","1");




DROP TABLE IF EXISTS tb_funcionalidade;


CREATE TABLE `tb_funcionalidade` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO tb_funcionalidade VALUES("1","Perfil Master","A");

INSERT INTO tb_funcionalidade VALUES("2","Auditoria Listar","A");

INSERT INTO tb_funcionalidade VALUES("3","Auditoria Detalhar","A");

INSERT INTO tb_funcionalidade VALUES("4","Usuario Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("5","Usuario Listar","A");

INSERT INTO tb_funcionalidade VALUES("6","Meu Usuario","A");

INSERT INTO tb_funcionalidade VALUES("7","Perfil Listar","A");

INSERT INTO tb_funcionalidade VALUES("8","Perfil Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("9","Funcionalidade Listar","A");

INSERT INTO tb_funcionalidade VALUES("10","Funcionalidade Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("11","Funcionalidades Perfil","A");

INSERT INTO tb_funcionalidade VALUES("12","Listar Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("13","Editar Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("14","Detalhar Pagamento Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("15","Editar Parcela Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("16","Sobre Vc Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("17","Detalhes Inscrição","A");

INSERT INTO tb_funcionalidade VALUES("18","Calendário","A");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;


INSERT INTO tb_imagem VALUES("1","leonardo-m-c-bessa-56e8920c23ab6.jpg");

INSERT INTO tb_imagem VALUES("2","amanda-tominaga-5a255cea199ad.jpg");

INSERT INTO tb_imagem VALUES("3","igor-borges-leite-5a255f7c41f75.jpg");

INSERT INTO tb_imagem VALUES("4","brenda-nayane-duda-moreira-5a25807eb2270.jpg");

INSERT INTO tb_imagem VALUES("5","amaury-costa-silva-ramos-5a2586f59c0e0.jpg");

INSERT INTO tb_imagem VALUES("6","henrique-carvalho-assuncao-5a259c70e65a0.jpg");

INSERT INTO tb_imagem VALUES("7","amanda-silva-lima-5a259f4e532ad.jpg");

INSERT INTO tb_imagem VALUES("8","jerlane-soares-magalhaes-da-silva-5a25a537f1d0c.jpg");

INSERT INTO tb_imagem VALUES("9","joao-victor-pereira-fernandes-5a25a62b62be8.jpg");

INSERT INTO tb_imagem VALUES("10","karen-geovanna-figueredo-dos-santos-5a25b4f1383d9.jpg");

INSERT INTO tb_imagem VALUES("11","thais-lima-rocha-5a25bc8aba273.jpg");

INSERT INTO tb_imagem VALUES("12","thais-lima-rocha-5a25bcd7719e2.jpg");

INSERT INTO tb_imagem VALUES("13","fabricio-alves-oliveira-5a25e55ada86d.jpeg");

INSERT INTO tb_imagem VALUES("14","isabela-araujo-dos-santos-5a25ec017aab5.jpeg");

INSERT INTO tb_imagem VALUES("15","vitoria-p-lima-5a25fb07f2f3f.jpg");

INSERT INTO tb_imagem VALUES("16","lucas-cunha-ribeiro-5a2671509f2e6.jpg");

INSERT INTO tb_imagem VALUES("17","wallisson-matias-de-sousa-5a2687e5d3b36.jpg");

INSERT INTO tb_imagem VALUES("18","manuela-correa-marangoni-5a2699bda4bb7.JPG");

INSERT INTO tb_imagem VALUES("19","priscila-martins-matias-5a26a59585921.jpg");

INSERT INTO tb_imagem VALUES("20","mercia-batista-miranda-5a26bd6a8321f.html");

INSERT INTO tb_imagem VALUES("21","veronica-cristina-de-lima-ribeiro-5a275871ad572.JPG");

INSERT INTO tb_imagem VALUES("22","kamila-silva-5a276f0ae6653.JPG");

INSERT INTO tb_imagem VALUES("23","diogo-da-silva-cardoso-5a28962de2ab7.jpg");

INSERT INTO tb_imagem VALUES("24","cassio-rodrigues-castro-5a28a6cd3d36c.jpg");

INSERT INTO tb_imagem VALUES("25","catherine-mendes-de-jesus-5a2999b0286fe.jpg");

INSERT INTO tb_imagem VALUES("26","eduardo-pires-tominaga-5a29bed5a0225.jpg");

INSERT INTO tb_imagem VALUES("27","thainata-tonha-de-santana-5a2a7763a5979.jpg");

INSERT INTO tb_imagem VALUES("28","raul-dia-miranda-cardoso-5a2b37130d776.jpg");

INSERT INTO tb_imagem VALUES("29","erica-stephanie-de-sousa-carvalho-5a2b3b4ca719f.jpg");

INSERT INTO tb_imagem VALUES("30","lucrece-neri-portela-5a2bca0cec4f3.png");

INSERT INTO tb_imagem VALUES("31","");

INSERT INTO tb_imagem VALUES("32","pedro-augusto-pacheco-5a2c20026bda4.png");

INSERT INTO tb_imagem VALUES("33","gabriella-lima-tonha-5a2c31037a294.jpg");

INSERT INTO tb_imagem VALUES("34","raul-dias-miranda-cardoso-5a2dc30837843.jpg");

INSERT INTO tb_imagem VALUES("35","luana-ribeiro-bessa-5a2dd618a02ec.jpg");

INSERT INTO tb_imagem VALUES("36","luana-ribeiro-bessa-5a2dd73e1d6dd.jpg");

INSERT INTO tb_imagem VALUES("37","leticia-machado-carvalho-bessa-5a2ed7ed5b120.jpg");

INSERT INTO tb_imagem VALUES("38","evelyn-ribeiro-da-silva-5a2edf7d99956.jpg");

INSERT INTO tb_imagem VALUES("39","vitoria-prudencio-lima-5a2ee1c7795ee.jpg");

INSERT INTO tb_imagem VALUES("40","lara-de-sousa-almeida-5a2eeafd99646.jpg");

INSERT INTO tb_imagem VALUES("41","gabriela-mendes-souza-5a2ef5fb55046.JPG");

INSERT INTO tb_imagem VALUES("42","daniela-mendes-de-souza-5a2ef759696ef.JPG");

INSERT INTO tb_imagem VALUES("43","isabella-garcia-mendes-5a2fea875ed9d.jpeg");

INSERT INTO tb_imagem VALUES("44","vitor-hugo-barroso-5a2ff9d0975a9.jpg");

INSERT INTO tb_imagem VALUES("45","lara-de-sousa-almeida-5a30086bea207.jpg");

INSERT INTO tb_imagem VALUES("46","antonio-carlos-ramos-lima-5a3281c7028bd.jpg");

INSERT INTO tb_imagem VALUES("47","antonio-carlos-ramos-lima-5a328901f34d8.jpg");

INSERT INTO tb_imagem VALUES("48","larissa-mesquita-5a3548a6d260a.jpeg");

INSERT INTO tb_imagem VALUES("49","carlos-christian-5a35a1595c65f.jpeg");

INSERT INTO tb_imagem VALUES("50","danielle-patricia-guedes-e-silva-5a37f567d5bc9.jpg");

INSERT INTO tb_imagem VALUES("51","barbara-silva-5a382cd0273e4.JPG");

INSERT INTO tb_imagem VALUES("52","paullo-vinicius-pereira-fogaca-5a38592c7c041.jpg");

INSERT INTO tb_imagem VALUES("53","karolina-mota-5a3859941174a.jpg");

INSERT INTO tb_imagem VALUES("54","");

INSERT INTO tb_imagem VALUES("55","maria-gabriela-alves-rodrigues-5a385a6e22d3d.JPG");

INSERT INTO tb_imagem VALUES("56","monique-vieira-pereira-pinheiro-5a385d7e117fe.jpg");

INSERT INTO tb_imagem VALUES("57","");

INSERT INTO tb_imagem VALUES("58","thais-oliveira-da-costa-maia-5a392bc38f141.jpg");

INSERT INTO tb_imagem VALUES("59","leticia-martins-de-sousa-5a392db0f3b6e.jpeg");

INSERT INTO tb_imagem VALUES("60","keiter-da-silva-maia-5a392e946d57a.jpg");

INSERT INTO tb_imagem VALUES("61","roniel-rodrigues-albuquerque-5a392f6e7db2e.jpeg");

INSERT INTO tb_imagem VALUES("62","lilian-machado-carvalho-bessa-5a3aeb2c7d19c.jpg");

INSERT INTO tb_imagem VALUES("63","thamires-barbosa-de-almeida-5a3b9ef83e8fd.JPG");

INSERT INTO tb_imagem VALUES("64","anna-caroliny-rodrigues-lauro-5a3bccb69e958.jpg");

INSERT INTO tb_imagem VALUES("65","clarisse-vitoria-franca-pereira-5a3bf6f9badea.png");

INSERT INTO tb_imagem VALUES("66","");

INSERT INTO tb_imagem VALUES("67","joyce-lopes-ferreira-5a3eee236ef36.jpg");

INSERT INTO tb_imagem VALUES("68","sabrina-belarmina-de-abreu-5a3fe0395f2b1.jpg");

INSERT INTO tb_imagem VALUES("69","karine-victoria-oliveira-da-silva-5a424beadbd6e.jpg");

INSERT INTO tb_imagem VALUES("70","leticia-pereira-da-silva-5a424fdcb2a95.jpg");

INSERT INTO tb_imagem VALUES("71","evelyn-ribeiro-5a426c1a5307a.jpg");

INSERT INTO tb_imagem VALUES("72","taynara-ribeiro-de-lima-5a426c2d3e1d4.jpg");

INSERT INTO tb_imagem VALUES("73","adriel-clementino-dos-santos-5a43cf25e52e3.jpeg");

INSERT INTO tb_imagem VALUES("74","");

INSERT INTO tb_imagem VALUES("75","kamila-silva-5a443ec4a76fd.jpeg");

INSERT INTO tb_imagem VALUES("76","maria-tayanne-5a450f512dfe2.jpg");

INSERT INTO tb_imagem VALUES("77","luamar-de-sousa-da-silva-5a458b9ed3d8f.jpg");

INSERT INTO tb_imagem VALUES("78","carolina-franca-dos-santos-5a46908ab3996.jpg");

INSERT INTO tb_imagem VALUES("79","isabella-garcia-mendes-5a4773896b254.jpeg");

INSERT INTO tb_imagem VALUES("80","linneker-lima-r-gomes-5a477a7040c27.jpeg");

INSERT INTO tb_imagem VALUES("81","laura-dos-santos-bussolo-5a479c5a028c9.JPG");

INSERT INTO tb_imagem VALUES("82","maylla-souza-balzani-5a47d87adde41.jpg");

INSERT INTO tb_imagem VALUES("83","jessika-layane-da-cruz-rocha-5a4a88bf2863f.jpg");

INSERT INTO tb_imagem VALUES("84","brena-kessia-apolinario-5a4aa20ba117f.jpg");

INSERT INTO tb_imagem VALUES("85","maria-rita-de-franca-oliveira-5a4ad4ff42bd8.jpeg");

INSERT INTO tb_imagem VALUES("86","deivson-rodrigo-carvalho-de-lima-5a4c1a3c900ab.jpg");

INSERT INTO tb_imagem VALUES("87","victtoria-macedo-leal-5a4c4910ee32c.jpeg");

INSERT INTO tb_imagem VALUES("88","gustavo-rodrigues-viana-5a4d17654bb74.jpg");

INSERT INTO tb_imagem VALUES("89","edilene-da-cruz-silva-5a4e23efada64.jpg");

INSERT INTO tb_imagem VALUES("90","gleice-izabel-de-azevedo-5a4e30667f2f8.jpg");

INSERT INTO tb_imagem VALUES("91","leticia-machado-carvalho-bessa-5a4e814dc2202.jpg");

INSERT INTO tb_imagem VALUES("92","gabriel-da-silva-barbosa-5a4f6fc3aeb67.jpg");

INSERT INTO tb_imagem VALUES("93","paloma-maria-ferreira-da-silva-5a4fac86db822.jpg");

INSERT INTO tb_imagem VALUES("94","maria-leticia-souza-de-jesus-5a4fb4c0a4762.jpeg");

INSERT INTO tb_imagem VALUES("95","daniel-silva-almeida-5a4fbfea1a304.jpg");

INSERT INTO tb_imagem VALUES("97","thaynara-barbosa-de-almeida-5a50fb7da2645.jpg");

INSERT INTO tb_imagem VALUES("98","jennifer-bianca-candido-souza-5a5139eb89171.jpeg");

INSERT INTO tb_imagem VALUES("99","");

INSERT INTO tb_imagem VALUES("100","maysa-pereira-dias-5a515096dc444.jpg");

INSERT INTO tb_imagem VALUES("101","maysa-pereira-dias-5a5153d36cf9c.jpg");

INSERT INTO tb_imagem VALUES("102","fernanda-soares-conceicao-5a515f69774ba.jpg");

INSERT INTO tb_imagem VALUES("103","leticia-maria-lima-gomes-5a51631351f0e.png");

INSERT INTO tb_imagem VALUES("104","amanda-neves-de-carvalho-5a521cba1cda0.jpg");

INSERT INTO tb_imagem VALUES("105","amanda-neves-de-carvalho-5a7336c0f13e3.jpg");

INSERT INTO tb_imagem VALUES("106","");

INSERT INTO tb_imagem VALUES("107","fernanda-gomes-de-freitas-moura-et-5a528b2b5b9bc.jpeg");

INSERT INTO tb_imagem VALUES("108","pedro-henrique-pires-fontes-5a529da62250c.jpg");

INSERT INTO tb_imagem VALUES("109","ronny-ken-dias-tominaga-5a52a1923f1e3.jpg");

INSERT INTO tb_imagem VALUES("110","bianca-ceci-maria-da-silva-vieira-justiniano-pinto-5a52a240c32d5.jpg");

INSERT INTO tb_imagem VALUES("111","victor-hugo-souza-rodrigues-5a52bbef65f75.jpg");

INSERT INTO tb_imagem VALUES("112","tayane-moreira-da-mota-5a52c95d2beea.jpg");

INSERT INTO tb_imagem VALUES("113","laura-marina-da-silva-doca-chagas-5a53d20cc19ff.JPG");

INSERT INTO tb_imagem VALUES("114","ana-karolyna-figueredo-dos-santos-5a53e74e59b29.jpg");

INSERT INTO tb_imagem VALUES("115","bruno-lima-de-souza-5a53ef3756803.jpg");

INSERT INTO tb_imagem VALUES("116","murillo-medeiros-da-costa-5a5404d1b9f59.jpg");

INSERT INTO tb_imagem VALUES("117","nathalya-pimentel-temote-5a540af140329.jpg");

INSERT INTO tb_imagem VALUES("118","pedro-henrique-da-silva-dutra-5a540b816f0ec.jpeg");

INSERT INTO tb_imagem VALUES("119","joao-carlos-da-costa-souza-5a5411126e681.jpg");

INSERT INTO tb_imagem VALUES("120","jessica-camila-campos-santos-5a54c4692d847.jpg");

INSERT INTO tb_imagem VALUES("121","lara-de-sousa-almeida-5a54f9a8c2095.jpg");

INSERT INTO tb_imagem VALUES("122","larissa-nobre-da-cruz-5a555914de5cf.jpg");

INSERT INTO tb_imagem VALUES("123","lilian-machado-carvalho-bessa-5a56c28333ee8.jpg");

INSERT INTO tb_imagem VALUES("124","bruna-alves-de-almeida-5a57e1e117b38.jpg");

INSERT INTO tb_imagem VALUES("125","debora-duarte-honorio-5a58b5422f36c.jpg");

INSERT INTO tb_imagem VALUES("126","maria-claudia-bispo-reis-5a58bc02d5b09.jpg");

INSERT INTO tb_imagem VALUES("127","yara-raquel-figueredo-rocha-5a58ca7466767.jpeg");

INSERT INTO tb_imagem VALUES("128","elton-barauna-de-souza-5a5a0a16c8b2c.jpg");

INSERT INTO tb_imagem VALUES("129","vitor-ribeiro-da-silva-5a5a2272a202d.jpg");

INSERT INTO tb_imagem VALUES("130","taynara-rodrigues-de-azevedo-5a5b5851e0a13.jpg");

INSERT INTO tb_imagem VALUES("131","joao-diego-tonha-dos-santos-5a5be369b4684.jpg");

INSERT INTO tb_imagem VALUES("132","romulo-dias-miranda-cardoso-5a5d4f2a288eb.jpg");

INSERT INTO tb_imagem VALUES("133","emanuelle-beatriz-de-souza-pereira-5a5e04ed71003.jpeg");

INSERT INTO tb_imagem VALUES("134","thais-araujo-xavier-5a5e0569e2a99.jpg");

INSERT INTO tb_imagem VALUES("135","leila-pires-tominaga-5a5e2b22797d6.jpg");

INSERT INTO tb_imagem VALUES("136","mariana-lima-de-oliveira-5a5e2f30376c5.jpg");

INSERT INTO tb_imagem VALUES("137","ellen-patricia-fonseca-5a5e498e1eabf.jpeg");

INSERT INTO tb_imagem VALUES("138","camila-carvalho-da-silva-5a5e689129724.jpeg");

INSERT INTO tb_imagem VALUES("139","brunna-natiely-herculano-vieira-5a5e9e829edb6.jpg");

INSERT INTO tb_imagem VALUES("140","jhony-ferreira-5a5fc8581e1af.jpg");

INSERT INTO tb_imagem VALUES("141","leonardo-machado-carvalho-bessa-5a5fd0c9ca7f5.jpg");

INSERT INTO tb_imagem VALUES("142","jefferson-fillipe-de-souza-lopes-5a5fd2248d29f.jpg");

INSERT INTO tb_imagem VALUES("143","yanka-evelyn-rodrigues-dos-santos-5a5fd637bbfdc.jpg");

INSERT INTO tb_imagem VALUES("144","gabrielle-rodrigues-oliveira-5a5fdbbc9b731.jpg");

INSERT INTO tb_imagem VALUES("145","antoniaa-simone-ramos-lima-maciel-5a6003ea020c1.jpg");

INSERT INTO tb_imagem VALUES("146","wesley-barbosa-de-carvalho-maciel-lima-5a60b98a2cd49.jpg");

INSERT INTO tb_imagem VALUES("147","silvia-miki-yamamoto-5a60e9528aec7.jpeg");

INSERT INTO tb_imagem VALUES("148","larissa-goncalves-ferreira-5a60f39b72a55.jpg");

INSERT INTO tb_imagem VALUES("149","maria-eduarda-freitas-5a612d14e8698.jpg");

INSERT INTO tb_imagem VALUES("150","maria-karlene-ramos-lima-5a613be065903.jpg");

INSERT INTO tb_imagem VALUES("175","dggge-dvghh-dqwd-ewfweq-few-5a71df91c4d6a.jpg");

INSERT INTO tb_imagem VALUES("176","dggge-dvghhh-dqwd-reg-regregh-5a73342aad4f0.jpg");

INSERT INTO tb_imagem VALUES("177","dggge-dvgfgrhh-dqwd-ewfweq-few-5a8b14378e67d.jpg");

INSERT INTO tb_imagem VALUES("178","dggge-dvgerghh-dqwd-ewfweq-few-5a8b17a99c7cd.jpg");

INSERT INTO tb_imagem VALUES("179","leo-efw-f-5a8b1afa23490.jpg");

INSERT INTO tb_imagem VALUES("180","leo-thr-5a8b1c4d2c529.PNG");

INSERT INTO tb_imagem VALUES("181","leoger-g-5a8b21728ac9f.PNG");

INSERT INTO tb_imagem VALUES("182","dggge-dvgfefhh-dqwd-reg-regreg-5a8b2ce2382ee.jpg");

INSERT INTO tb_imagem VALUES("183","dggge-dv-fweghh-dqwd-ewfweq-fewfew-5a8b324aac7fd.jpg");

INSERT INTO tb_imagem VALUES("184","dgfegge-dvghh-dqwd-reg-regreg-5a8b32b44968c.jpg");

INSERT INTO tb_imagem VALUES("185","lele-5a9d6c2f0325b.jpg");




DROP TABLE IF EXISTS tb_imagem_evento;


CREATE TABLE `tb_imagem_evento` (
  `co_imagem_evento` int(11) NOT NULL AUTO_INCREMENT,
  `co_evento` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_imagem_evento`,`co_evento`,`co_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_inscricao;


CREATE TABLE `tb_inscricao` (
  `co_inscricao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_pastoral` text,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'A - Atvo / D - Desistente',
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `st_equipe_trabalho` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` int(1) DEFAULT NULL,
  `nu_camisa` int(1) NOT NULL,
  `no_responsavel` varchar(50) NOT NULL,
  `nu_tel_responsavel` varchar(15) NOT NULL,
  `ds_descricao` text,
  `ds_medicacao` text,
  `ds_alimentacao` text,
  `co_pessoa` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_inscricao`,`co_pessoa`,`co_imagem`),
  KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_INSCRICAO_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;


INSERT INTO tb_inscricao VALUES("136","","N","2018-02-19 15:30:01","A","N","N","","3","TTEFGGER","5346467437","t43t","","","181","178");

INSERT INTO tb_inscricao VALUES("137","","N","2018-02-19 15:44:10","A","S","N","","1","FWEFW","14215122525","fwef","","","182","179");

INSERT INTO tb_inscricao VALUES("138","","N","2018-02-19 15:49:49","A","N","N","","1","REGREG","34532532632","greg","","","183","180");

INSERT INTO tb_inscricao VALUES("139","","N","2018-02-19 16:11:46","A","S","S","","2","PESSOA","22222222222","fala","","","184","181");

INSERT INTO tb_inscricao VALUES("140","","N","2018-02-19 17:00:34","A","N","N","","1","FWEFWE","23556436346","fe","","","185","182");

INSERT INTO tb_inscricao VALUES("141","","N","2018-02-19 17:23:38","A","N","N","","3","GERGRE","43534543643","gerg","","","186","183");

INSERT INTO tb_inscricao VALUES("142","","N","2018-02-19 17:25:24","D","N","N","","3","REGER","53232364364","dfg","","","187","184");




DROP TABLE IF EXISTS tb_membro;


CREATE TABLE `tb_membro` (
  `co_membro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_responsavel` varchar(100) DEFAULT NULL,
  `st_estuda` varchar(1) DEFAULT NULL,
  `st_trabalha` varchar(1) DEFAULT NULL,
  `ds_conhecimento` text,
  `st_status` varchar(1) DEFAULT NULL,
  `st_batizado` varchar(1) NOT NULL,
  `st_eucaristia` varchar(1) NOT NULL,
  `st_crisma` varchar(1) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_membro`,`co_pessoa`),
  KEY `fk_TB_MEMBRO_TB_PESSOA1_idx` (`co_pessoa`),
  CONSTRAINT `fk_TB_MEMBRO_TB_PESSOA1` FOREIGN KEY (`co_pessoa`) REFERENCES `tb_pessoa` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_pagamento;


CREATE TABLE `tb_pagamento` (
  `co_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_total` decimal(10,2) DEFAULT NULL,
  `nu_valor_pago` decimal(10,2) DEFAULT NULL,
  `nu_parcelas` int(11) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text,
  `co_inscricao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_pagamento`,`co_inscricao`),
  KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_INSCRICAO1` FOREIGN KEY (`co_inscricao`) REFERENCES `tb_inscricao` (`co_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;


INSERT INTO tb_pagamento VALUES("142","150.00","","1","N","","136");

INSERT INTO tb_pagamento VALUES("143","160.00","","1","N","","138");

INSERT INTO tb_pagamento VALUES("144","150.00","","1","N","","139");

INSERT INTO tb_pagamento VALUES("145","150.00","","1","N","","137");

INSERT INTO tb_pagamento VALUES("146","160.00","160.00","1","C","","140");

INSERT INTO tb_pagamento VALUES("147","160.00","100.00","1","I","","141");

INSERT INTO tb_pagamento VALUES("148","160.00","","1","N","","142");

INSERT INTO tb_pagamento VALUES("149","150.00","","1","N","","142");

INSERT INTO tb_pagamento VALUES("150","150.00","","1","N","","142");




DROP TABLE IF EXISTS tb_parcelamento;


CREATE TABLE `tb_parcelamento` (
  `co_parcelamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_parcela` int(11) DEFAULT NULL,
  `nu_valor_parcela` decimal(10,2) DEFAULT NULL,
  `nu_valor_parcela_pago` decimal(10,2) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_vencimento_pago` date DEFAULT NULL,
  `ds_observacao` text,
  `co_pagamento` int(11) NOT NULL,
  `co_tipo_pagamento` int(11) NOT NULL,
  PRIMARY KEY (`co_parcelamento`,`co_pagamento`,`co_tipo_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_PAGAMENTO1` FOREIGN KEY (`co_pagamento`) REFERENCES `tb_pagamento` (`co_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1` FOREIGN KEY (`co_tipo_pagamento`) REFERENCES `tb_tipo_pagamento` (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO tb_parcelamento VALUES("1","1","150.00","","2018-02-19","","","142","3");

INSERT INTO tb_parcelamento VALUES("2","1","160.00","","2018-02-19","","","143","2");

INSERT INTO tb_parcelamento VALUES("3","1","150.00","","2018-02-19","","","144","1");

INSERT INTO tb_parcelamento VALUES("4","1","150.00","","2018-02-19","","","145","1");

INSERT INTO tb_parcelamento VALUES("6","1","160.00","160.00","2018-02-19","2018-03-06","","146","2");

INSERT INTO tb_parcelamento VALUES("7","1","160.00","100.00","2018-02-19","2018-03-06","","147","1");

INSERT INTO tb_parcelamento VALUES("8","1","160.00","","2018-02-19","","","148","2");

INSERT INTO tb_parcelamento VALUES("9","1","150.00","","2018-03-15","","","149","1");

INSERT INTO tb_parcelamento VALUES("10","1","150.00","","2018-03-15","","","150","1");




DROP TABLE IF EXISTS tb_perfil;


CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Conselheiro(a)","A");

INSERT INTO tb_perfil VALUES("3","Membro","A");

INSERT INTO tb_perfil VALUES("4","Comissão","A");

INSERT INTO tb_perfil VALUES("5","Coordenadores","A");

INSERT INTO tb_perfil VALUES("6","Coordenador Administrativo","A");

INSERT INTO tb_perfil VALUES("7","Novo Perfil","A");




DROP TABLE IF EXISTS tb_perfil_agenda;


CREATE TABLE `tb_perfil_agenda` (
  `co_perfil_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `co_agenda` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_agenda`,`co_agenda`,`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_agenda VALUES("1","1","2");

INSERT INTO tb_perfil_agenda VALUES("2","1","1");

INSERT INTO tb_perfil_agenda VALUES("3","2","7");

INSERT INTO tb_perfil_agenda VALUES("4","2","6");

INSERT INTO tb_perfil_agenda VALUES("11","1","3");

INSERT INTO tb_perfil_agenda VALUES("12","2","5");

INSERT INTO tb_perfil_agenda VALUES("13","3","7");

INSERT INTO tb_perfil_agenda VALUES("14","3","6");

INSERT INTO tb_perfil_agenda VALUES("15","4","3");

INSERT INTO tb_perfil_agenda VALUES("16","4","2");

INSERT INTO tb_perfil_agenda VALUES("17","5","5");

INSERT INTO tb_perfil_agenda VALUES("18","6","3");




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1` FOREIGN KEY (`co_funcionalidade`) REFERENCES `tb_funcionalidade` (`co_funcionalidade`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_perfil1` FOREIGN KEY (`co_perfil`) REFERENCES `tb_perfil` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("16","1","4");

INSERT INTO tb_perfil_funcionalidade VALUES("17","2","4");

INSERT INTO tb_perfil_funcionalidade VALUES("18","4","4");

INSERT INTO tb_perfil_funcionalidade VALUES("5","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("4","3","6");

INSERT INTO tb_perfil_funcionalidade VALUES("6","2","6");

INSERT INTO tb_perfil_funcionalidade VALUES("8","4","6");

INSERT INTO tb_perfil_funcionalidade VALUES("13","2","12");

INSERT INTO tb_perfil_funcionalidade VALUES("14","4","12");

INSERT INTO tb_perfil_funcionalidade VALUES("15","5","12");

INSERT INTO tb_perfil_funcionalidade VALUES("10","1","13");

INSERT INTO tb_perfil_funcionalidade VALUES("11","2","13");

INSERT INTO tb_perfil_funcionalidade VALUES("12","4","13");

INSERT INTO tb_perfil_funcionalidade VALUES("20","2","14");

INSERT INTO tb_perfil_funcionalidade VALUES("21","4","14");

INSERT INTO tb_perfil_funcionalidade VALUES("22","1","15");

INSERT INTO tb_perfil_funcionalidade VALUES("23","2","15");

INSERT INTO tb_perfil_funcionalidade VALUES("24","4","15");

INSERT INTO tb_perfil_funcionalidade VALUES("25","1","16");

INSERT INTO tb_perfil_funcionalidade VALUES("26","2","16");

INSERT INTO tb_perfil_funcionalidade VALUES("27","4","16");

INSERT INTO tb_perfil_funcionalidade VALUES("28","5","16");

INSERT INTO tb_perfil_funcionalidade VALUES("29","1","17");

INSERT INTO tb_perfil_funcionalidade VALUES("30","2","17");

INSERT INTO tb_perfil_funcionalidade VALUES("31","4","17");

INSERT INTO tb_perfil_funcionalidade VALUES("32","5","17");

INSERT INTO tb_perfil_funcionalidade VALUES("45","3","18");




DROP TABLE IF EXISTS tb_pessoa;


CREATE TABLE `tb_pessoa` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) NOT NULL,
  `nu_rg` varchar(15) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL,
  `co_contato` int(11) NOT NULL,
  `co_endereco` int(11) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_contato`,`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  CONSTRAINT `fk_TB_PESSOA_TB_CONTATO1` FOREIGN KEY (`co_contato`) REFERENCES `tb_contato` (`co_contato`),
  CONSTRAINT `fk_TB_PESSOA_TB_ENDERECO1` FOREIGN KEY (`co_endereco`) REFERENCES `tb_endereco` (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;


INSERT INTO tb_pessoa VALUES("1","72681438187","LEONARDO MACHADO CARVALHO BESSA","2077811","2018-03-16 14:45:52","1984-07-06","M","1","1");

INSERT INTO tb_pessoa VALUES("181","07257508127","DGGGE DVGERGHH DQWD  EWFWEQ FEW","4325","2018-02-19 15:30:01","2000-02-09","M","184","181");

INSERT INTO tb_pessoa VALUES("182","07756279174","LEO EFW F","","2018-02-19 15:44:10","1999-02-17","M","185","182");

INSERT INTO tb_pessoa VALUES("183","95397434272","LEO THR","","2018-02-19 15:49:49","2001-02-07","M","186","185");

INSERT INTO tb_pessoa VALUES("184","07759869177","NOVO NOME MEU","","2018-02-19 17:29:12","2003-02-13","M","187","186");

INSERT INTO tb_pessoa VALUES("185","04768775128","DGGGE DVGFEFHH DQWD REG REGREG","","2018-02-19 17:00:34","2001-02-16","M","188","187");

INSERT INTO tb_pessoa VALUES("186","05836568111","DGGGE DV FWEGHH DQWD  EWFWEQ FEWFEW","","2018-02-19 17:23:38","1999-02-03","F","189","188");

INSERT INTO tb_pessoa VALUES("187","08155386180","DGFEGGE DVGHH DQWD REG REGREG","","2018-02-19 17:25:24","2002-02-06","M","190","189");

INSERT INTO tb_pessoa VALUES("188","22322191191","LELE","43643643","2018-03-05 13:12:09","2001-03-12","F","191","190");




DROP TABLE IF EXISTS tb_tipo_pagamento;


CREATE TABLE `tb_tipo_pagamento` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO tb_tipo_pagamento VALUES("1","Dinheiro","DI");

INSERT INTO tb_tipo_pagamento VALUES("2","Cartão de Crédito","CC");

INSERT INTO tb_tipo_pagamento VALUES("3","Depósito Bancário","DB");




DROP TABLE IF EXISTS tb_usuario;


CREATE TABLE `tb_usuario` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - ATIVO / I - INATIVO''',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`),
  KEY `FK_TB_USUARIO_TB_IMAGEM1_IDX` (`co_imagem`),
  KEY `FK_TB_USUARIO_TB_PESSOA2_IDX` (`co_pessoa`),
  CONSTRAINT `FK_TB_USUARIO_TB_IMAGEM1` FOREIGN KEY (`co_imagem`) REFERENCES `tb_imagem` (`co_imagem`),
  CONSTRAINT `FK_TB_USUARIO_TB_PESSOA2` FOREIGN KEY (`co_pessoa`) REFERENCES `tb_pessoa` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJek5EVTJLaW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO tb_usuario VALUES("2","123456**","TVRJek5EVTJLaW89","A","2018-03-05 00:00:00","185","188");




DROP TABLE IF EXISTS tb_usuario_perfil;


CREATE TABLE `tb_usuario_perfil` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`),
  KEY `FK_TB_USUARIO_PERFIL_TB_USUARIO1_IDX` (`co_usuario`),
  KEY `FK_TB_USUARIO_PERFIL_TB_PERFIL1_IDX` (`co_perfil`),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_PERFIL1` FOREIGN KEY (`co_perfil`) REFERENCES `tb_perfil` (`co_perfil`),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `tb_usuario` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("7","1","6");

INSERT INTO tb_usuario_perfil VALUES("8","1","4");

INSERT INTO tb_usuario_perfil VALUES("9","1","3");

INSERT INTO tb_usuario_perfil VALUES("10","1","1");

INSERT INTO tb_usuario_perfil VALUES("3","2","6");

INSERT INTO tb_usuario_perfil VALUES("4","2","4");

INSERT INTO tb_usuario_perfil VALUES("5","2","3");

INSERT INTO tb_usuario_perfil VALUES("6","2","3");




