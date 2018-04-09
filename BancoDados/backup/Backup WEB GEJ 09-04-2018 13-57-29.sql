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
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("1","428fece112716b15c26d715a87a6869a","2017-12-29 00:00:00","2017-12-29 00:00:00","","","","F","1");

INSERT INTO tb_acesso VALUES("2","428fece112716b15c26d715a87a6869a","2017-12-29 16:42:27","2017-12-29 16:43:57","","","","F","1");

INSERT INTO tb_acesso VALUES("3","428fece112716b15c26d715a87a6869a","2017-12-29 16:44:25","2017-12-29 17:05:00","","","","F","8");

INSERT INTO tb_acesso VALUES("4","6b2aeefd8ccb8e85d11e99026f0782a3","2017-12-29 17:02:14","2017-12-29 17:03:12","","","","F","8");

INSERT INTO tb_acesso VALUES("5","6b2aeefd8ccb8e85d11e99026f0782a3","2017-12-29 17:03:23","2017-12-29 17:04:09","","","","F","1");

INSERT INTO tb_acesso VALUES("6","bfda130deebab8ed754625080c4e9bcf","2017-12-29 18:15:45","2017-12-29 18:37:31","","","","F","1");

INSERT INTO tb_acesso VALUES("7","d4d9c7ca925712a60ff438229825df0f","2017-12-29 20:34:36","2017-12-29 20:34:50","","","","F","1");

INSERT INTO tb_acesso VALUES("8","0e9c97b9f7681ef9949c16d5d3953a78","2017-12-30 09:45:28","2017-12-30 10:10:57","","","","F","5");

INSERT INTO tb_acesso VALUES("9","ece6f7b7367f26bc301a56fe85385e48","2017-12-30 17:03:46","2017-12-30 17:04:54","Safari","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("10","ece6f7b7367f26bc301a56fe85385e48","2017-12-30 17:05:00","2017-12-30 17:25:43","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("11","1ebc5110f488487a0723b438a0abbd74","2017-12-30 17:06:06","2017-12-30 17:07:00","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("12","78d08c20f357df4fbdad4da5b5103eb5","2017-12-30 19:19:38","2017-12-30 19:55:35","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("13","1910f85462b4a2a9325c67924461c892","2017-12-30 19:59:02","2017-12-30 20:20:28","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("14","121458663c0d3dc7a67eb0d7890c45c8","2017-12-31 15:39:18","2017-12-31 15:59:23","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("15","f4fc66c299cdfb731ca13abd621493fa","2018-01-01 18:47:11","2018-01-01 19:07:29","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("16","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-02 10:03:52","2018-01-02 10:24:05","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("17","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-02 10:43:48","2018-01-02 11:03:59","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("18","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-02 15:43:04","2018-01-02 16:05:23","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("19","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-02 16:48:51","2018-01-02 17:09:02","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("20","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-02 17:09:45","2018-01-02 17:30:15","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("21","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-03 10:16:32","2018-01-03 10:18:10","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("22","97f2269ef370e9ad5c17e2c3cb4540df","2018-01-03 11:27:37","2018-01-03 11:45:07","Chrome","Windows 7","Computador","F","6");

INSERT INTO tb_acesso VALUES("23","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-03 11:41:18","2018-01-03 11:41:39","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("24","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-03 15:31:57","2018-01-03 15:52:16","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("25","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-03 16:53:48","2018-01-03 16:55:04","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("26","21f42c3a545e842b853cdccbf668c728","2018-01-03 21:51:57","2018-01-03 22:14:29","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("27","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-04 10:24:35","2018-01-04 10:44:41","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("28","533b77c8efa3feb7a21fc0cbe3cbeeb8","2018-01-04 12:23:01","2018-01-04 12:45:47","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("29","8ea18b72605e2d16f590693a44ad4108","2018-01-04 12:52:02","2018-01-04 13:13:31","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("30","8ea18b72605e2d16f590693a44ad4108","2018-01-04 13:54:20","2018-01-04 14:16:43","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("31","7dc62147f0ffce5f564a56615cb37391","2018-01-04 17:22:43","2018-01-04 17:44:36","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("32","e8ce82f7eadfba6525835374bd2df4a2","2018-01-04 20:26:52","2018-01-04 20:52:31","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("33","b769fc8b409661b41691a19ea6c08f6b","2018-01-04 20:27:45","2018-01-04 21:01:00","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("34","b1e33dd668671434cefbfaf5b42720d5","2018-01-05 09:32:54","2018-01-05 09:53:41","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("35","b1e33dd668671434cefbfaf5b42720d5","2018-01-05 14:32:08","2018-01-05 14:52:53","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("36","857c74324a0f5fa109a45f69f3a2612d","2018-01-05 16:48:28","2018-01-05 17:09:08","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("37","2e525266acc32ed8ab8b0edd9461365f","2018-01-05 17:21:05","2018-01-05 17:35:59","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("38","7b272942d9b8b074cc800540735b041e","2018-01-06 12:20:48","2018-01-06 12:35:42","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("39","fd54cb330c0a837621515051749fa1ae","2018-01-06 14:02:28","2018-01-06 14:07:41","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("40","89eb90ef5f62d016ad34faf5417b1b6b","2018-01-06 15:46:46","2018-01-06 16:25:53","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("41","f8a2508fb073b8087505f0f60f64f566","2018-01-06 15:59:29","2018-01-06 16:20:08","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("42","60b19d0705b8754549d30ade4749aa33","2018-01-06 17:32:20","2018-01-06 17:52:34","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("43","60b19d0705b8754549d30ade4749aa33","2018-01-06 19:26:56","2018-01-06 19:49:38","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("44","8f9e61c975e0d4f82a3a69b775368ca5","2018-01-06 19:31:03","2018-01-06 19:55:58","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("45","64c76cfac5e4447c361996fd01f70557","2018-01-06 20:09:16","2018-01-06 20:30:18","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("46","09ff6dc0a028f12eb090963a8cb3f952","2018-01-06 20:10:37","2018-01-06 20:11:51","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("47","fcc5b29103d77d76f7852a06cedb3517","2018-01-06 22:28:50","2018-01-06 22:56:17","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("48","2a2bac410ccc4f37b3b791207bf7a4b4","2018-01-07 22:19:15","2018-01-07 22:57:24","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("49","2a2bac410ccc4f37b3b791207bf7a4b4","2018-01-07 23:10:20","2018-01-07 23:13:28","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("50","e2a760176ff173ae2dbddbb8bc2d0cfe","2018-01-07 23:11:02","2018-01-07 23:56:52","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("51","2a2bac410ccc4f37b3b791207bf7a4b4","2018-01-07 23:13:37","2018-01-07 23:35:24","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("52","2a2bac410ccc4f37b3b791207bf7a4b4","2018-01-07 23:41:00","2018-01-07 23:52:37","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("53","a8b9c9355c5fe53bca01f58e13672610","2018-01-08 10:29:06","2018-01-08 10:54:01","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("54","a8b9c9355c5fe53bca01f58e13672610","2018-01-08 14:29:47","2018-01-08 14:50:04","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("55","a8b9c9355c5fe53bca01f58e13672610","2018-01-08 16:37:05","2018-01-08 16:57:12","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("56","0a1a23bd61913ebe80981508231022fc","2018-01-08 17:44:36","2018-01-08 17:46:56","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("57","629b5dfc6e1ccda27acd04dca7e824b7","2018-01-08 19:34:19","2018-01-08 20:00:16","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("58","fc0477c0a39e43d76f22ae45e85fe2ca","2018-01-08 21:23:11","2018-01-08 21:53:13","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("59","ac6ff3c1b7b0f2a66e308ed9e1b04f33","2018-01-08 22:51:13","2018-01-08 23:13:10","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("60","fc0477c0a39e43d76f22ae45e85fe2ca","2018-01-08 22:58:37","2018-01-08 23:20:20","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("61","c0016348691e0946efa7e2cea860bfa3","2018-01-08 23:14:08","2018-01-08 23:34:14","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("62","1ea057f7631d155061b6bbda8d059d01","2018-01-09 06:32:36","2018-01-09 06:52:52","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("63","a8b9c9355c5fe53bca01f58e13672610","2018-01-09 14:08:22","2018-01-09 14:11:53","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("64","93e39ebf818f36e13ab4781c887cd82f","2018-01-09 15:00:40","2018-01-09 15:21:37","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("65","93e39ebf818f36e13ab4781c887cd82f","2018-01-09 15:25:37","2018-01-09 15:46:19","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("66","a8b9c9355c5fe53bca01f58e13672610","2018-01-09 15:50:28","2018-01-09 16:11:25","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("67","93e39ebf818f36e13ab4781c887cd82f","2018-01-09 15:52:19","2018-01-09 16:17:12","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("68","93e39ebf818f36e13ab4781c887cd82f","2018-01-09 16:42:56","2018-01-09 17:08:51","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("69","a8b9c9355c5fe53bca01f58e13672610","2018-01-09 16:49:03","2018-01-09 17:09:13","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("70","93e39ebf818f36e13ab4781c887cd82f","2018-01-09 18:29:33","2018-01-09 18:50:17","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("71","58528bd02d16bf4746f298f5c4c37c6e","2018-01-09 21:06:05","2018-01-09 21:27:02","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("72","bd05c87b88974df2efbffb110cee4bc4","2018-01-10 09:56:00","2018-01-10 10:26:27","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("73","dbb1dae24236885f1667695de2e5e6cf","2018-01-10 12:40:45","2018-01-10 12:53:02","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("74","dbb1dae24236885f1667695de2e5e6cf","2018-01-10 12:55:39","2018-01-10 13:04:14","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("75","5433fc589f9f61d1f8386b249eb39c5a","2018-01-10 15:32:29","2018-01-10 16:22:40","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("76","825b201ef84f7d0090689b1cd6cc72f7","2018-01-10 15:51:21","2018-01-10 16:42:39","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("77","fef47c7a9209a9d04864e3e06d93a4da","2018-01-10 16:03:14","2018-01-10 16:24:55","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("78","bd05c87b88974df2efbffb110cee4bc4","2018-01-10 16:36:48","2018-01-10 16:58:05","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("79","91973b54aa9d0edbf23268b5bd47d45f","2018-01-10 17:48:27","2018-01-10 18:16:29","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("80","c72e676ad5ad53285427024b20331c15","2018-01-10 23:26:15","2018-01-10 23:47:11","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("81","c66cc082d124833c705ac91ce6021f19","2018-01-10 23:50:34","2018-01-11 00:14:58","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("82","bd05c87b88974df2efbffb110cee4bc4","2018-01-11 10:34:18","2018-01-11 10:58:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("83","bd05c87b88974df2efbffb110cee4bc4","2018-01-11 13:06:13","2018-01-11 13:26:28","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("84","bd05c87b88974df2efbffb110cee4bc4","2018-01-11 16:22:34","2018-01-11 16:42:45","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("85","85f61cfb076b63255d1f6f4439cc0739","2018-01-11 23:58:00","2018-01-12 00:26:43","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("86","4915e5d52a29ce26b3a83f5d1e1bbec8","2018-01-12 00:01:44","2018-01-12 00:22:31","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("87","bd05c87b88974df2efbffb110cee4bc4","2018-01-12 09:36:28","2018-01-12 09:57:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("88","bd05c87b88974df2efbffb110cee4bc4","2018-01-12 10:31:43","2018-01-12 10:51:52","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("89","38dd5b9f4035c181b80502565910650f","2018-01-12 11:16:36","2018-01-12 11:45:51","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("90","38dd5b9f4035c181b80502565910650f","2018-01-12 12:09:51","2018-01-12 12:43:48","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("91","d996ec576612b999a74dae5f07d7d11c","2018-01-12 12:37:21","2018-01-12 12:44:52","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("92","f9b86b45d151e1a8150436aa7ad049f3","2018-01-12 12:39:04","2018-01-12 13:11:23","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("93","38dd5b9f4035c181b80502565910650f","2018-01-12 12:44:50","2018-01-12 13:16:16","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("94","38dd5b9f4035c181b80502565910650f","2018-01-12 14:18:10","2018-01-12 14:56:05","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("95","f9b86b45d151e1a8150436aa7ad049f3","2018-01-12 15:44:58","2018-01-12 16:05:46","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("96","f9b86b45d151e1a8150436aa7ad049f3","2018-01-12 16:46:22","2018-01-12 17:06:31","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("97","aa69c98e620d92f839a5938e78468623","2018-01-12 22:04:28","2018-01-12 22:26:16","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("98","b3af1457a4673c43b645be9a3c7e47a1","2018-01-13 10:30:37","2018-01-13 10:51:38","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("99","a725e2672cd69c9ffd5dff04114d4882","2018-01-13 15:54:54","2018-01-13 16:17:22","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("100","a64fc80d0615aa4a72688eb388493e24","2018-01-13 22:17:49","2018-01-13 22:57:55","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("101","08c3d61a0db9051eb724327b2cde91ba","2018-01-13 23:00:26","2018-01-13 23:21:31","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("102","eb4e66c85f3aace87b726087a5a783dc","2018-01-14 12:29:43","2018-01-14 12:53:52","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("103","8174c3f258838b0bce143c53697d8f0e","2018-01-15 07:54:29","2018-01-15 08:14:51","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("104","1a708b3486fc7e06ef71a9914dd1f3ec","2018-01-15 08:04:48","2018-01-15 08:26:43","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("105","f9b86b45d151e1a8150436aa7ad049f3","2018-01-15 09:52:24","2018-01-15 10:13:22","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("106","f812c4bf75cd498c9762eb659b730136","2018-01-15 12:45:58","2018-01-15 13:22:08","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("107","f812c4bf75cd498c9762eb659b730136","2018-01-15 14:22:22","2018-01-15 15:03:55","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("108","f9b86b45d151e1a8150436aa7ad049f3","2018-01-15 14:23:22","2018-01-15 14:43:32","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("109","f812c4bf75cd498c9762eb659b730136","2018-01-15 15:13:32","2018-01-15 15:34:04","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("110","f9b86b45d151e1a8150436aa7ad049f3","2018-01-15 17:20:40","2018-01-15 17:40:48","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("111","99c594a5830098caa529e5ee00a89d47","2018-01-15 17:29:16","2018-01-15 17:51:16","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("112","f812c4bf75cd498c9762eb659b730136","2018-01-15 17:43:41","2018-01-15 18:04:08","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("113","f812c4bf75cd498c9762eb659b730136","2018-01-15 18:19:36","2018-01-15 18:50:51","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("114","2d326ed0847ff64b8ad83675e97f5d00","2018-01-15 19:32:09","2018-01-15 19:58:10","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("115","04a2ce226ad166064062685a86a92082","2018-01-15 19:32:39","2018-01-15 20:07:57","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("116","04a2ce226ad166064062685a86a92082","2018-01-15 20:51:48","2018-01-15 21:13:28","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("117","5d7b1e7f473827b0bd1c8171b6cd0e68","2018-01-15 22:33:12","2018-01-15 23:12:15","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("118","c812d80d48dc1dd207ebbad1f6a14ade","2018-01-16 08:54:39","2018-01-16 09:26:47","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("119","c812d80d48dc1dd207ebbad1f6a14ade","2018-01-16 09:34:32","2018-01-16 09:59:10","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("120","f812c4bf75cd498c9762eb659b730136","2018-01-16 10:55:57","2018-01-16 11:17:37","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("121","f9b86b45d151e1a8150436aa7ad049f3","2018-01-16 11:27:58","2018-01-16 11:29:30","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("122","f9b86b45d151e1a8150436aa7ad049f3","2018-01-16 11:29:47","2018-01-16 11:32:59","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("123","f9b86b45d151e1a8150436aa7ad049f3","2018-01-16 11:33:22","2018-01-16 11:35:45","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("124","35e3587a34a1281685aa1fbcff86f9e2","2018-01-16 13:19:52","2018-01-16 13:52:54","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("125","baf5ffb4bf294d59130c4215e2b20c48","2018-01-16 13:34:45","2018-01-16 14:06:37","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("126","df70de9b5284b6129ca387c78a8d2df8","2018-01-16 13:53:51","2018-01-16 14:26:57","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("127","f9b86b45d151e1a8150436aa7ad049f3","2018-01-16 14:37:50","2018-01-16 15:25:33","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("128","f812c4bf75cd498c9762eb659b730136","2018-01-16 14:45:11","2018-01-16 15:07:18","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("129","f9b86b45d151e1a8150436aa7ad049f3","2018-01-16 15:39:05","2018-01-16 16:02:04","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("130","f812c4bf75cd498c9762eb659b730136","2018-01-16 15:43:31","2018-01-16 16:14:42","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("131","f812c4bf75cd498c9762eb659b730136","2018-01-16 16:15:07","2018-01-16 16:43:34","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("132","45f880e9793ce6b749b4bc0ee1d115e4","2018-01-16 16:56:58","2018-01-16 16:58:15","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("133","1d22df4b858e3d1d1d483b57a7618308","2018-01-16 18:09:15","2018-01-16 18:41:30","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("134","f812c4bf75cd498c9762eb659b730136","2018-01-16 18:30:21","2018-01-16 18:51:15","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("135","1d22df4b858e3d1d1d483b57a7618308","2018-01-16 18:44:33","2018-01-16 19:08:16","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("136","f2c02650a83601754053dc57750d985a","2018-01-16 19:07:48","2018-01-16 19:40:31","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("137","c8bf2064de29ebc029eb63e598ada512","2018-01-16 19:45:15","2018-01-16 20:09:03","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("138","8edd9763f4e6c3ba93515bec7266d37d","2018-01-16 20:17:33","2018-01-16 21:59:18","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("139","7f367e6bd2619443c2366a98baa55f21","2018-01-16 20:17:56","2018-01-16 21:01:50","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("140","5c6a24364fad3508ad9e9fcba911f5ac","2018-01-16 20:19:07","2018-01-16 20:54:55","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("141","5c6a24364fad3508ad9e9fcba911f5ac","2018-01-16 20:56:05","2018-01-16 21:34:55","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("142","7f367e6bd2619443c2366a98baa55f21","2018-01-16 21:09:21","2018-01-16 21:35:12","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("143","ebd171be943b21c3f9037d3103a67014","2018-01-16 21:51:09","2018-01-16 22:12:40","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("144","8edd9763f4e6c3ba93515bec7266d37d","2018-01-16 22:01:18","2018-01-16 22:34:41","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("145","7f367e6bd2619443c2366a98baa55f21","2018-01-16 22:06:06","2018-01-16 22:26:28","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("146","5c6a24364fad3508ad9e9fcba911f5ac","2018-01-16 22:16:16","2018-01-16 22:50:31","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("147","ebd171be943b21c3f9037d3103a67014","2018-01-16 22:16:58","2018-01-16 22:37:43","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("148","ce6c7f377c32b0d9d3c6251a0fa50b21","2018-01-16 22:57:56","2018-01-16 23:23:06","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("149","8edd9763f4e6c3ba93515bec7266d37d","2018-01-16 23:23:00","2018-01-16 23:48:03","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("150","f812c4bf75cd498c9762eb659b730136","2018-01-17 11:02:44","2018-01-17 11:45:23","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("151","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-17 11:33:35","2018-01-17 11:55:49","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("152","f812c4bf75cd498c9762eb659b730136","2018-01-17 12:43:23","2018-01-17 14:50:59","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("153","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-17 15:30:05","2018-01-17 16:04:10","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("154","66995067d37539a3ce760166443389c4","2018-01-17 15:50:32","2018-01-17 16:11:43","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("155","f812c4bf75cd498c9762eb659b730136","2018-01-17 16:35:42","2018-01-17 16:58:54","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("156","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-17 17:17:44","2018-01-17 17:37:52","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("157","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-17 17:47:02","2018-01-17 17:56:14","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("158","12fcb992552b0ced4a01fc8fadbf823b","2018-01-17 20:52:24","2018-01-17 22:05:32","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("159","17613b20ede40288e05293ca289c08da","2018-01-17 21:45:03","2018-01-17 22:10:37","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("160","7c760c5e3a86f7fc62beecaa4253f24e","2018-01-17 22:19:10","2018-01-17 22:58:15","Chrome","Windows 10","Computador","F","6");

INSERT INTO tb_acesso VALUES("161","17613b20ede40288e05293ca289c08da","2018-01-17 22:23:56","2018-01-17 22:54:04","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("162","40213c988f928b0c279fd521807d189d","2018-01-17 22:55:28","2018-01-17 23:28:03","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("163","17613b20ede40288e05293ca289c08da","2018-01-17 23:08:14","2018-01-17 23:31:45","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("164","40213c988f928b0c279fd521807d189d","2018-01-17 23:28:26","2018-01-17 23:52:03","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("165","426d627072a093fa010bd3f12b87f299","2018-01-17 23:42:59","2018-01-18 00:09:19","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("166","3d6a14b84e772d3de1cc7b49175148e1","2018-01-17 23:51:06","2018-01-18 00:12:15","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("167","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 10:02:32","2018-01-18 10:45:00","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("168","f812c4bf75cd498c9762eb659b730136","2018-01-18 11:30:34","2018-01-18 11:52:31","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("169","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 11:57:21","2018-01-18 12:17:31","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("170","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 12:45:40","2018-01-18 13:06:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("171","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 13:49:20","2018-01-18 14:11:56","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("172","f812c4bf75cd498c9762eb659b730136","2018-01-18 15:29:17","2018-01-18 15:49:42","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("173","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 15:32:29","2018-01-18 15:52:49","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("174","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-18 16:38:18","2018-01-18 17:17:59","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("175","f812c4bf75cd498c9762eb659b730136","2018-01-18 18:17:45","2018-01-18 18:43:08","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("176","7b41f2c6536f2170bbd671542bc51ec3","2018-01-18 19:01:45","2018-01-18 19:24:46","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("177","bc72eb66615fbbe9ee7bd1c97fce0895","2018-01-18 19:30:11","2018-01-18 20:57:34","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("178","3c2f8d5597af27dde254260d69b703cc","2018-01-18 19:34:18","2018-01-18 20:00:20","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("179","a7f8c5c8626843bb5b9e7b3ce3ccfda4","2018-01-18 19:38:45","2018-01-18 19:59:27","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("180","19c75edcf96c87ec216781cbd4db9d0d","2018-01-18 19:44:46","2018-01-18 20:10:43","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("181","bc72eb66615fbbe9ee7bd1c97fce0895","2018-01-18 21:00:48","2018-01-18 22:24:39","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("182","c5b5748ce379e7eb0d425d1ba7bf73fe","2018-01-18 21:18:37","2018-01-18 21:41:05","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("183","6c3076c400ea6afa13729f1650d0f203","2018-01-18 21:20:22","2018-01-18 21:42:20","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("184","192df6fb462245cf83523fa8a86b08e9","2018-01-18 21:41:30","2018-01-18 22:17:21","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("185","f06a432d570ec8e4adb7d1bea83e881e","2018-01-18 21:50:05","2018-01-18 22:28:40","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("186","f06a432d570ec8e4adb7d1bea83e881e","2018-01-18 22:43:19","2018-01-18 23:01:17","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("187","8751ce14637a13fc7b3b8a82f4fa1beb","2018-01-18 23:53:48","2018-01-18 23:54:18","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("188","c5b5748ce379e7eb0d425d1ba7bf73fe","2018-01-19 00:04:54","2018-01-19 00:35:15","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("189","f812c4bf75cd498c9762eb659b730136","2018-01-19 09:42:05","2018-01-19 10:08:26","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("190","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 09:46:34","2018-01-19 10:07:13","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("191","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 11:18:41","2018-01-19 11:46:30","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("192","f812c4bf75cd498c9762eb659b730136","2018-01-19 11:40:55","2018-01-19 12:01:26","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("193","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 12:29:35","2018-01-19 12:49:45","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("194","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 13:12:50","2018-01-19 13:32:58","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("195","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 14:13:59","2018-01-19 14:34:30","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("196","ffe96f13c83a4c6ad7c145800c49ed71","2018-01-19 15:32:05","2018-01-19 15:52:16","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("197","fd34dd8cd33cc5151e79793b08d431fa","2018-01-19 17:48:33","2018-01-19 18:22:10","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("198","cb8686fbffe9cb1b9d5f52ff69f77532","2018-01-19 18:22:56","2018-01-19 18:50:32","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("199","fd34dd8cd33cc5151e79793b08d431fa","2018-01-19 22:43:52","2018-01-19 23:06:09","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("200","145de79f2da2d74814893a6230e71ef5","2018-01-19 23:38:35","2018-01-20 00:08:13","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("201","81b9fd82aebe9328caf22fc0898de00c","2018-01-19 23:41:54","2018-01-20 00:02:44","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("202","ca7e3e099ebb5f5a6dd17a547e0ae58b","2018-01-20 00:07:46","2018-01-20 00:30:52","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("203","a4e2bfe02f4b93e3c8435d93ee1bf9f7","2018-01-20 00:59:25","2018-01-20 01:23:20","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("204","19c75edcf96c87ec216781cbd4db9d0d","2018-01-20 08:21:21","2018-01-20 08:48:56","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("205","86e0b5a20bbaabd1b4892ff7ad4bd1e8","2018-01-20 11:38:47","2018-01-20 12:21:23","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("206","3114c3e44be65541cef3861717b8ea39","2018-01-20 11:41:09","2018-01-20 12:34:14","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("207","2298d4fa92a5ca82b9af3eac9616d1e5","2018-01-20 12:13:58","2018-01-20 12:38:25","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("208","2c93cc58181bfee2c1334180f1e28adb","2018-01-20 12:33:45","2018-01-20 12:42:12","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("209","3114c3e44be65541cef3861717b8ea39","2018-01-20 13:51:20","2018-01-20 14:16:55","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("210","f82c772348658898ffdd59ebc5b73a4e","2018-01-20 18:27:02","2018-01-20 18:48:15","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("211","b716254df8ae5b48f4ecf77a496f3e0e","2018-01-20 19:00:30","2018-01-20 19:20:39","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("212","f82c772348658898ffdd59ebc5b73a4e","2018-01-20 20:41:29","2018-01-20 21:02:21","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("213","b87cef9fe50e7dedea1b7e6e42842ae7","2018-01-21 12:35:00","2018-01-21 12:55:10","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("214","1bc1de1b6115dbc828557b5539aeee47","2018-01-21 12:55:52","2018-01-21 13:30:00","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("215","e059a3ba43e14575ebba40d812d4aad4","2018-01-21 13:28:32","2018-01-21 13:53:55","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("216","a0c5ed202bed1355ab3d40e32607a6e7","2018-01-21 19:49:27","2018-01-21 20:11:28","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("217","43242b1893228ecd5c90ed85412cfea3","2018-01-21 21:22:29","2018-01-21 21:23:36","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("218","43242b1893228ecd5c90ed85412cfea3","2018-01-21 21:33:28","2018-01-21 22:17:31","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("219","18614f13bff7c36955ef33872a14f65b","2018-01-22 09:47:13","2018-01-22 10:07:23","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("220","f06113eff96ac3e8d742b21eac783c62","2018-01-22 10:49:29","2018-01-22 11:25:39","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("221","f06113eff96ac3e8d742b21eac783c62","2018-01-22 11:26:35","2018-01-22 12:10:23","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("222","3c6267c2504b4175252d218ec9b85cb4","2018-01-22 11:29:30","2018-01-22 11:52:09","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("223","e9aaac5ae45da971a299347837b2d7c0","2018-01-22 12:00:43","2018-01-22 12:24:56","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("224","f06113eff96ac3e8d742b21eac783c62","2018-01-22 12:30:10","2018-01-22 12:51:38","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("225","f06113eff96ac3e8d742b21eac783c62","2018-01-22 12:52:34","2018-01-22 13:23:07","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("226","f06113eff96ac3e8d742b21eac783c62","2018-01-22 13:25:35","2018-01-22 14:14:02","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("227","7acabf15f588f473caf117e0fe8fe0ed","2018-01-22 14:57:54","2018-01-22 15:56:20","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("228","a57e8d8e6cb5788f812df204b1dff889","2018-01-22 16:33:04","2018-01-22 16:58:49","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("229","7acabf15f588f473caf117e0fe8fe0ed","2018-01-22 16:36:47","2018-01-22 17:25:12","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("230","7acabf15f588f473caf117e0fe8fe0ed","2018-01-22 17:54:12","2018-01-22 18:14:24","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("231","9733c53a9b330f5eae743d605e4bf66b","2018-01-22 23:49:09","2018-01-23 00:13:32","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("232","7acabf15f588f473caf117e0fe8fe0ed","2018-01-23 09:58:29","2018-01-23 11:02:45","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("233","7acabf15f588f473caf117e0fe8fe0ed","2018-01-23 12:32:54","2018-01-23 12:53:05","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("234","7acabf15f588f473caf117e0fe8fe0ed","2018-01-23 13:54:20","2018-01-23 14:20:52","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("235","7acabf15f588f473caf117e0fe8fe0ed","2018-01-23 15:47:59","2018-01-23 16:08:18","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("236","9c33109c54831d5d237f7f62ef817afc","2018-01-23 18:18:36","2018-01-23 18:39:25","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("237","5aa4f74ea226373b3357e8de16859e94","2018-01-23 18:47:37","2018-01-23 19:08:55","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("238","a0fade1d31626a848652bae0fff1c534","2018-01-23 19:40:28","2018-01-23 20:00:58","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("239","1bc373e79e2b97fb50592d764c865387","2018-01-23 20:21:28","2018-01-23 21:02:46","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("240","b18466556a44712c3046605988a2407d","2018-01-23 22:09:05","2018-01-23 22:30:35","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("241","0c645f05d775b0e7bbc2cb43d64234e8","2018-01-23 22:56:33","2018-01-23 23:17:51","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("242","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 09:52:50","2018-01-24 10:16:51","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("243","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 10:18:54","2018-01-24 11:01:06","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("244","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 11:01:40","2018-01-24 12:00:07","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("245","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 12:38:23","2018-01-24 12:59:25","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("246","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 14:17:57","2018-01-24 15:22:01","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("247","5aa4f74ea226373b3357e8de16859e94","2018-01-24 14:43:53","2018-01-24 15:11:17","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("248","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 15:27:11","2018-01-24 15:53:20","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("249","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 16:07:22","2018-01-24 16:27:46","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("250","7acabf15f588f473caf117e0fe8fe0ed","2018-01-24 17:21:42","2018-01-24 17:46:04","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("251","0172cddf69b62db4dda572702c236754","2018-01-24 22:52:48","2018-01-24 23:13:26","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("252","8eae79c585b8852ffd711b33c346c48f","2018-01-24 23:46:31","2018-01-25 00:13:32","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("253","74435ae7b97ef2d8c6cf395895e17f6d","2018-01-25 08:28:39","2018-01-25 08:53:07","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("254","7a3601514369e8620527988cea0299f3","2018-01-25 08:52:42","2018-01-25 09:13:18","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("255","cd695f1138ec2c2778a413b8079b201a","2018-01-25 09:22:25","2018-01-25 09:45:47","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("256","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 10:07:23","2018-01-25 10:32:38","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("257","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 13:49:51","2018-01-25 14:11:38","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("258","6783838991e8977c909a7fc2d456b314","2018-01-25 14:36:20","2018-01-25 15:24:52","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("259","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 14:36:36","2018-01-25 14:57:06","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("260","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 15:26:02","2018-01-25 15:46:29","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("261","de807a2e607a5fc3fbf0ca5f48665f5c","2018-01-25 15:48:32","2018-01-25 16:19:57","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("262","b0c527fe250931be5661544f6e41fd72","2018-01-25 17:08:31","2018-01-25 17:47:27","Chrome","Windows 7","Computador","F","8");

INSERT INTO tb_acesso VALUES("263","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 17:34:00","2018-01-25 17:34:18","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("264","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 17:34:41","2018-01-25 17:44:46","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("265","7acabf15f588f473caf117e0fe8fe0ed","2018-01-25 17:45:30","2018-01-25 18:06:31","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("266","7c274f029312f240b0add885c36552dd","2018-01-25 21:26:32","2018-01-25 21:47:26","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("267","58888bd25e0bed11ea42c0baaa4b502b","2018-01-25 23:23:00","2018-01-25 23:47:59","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("268","a5ed06fa3ea77046c17b72e88687c59c","2018-01-26 07:40:44","2018-01-26 08:01:01","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("269","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 09:51:31","2018-01-26 10:20:31","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("270","41745789f48b13fe669478fc1dfadd0e","2018-01-26 11:07:07","2018-01-26 11:32:02","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("271","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 11:39:24","2018-01-26 11:40:42","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("272","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 11:41:04","2018-01-26 11:49:47","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("273","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 11:51:04","2018-01-26 12:29:13","Chrome","Windows 10","Computador","F","5");

INSERT INTO tb_acesso VALUES("274","e951f09d46df6e7ddb6fb1c6e468861f","2018-01-26 13:35:06","2018-01-26 13:59:32","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("275","01487da98c45638693bf187ddd678dc0","2018-01-26 13:39:21","2018-01-26 14:04:04","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("276","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 13:39:47","2018-01-26 14:10:44","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("277","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 14:29:31","2018-01-26 15:02:33","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("278","a9d4604502c991fb839eacae48a5339f","2018-01-26 14:44:51","2018-01-26 14:57:22","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("279","b0c527fe250931be5661544f6e41fd72","2018-01-26 15:42:27","2018-01-26 16:06:18","Chrome","Windows 7","Computador","F","8");

INSERT INTO tb_acesso VALUES("280","7acabf15f588f473caf117e0fe8fe0ed","2018-01-26 15:42:40","2018-01-26 16:03:36","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("281","fa506c2f6cc0b5dcd2170542fdcfcf68","2018-01-26 16:25:20","2018-01-26 16:46:32","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("282","41745789f48b13fe669478fc1dfadd0e","2018-01-26 18:06:37","2018-01-26 20:29:30","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("283","3cfd643a3e4dda80d3db81f54f1894f4","2018-01-26 19:24:22","2018-01-26 19:51:47","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("284","f2432cf45ab71561c8d774893f22c608","2018-01-26 20:41:19","2018-01-26 21:01:43","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("285","60747ef95b1aa119cab5d2a291d3c865","2018-01-26 23:51:56","2018-01-27 00:32:20","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("286","669d3c984abfd15fbb1ad73ca3caa332","2018-01-27 02:23:14","2018-01-27 02:44:03","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("287","091f51abf886d12163a2ba1b5f0f4cd1","2018-01-27 09:26:23","2018-01-27 09:31:03","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("288","41745789f48b13fe669478fc1dfadd0e","2018-01-27 10:49:27","2018-01-27 11:04:30","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("289","41745789f48b13fe669478fc1dfadd0e","2018-01-27 11:06:59","2018-01-27 12:42:29","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("290","41745789f48b13fe669478fc1dfadd0e","2018-01-27 12:54:47","2018-01-27 13:20:59","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("291","41745789f48b13fe669478fc1dfadd0e","2018-01-27 13:34:52","2018-01-27 13:59:55","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("292","59b9c06d0779827ad62aea8b6d2e476a","2018-01-27 17:56:07","2018-01-27 18:30:59","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("293","edb86edd9cb82e9ef46a3baf503afe2a","2018-01-27 18:50:46","2018-01-27 19:12:23","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("294","796209fcaad45e479b43a1f2757bd4fd","2018-01-27 19:49:40","2018-01-27 20:16:31","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("295","edb86edd9cb82e9ef46a3baf503afe2a","2018-01-27 20:15:06","2018-01-27 20:36:58","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("296","6a3bc11e235bcec827ab89802bb708ab","2018-01-27 20:45:16","2018-01-27 21:05:26","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("297","ed89b7c3a28655c840065f07337896b9","2018-01-27 23:36:52","2018-01-28 00:05:10","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("298","acd140a88ffea25d5f5281e254bd0fa3","2018-01-27 23:37:20","2018-01-28 00:00:36","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("299","01878fb2dbccc34b2f3aed31bb1e6624","2018-01-28 09:43:33","2018-01-28 10:04:33","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("300","364cffe7781fe5a65163d591830ec26d","2018-01-28 10:13:23","2018-01-28 10:35:50","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("301","455307e14ecc621cca240c460f861e2d","2018-01-28 11:00:53","2018-01-28 11:21:04","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("302","9550124ab21505f1abf426427d0b7f54","2018-01-28 14:14:23","2018-01-28 14:34:32","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("303","a48980bed9d80d051f5b346541fbcd28","2018-01-28 17:45:23","2018-01-28 18:05:33","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("304","4274a08b71592bd185f9b81835b1fdd5","2018-01-28 20:32:48","2018-01-28 20:57:07","Safari","Mac OS X","iphone","F","9");

INSERT INTO tb_acesso VALUES("305","ba6724889fc05ed34a6e236dc0210364","2018-01-28 20:53:26","2018-01-28 21:16:52","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("306","521384b6eda68773a206e41ea8801668","2018-01-28 22:23:11","2018-01-28 22:55:22","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("307","9defe482ef75a7b35040679e63ea5356","2018-01-28 23:03:40","2018-01-28 23:24:37","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("308","1b06e8a24aaf80d75edab2c67c227b80","2018-01-29 00:21:36","2018-01-29 00:44:27","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("309","828a7523f4e3971e959f369a68ff11ad","2018-01-29 09:22:23","2018-01-29 10:15:12","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("310","7acabf15f588f473caf117e0fe8fe0ed","2018-01-29 10:19:18","2018-01-29 10:52:52","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("311","b71c95e68798a93d698502cc4ae47cd9","2018-01-29 11:28:56","2018-01-29 11:51:34","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("312","b71c95e68798a93d698502cc4ae47cd9","2018-01-29 12:29:42","2018-01-29 12:49:54","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("313","828a7523f4e3971e959f369a68ff11ad","2018-01-29 12:32:45","2018-01-29 12:53:21","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("314","f5d5b7a0e144bf3b349f4e88f6309258","2018-01-29 12:55:39","2018-01-29 13:16:49","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("315","7acabf15f588f473caf117e0fe8fe0ed","2018-01-29 13:08:47","2018-01-29 13:29:36","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("316","7acabf15f588f473caf117e0fe8fe0ed","2018-01-29 13:46:54","2018-01-29 14:17:31","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("317","828a7523f4e3971e959f369a68ff11ad","2018-01-29 14:21:23","2018-01-29 14:42:12","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("318","bb58a375becce6608c6f5806254fa5a7","2018-01-29 16:17:00","2018-01-29 18:34:00","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("319","f5d5b7a0e144bf3b349f4e88f6309258","2018-01-29 16:33:13","2018-01-29 17:00:05","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("320","7acabf15f588f473caf117e0fe8fe0ed","2018-01-29 17:01:50","2018-01-29 17:22:21","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("321","b86bbb4b1414193628693abd9540e190","2018-01-29 17:38:27","2018-01-29 18:07:53","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("322","a4cd6653afa071232f8998d39170098a","2018-01-29 18:06:58","2018-01-29 18:27:09","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("323","bd8df3e40f38b8015be18b1bf627dc70","2018-01-29 20:08:27","2018-01-29 20:45:11","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("324","2610c2f02f54720f945fde7cb6f4150c","2018-01-29 21:08:11","2018-01-29 21:29:44","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("325","a84f1ec08bdb0c721b34c765526db90c","2018-01-29 21:19:20","2018-01-29 21:40:46","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("326","c3cbb91aa3b505b44af5c4cc052a750a","2018-01-29 21:38:50","2018-01-29 22:01:40","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("327","e648e2e966a05733880ff7b1dada578a","2018-01-29 22:02:46","2018-01-29 22:36:14","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("328","c0f81983e1f630fd36daecaa6d9f102f","2018-01-30 07:54:02","2018-01-30 08:24:59","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("329","7acabf15f588f473caf117e0fe8fe0ed","2018-01-30 11:10:25","2018-01-30 12:01:32","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("330","bfbe53587cd6d7254e020eb2b3cf9f2e","2018-01-30 13:25:59","2018-01-30 13:54:51","Chrome","Windows 8.1","Computador","F","6");

INSERT INTO tb_acesso VALUES("331","7acabf15f588f473caf117e0fe8fe0ed","2018-01-30 14:06:29","2018-01-30 14:34:48","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("332","1c2f80f6ca63b0876ec50c963ef1d1ed","2018-01-30 15:22:48","2018-01-30 15:44:15","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("333","828a7523f4e3971e959f369a68ff11ad","2018-01-30 16:01:43","2018-01-30 16:24:19","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("334","7acabf15f588f473caf117e0fe8fe0ed","2018-01-30 16:03:38","2018-01-30 16:23:50","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("335","828a7523f4e3971e959f369a68ff11ad","2018-01-30 16:26:19","2018-01-30 16:59:01","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("336","7acabf15f588f473caf117e0fe8fe0ed","2018-01-30 16:27:33","2018-01-30 16:47:48","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("337","fe6f4bae19854526c5fe60790153c61b","2018-01-30 18:53:41","2018-01-30 19:17:25","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("338","5badd6640e8a90dc07d5619acdd2eeeb","2018-01-30 19:56:32","2018-01-30 20:16:41","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("339","81d5587bec81b3e2085183d6421f67ea","2018-01-30 20:01:39","2018-01-30 20:24:50","Safari","Mac OS X","iphone","F","9");

INSERT INTO tb_acesso VALUES("340","87bfef3a97cec3a6010266a406921d46","2018-01-30 20:47:46","2018-01-30 21:13:57","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("341","289673b209279dd76bb11f0529060f25","2018-01-30 21:53:43","2018-01-30 22:13:52","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("342","09220076ffb4fb8c3e7c03bb70af0500","2018-01-30 22:34:57","2018-01-30 23:09:58","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("343","68ac17838a08d72061fc14eca1bd2a56","2018-01-30 22:47:42","2018-01-30 23:15:53","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("344","828a7523f4e3971e959f369a68ff11ad","2018-01-31 09:13:51","2018-01-31 09:54:34","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("345","7acabf15f588f473caf117e0fe8fe0ed","2018-01-31 09:28:25","2018-01-31 10:00:19","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("346","7acabf15f588f473caf117e0fe8fe0ed","2018-01-31 10:17:58","2018-01-31 10:38:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("347","7acabf15f588f473caf117e0fe8fe0ed","2018-01-31 12:41:08","2018-01-31 13:01:19","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("348","0e81d007106735615d750fe89181963b","2018-01-31 12:49:44","2018-01-31 13:14:58","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("349","1421b40b1b6a688976985ba06ba6451e","2018-01-31 14:14:00","2018-01-31 14:34:40","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("350","7acabf15f588f473caf117e0fe8fe0ed","2018-01-31 15:38:11","2018-01-31 15:58:24","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("351","7acabf15f588f473caf117e0fe8fe0ed","2018-01-31 16:29:18","2018-01-31 16:49:38","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("352","ecc5e1a99a6a91f569cd0e7c972b3061","2018-01-31 17:08:17","2018-01-31 17:30:06","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("353","fbd4f28b5b0db02280143a7da4893291","2018-01-31 21:45:10","2018-01-31 22:05:20","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("354","f08aeac11748f0ec4a45c2a5527494d3","2018-02-01 10:50:49","2018-02-01 12:46:24","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("355","7acabf15f588f473caf117e0fe8fe0ed","2018-02-01 11:05:38","2018-02-01 12:25:29","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("356","e77a65279ab237fea652e78ed3207704","2018-02-01 11:31:31","2018-02-01 11:51:52","Chrome","Windows 8.1","Computador","F","6");

INSERT INTO tb_acesso VALUES("357","7acabf15f588f473caf117e0fe8fe0ed","2018-02-01 12:27:23","2018-02-01 12:52:06","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("358","7acabf15f588f473caf117e0fe8fe0ed","2018-02-01 13:06:34","2018-02-01 13:28:25","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("359","2557af13101a0a595c2f9eabda7bbab3","2018-02-01 13:54:43","2018-02-01 14:19:26","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("360","7acabf15f588f473caf117e0fe8fe0ed","2018-02-01 15:19:42","2018-02-01 15:42:00","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("361","7acabf15f588f473caf117e0fe8fe0ed","2018-02-01 15:43:47","2018-02-01 16:33:48","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("362","bb58a375becce6608c6f5806254fa5a7","2018-02-01 17:41:00","2018-02-01 18:49:41","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("363","8654c554791b770780031eae0901d865","2018-02-01 20:56:08","2018-02-01 21:19:24","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("364","3a99808ea22ec110ea05fbdaed968bfa","2018-02-01 21:47:45","2018-02-01 22:08:16","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("365","3c5348ee507f39bb731899bf8f8a99e5","2018-02-01 22:06:13","2018-02-01 22:27:42","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("366","3a99808ea22ec110ea05fbdaed968bfa","2018-02-01 22:34:57","2018-02-01 22:56:48","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("367","f71002d7c0b9bf3ea576f9da41b40f74","2018-02-01 22:46:26","2018-02-01 23:13:21","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("368","2a65f9d7837e53af975113c6ac6d0630","2018-02-01 23:05:49","2018-02-01 23:37:49","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("369","08eec27927a442750385d4086edd5c92","2018-02-01 23:07:10","2018-02-01 23:29:31","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("370","a9894f61f13ff786cc12834e98e0002f","2018-02-02 00:56:31","2018-02-02 01:22:55","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("371","7acabf15f588f473caf117e0fe8fe0ed","2018-02-02 10:11:00","2018-02-02 10:47:01","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("372","bb58a375becce6608c6f5806254fa5a7","2018-02-02 10:26:32","2018-02-02 12:43:51","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("373","9d542e25267aafff1d61a8f3f0583e14","2018-02-02 11:03:35","2018-02-02 11:24:10","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("374","45f584e627ccb099021d215525636c51","2018-02-02 12:05:44","2018-02-02 12:27:20","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("375","7acabf15f588f473caf117e0fe8fe0ed","2018-02-02 12:26:19","2018-02-02 12:57:17","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("376","7acabf15f588f473caf117e0fe8fe0ed","2018-02-02 13:54:49","2018-02-02 14:15:00","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("377","7acabf15f588f473caf117e0fe8fe0ed","2018-02-02 14:22:01","2018-02-02 14:42:32","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("378","bb58a375becce6608c6f5806254fa5a7","2018-02-02 14:50:40","2018-02-02 15:12:55","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("379","bd70088cb9625065864f67a122d0af13","2018-02-02 16:01:48","2018-02-02 16:24:18","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("380","01417c9e49446760accb9e18f2541c07","2018-02-02 16:50:26","2018-02-02 17:10:38","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("381","2db5e61637f774e7ca2ea3fe50c917b6","2018-02-02 17:21:35","2018-02-02 17:34:52","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("382","6a65d5c61acb59d9c178dbd4248a6a53","2018-02-02 18:39:20","2018-02-02 19:00:48","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("383","1a0cd3fa71df65621a27789b56f44629","2018-02-02 23:22:43","2018-02-02 23:42:54","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("384","2a56d5e7fea74caf4ea9dfbdcccd125c","2018-02-03 00:37:54","2018-02-03 00:58:05","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("385","2f2d322ec35df835dc8e237397e5b974","2018-02-03 13:13:31","2018-02-03 13:34:39","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("386","bb58a375becce6608c6f5806254fa5a7","2018-02-03 16:17:04","2018-02-03 16:38:53","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("387","f658fc035f9ff793374be65207d76823","2018-02-03 16:55:02","2018-02-03 17:17:13","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("388","91d99f5e12346bfaabc8ccbabac4fbbd","2018-02-03 17:03:24","2018-02-03 17:24:29","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("389","03e1b8b6498d65828f117017ebcf1882","2018-02-03 17:37:27","2018-02-03 17:58:19","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("390","03e1b8b6498d65828f117017ebcf1882","2018-02-03 18:38:48","2018-02-03 18:59:18","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("391","22bd67f598db2c28bcadec694e670738","2018-02-03 19:03:01","2018-02-03 19:23:21","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("392","4148f1b0a592f1930f1e6c97b4f923b3","2018-02-03 21:10:49","2018-02-03 21:38:45","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("393","92984a9bee3738df01eae89d845afac0","2018-02-03 21:20:25","2018-02-03 21:40:35","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("394","218a0b6b5075a45b24b748cd899ee943","2018-02-03 21:56:04","2018-02-03 22:17:29","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("395","a7d2cd59d32f8aacf10b4a03e0de0fbf","2018-02-03 22:18:25","2018-02-03 22:39:45","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("396","218a0b6b5075a45b24b748cd899ee943","2018-02-03 22:25:40","2018-02-03 23:25:04","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("397","a52b113e32fc01abef53523dd6addbe2","2018-02-03 22:28:28","2018-02-03 22:50:53","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("398","4148f1b0a592f1930f1e6c97b4f923b3","2018-02-03 22:29:16","2018-02-03 22:51:16","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("399","a52b113e32fc01abef53523dd6addbe2","2018-02-03 23:07:15","2018-02-03 23:42:03","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("400","4148f1b0a592f1930f1e6c97b4f923b3","2018-02-03 23:07:56","2018-02-03 23:34:37","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("401","218a0b6b5075a45b24b748cd899ee943","2018-02-03 23:42:22","2018-02-04 00:01:06","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("402","1828c85fda3fe7e165944bb5148a1235","2018-02-03 23:57:22","2018-02-04 00:22:15","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("403","366b48930581b3c4155cc498870cc86a","2018-02-04 08:43:10","2018-02-04 09:13:41","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("404","bcdbc15049e023b81ea3e143de307c22","2018-02-04 08:56:59","2018-02-04 09:18:50","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("405","08402eabb0d6e2cdee34b2a798f22b1e","2018-02-04 09:22:15","2018-02-04 09:44:51","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("406","c5ee090b192ad87417d7ed9d802d0353","2018-02-04 18:52:18","2018-02-04 19:23:58","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("407","e380136d040992b064c9c34fb3df848e","2018-02-04 18:58:09","2018-02-04 19:55:11","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("408","c5ee090b192ad87417d7ed9d802d0353","2018-02-04 19:24:36","2018-02-04 19:48:24","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("409","c5ee090b192ad87417d7ed9d802d0353","2018-02-04 19:49:05","2018-02-04 20:10:15","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("410","43321536761436e25bd2052cf02f8ccf","2018-02-04 19:54:09","2018-02-04 20:09:43","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("411","f574a29fd2958121c87ba281a74a0b5c","2018-02-04 21:55:09","2018-02-04 22:15:22","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("412","02b515f85268b786d6ce09f211b0a8a2","2018-02-04 22:05:12","2018-02-04 22:34:48","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("413","706ed8fb9e9add0e7d60916dfbec246e","2018-02-04 23:10:39","2018-02-04 23:43:29","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("414","bb58a375becce6608c6f5806254fa5a7","2018-02-05 11:10:40","2018-02-05 11:31:29","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("415","8f98ea0b637adb74973020f99bb32947","2018-02-05 11:21:17","2018-02-05 11:41:50","Safari","Mac OS X","iphone","F","9");

INSERT INTO tb_acesso VALUES("416","7acabf15f588f473caf117e0fe8fe0ed","2018-02-05 11:45:46","2018-02-05 12:26:07","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("417","bb58a375becce6608c6f5806254fa5a7","2018-02-05 12:11:59","2018-02-05 13:13:36","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("418","dee1b2a62c9b2bacc226b9b44a7c40ed","2018-02-05 12:19:18","2018-02-05 12:41:19","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("419","a2ad645178c4cecb48203874636dee1a","2018-02-05 13:09:44","2018-02-05 13:31:33","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("420","de27c04c66131a470505f87eb5606dca","2018-02-05 13:10:23","2018-02-05 13:33:02","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("421","7acabf15f588f473caf117e0fe8fe0ed","2018-02-05 14:06:50","2018-02-05 14:27:01","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("422","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 15:40:34","2018-02-05 16:02:51","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("423","7acabf15f588f473caf117e0fe8fe0ed","2018-02-05 15:45:14","2018-02-05 16:05:26","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("424","85e073dee8bb982b3ced99d8b3f226f3","2018-02-05 17:09:27","2018-02-05 17:43:56","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("425","7acabf15f588f473caf117e0fe8fe0ed","2018-02-05 17:24:16","2018-02-05 17:45:25","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("426","7acabf15f588f473caf117e0fe8fe0ed","2018-02-05 17:52:35","2018-02-05 18:14:30","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("427","41319be37d51dd90d5eeee429e2caa0e","2018-02-05 18:02:40","2018-02-05 18:23:15","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("428","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 18:58:41","2018-02-05 19:19:15","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("429","d6c336fc32a6218346337eea7c3b31f3","2018-02-05 18:58:52","2018-02-05 19:21:29","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("430","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 19:57:13","2018-02-05 20:23:04","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("431","872152ce613447dc49e21bc6095bdbd0","2018-02-05 19:59:39","2018-02-05 20:29:26","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("432","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 20:28:38","2018-02-05 20:29:17","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("433","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 20:30:12","2018-02-05 21:16:28","Chrome","Windows 7","Computador","F","3");

INSERT INTO tb_acesso VALUES("434","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 21:18:56","2018-02-05 21:57:18","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("435","06c564f24cbf0394405815e8477b827c","2018-02-05 21:54:21","2018-02-05 22:18:24","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("436","8fa6bcb3a47ec888794e1f9a02c732df","2018-02-05 22:23:59","2018-02-05 22:45:11","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("437","110ecfe8c1d3d09987715a5c9b29497d","2018-02-05 22:36:19","2018-02-05 23:19:17","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("438","8fa6bcb3a47ec888794e1f9a02c732df","2018-02-06 00:27:56","2018-02-06 00:53:53","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("439","016686445437cca3f8c784965ae7f32e","2018-02-06 00:46:07","2018-02-06 01:09:23","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("440","49d55c4b389658662440198ba70ac172","2018-02-06 07:32:44","2018-02-06 07:54:40","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("441","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 09:44:27","2018-02-06 10:05:46","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("442","3510530f047bd52851fa731f71ab762f","2018-02-06 10:52:00","2018-02-06 11:14:15","Chrome","Windows 8.1","Computador","F","6");

INSERT INTO tb_acesso VALUES("443","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 12:59:50","2018-02-06 13:20:14","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("444","176191b397a3ba6efa8f27b037ae3d39","2018-02-06 13:43:23","2018-02-06 14:05:14","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("445","110ecfe8c1d3d09987715a5c9b29497d","2018-02-06 13:43:27","2018-02-06 14:07:47","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("446","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 14:10:12","2018-02-06 14:41:34","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("447","306340f28654e35bcf2b9d585f76e3d9","2018-02-06 14:24:43","2018-02-06 14:46:55","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("448","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 15:05:38","2018-02-06 15:25:50","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("449","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 15:58:12","2018-02-06 16:18:32","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("450","7acabf15f588f473caf117e0fe8fe0ed","2018-02-06 17:05:21","2018-02-06 17:25:34","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("451","8b97c1b07912c0d6de6a529b661abc5e","2018-02-06 18:36:50","2018-02-06 19:02:07","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("452","b441d379e1dd6f450620dc9653775266","2018-02-06 20:19:58","2018-02-06 20:48:38","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("453","6d6c7c93bcf1b40ebc0200ea0317ef73","2018-02-06 20:22:56","2018-02-06 20:45:40","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("454","12baa3a77add51d0f1a5b83ded0b7dfb","2018-02-06 20:27:58","2018-02-06 20:58:48","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("455","0bc81ee424fffbbfec465bdc093a3191","2018-02-06 21:22:33","2018-02-06 22:32:33","Chrome","Android","android","F","3");

INSERT INTO tb_acesso VALUES("456","0720a48a2afad0aead4ac021765d2ff5","2018-02-06 21:36:43","2018-02-06 22:00:35","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("457","2d1b1acca91538757849c7ac44b59683","2018-02-06 21:43:10","2018-02-06 22:06:27","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("458","2d1b1acca91538757849c7ac44b59683","2018-02-06 22:38:45","2018-02-06 22:59:05","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("459","364168123abfd33da95fe05034b8f2ee","2018-02-06 23:28:48","2018-02-06 23:49:08","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("460","63b426ebbf0834eac6ab468c3dff2b2f","2018-02-06 23:36:41","2018-02-06 23:57:51","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("461","97bedee35c9e33e74579d4716dd81589","2018-02-07 00:12:25","2018-02-07 00:50:02","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("462","fc1053504bc2e66655439bcde83a1c00","2018-02-07 00:34:51","2018-02-07 00:55:19","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("463","d223a40d6d6fc8ced6151528332990aa","2018-02-07 08:18:21","2018-02-07 08:40:13","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("464","857266285736a1b04e0e456f990fc061","2018-02-07 09:47:29","2018-02-07 10:03:52","Chrome","Windows 8.1","Computador","F","6");

INSERT INTO tb_acesso VALUES("465","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 09:54:10","2018-02-07 11:03:41","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("466","5e6ef48ec12aa677867e095df58623f2","2018-02-07 11:23:24","2018-02-07 11:48:38","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("467","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 11:27:43","2018-02-07 11:47:59","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("468","110ecfe8c1d3d09987715a5c9b29497d","2018-02-07 12:00:23","2018-02-07 12:26:59","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("469","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 12:20:35","2018-02-07 12:59:10","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("470","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 13:09:58","2018-02-07 13:40:40","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("471","5e6ef48ec12aa677867e095df58623f2","2018-02-07 13:16:28","2018-02-07 13:48:54","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("472","bfa038c4ecf6a2c7d55c06f6cba47ff9","2018-02-07 13:38:45","2018-02-07 13:59:07","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("473","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 13:44:01","2018-02-07 14:31:30","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("474","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 14:52:15","2018-02-07 15:13:35","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("475","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 15:18:47","2018-02-07 15:42:08","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("476","7acabf15f588f473caf117e0fe8fe0ed","2018-02-07 15:47:33","2018-02-07 16:17:08","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("477","cfd3f208b7514505268f0c1bf94f3df5","2018-02-07 15:57:55","2018-02-07 16:30:21","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("478","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-07 16:02:40","2018-02-07 16:38:26","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("479","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-07 16:39:59","2018-02-07 17:23:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("480","96b4a550ee7d4d071f5c91d238b7533c","2018-02-07 20:37:05","2018-02-07 21:20:14","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("481","a31250ed867e2b2a35807f52086c8b49","2018-02-07 21:35:45","2018-02-07 22:08:46","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("482","cdac0077c292a2f7a5f9006f7da61dfc","2018-02-07 21:37:18","2018-02-07 22:00:36","Chrome","Android","android","F","4");

INSERT INTO tb_acesso VALUES("483","744a60c77747e2cdc80aa6dd944651e9","2018-02-07 22:54:18","2018-02-07 23:17:36","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("484","a31250ed867e2b2a35807f52086c8b49","2018-02-07 23:12:26","2018-02-07 23:41:49","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("485","809c8f78c8a92ca60c667abcb09ac43a","2018-02-07 23:33:24","2018-02-07 23:53:35","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("486","3c9f2e54de8afef5ba7215b87588ec71","2018-02-08 08:15:43","2018-02-08 08:37:30","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("487","a9169cf156e9986e4bc92fb221b3ac88","2018-02-08 08:49:19","2018-02-08 09:18:10","Chrome","Windows 8.1","Computador","F","6");

INSERT INTO tb_acesso VALUES("488","ab60d1f070581a7aafaaa60c128682d0","2018-02-08 09:16:37","2018-02-08 09:37:52","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("489","110ecfe8c1d3d09987715a5c9b29497d","2018-02-08 09:54:28","2018-02-08 10:16:46","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("490","addf8a37745e098c1f3ed0afdc58bfa0","2018-02-08 12:12:37","2018-02-08 12:32:51","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("491","54846f18805d537b480b9806304ad47e","2018-02-08 12:27:45","2018-02-08 12:48:19","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("492","f8da20d50dd7f0949cc16fcaf72b2228","2018-02-08 12:30:40","2018-02-08 12:50:49","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("493","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-08 13:01:18","2018-02-08 13:22:23","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("494","54846f18805d537b480b9806304ad47e","2018-02-08 13:09:15","2018-02-08 13:38:25","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("495","185a84dc7f05bbfc0a82f2424920da47","2018-02-08 13:26:36","2018-02-08 14:05:49","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("496","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-08 13:39:44","2018-02-08 16:13:34","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("497","54846f18805d537b480b9806304ad47e","2018-02-08 13:51:43","2018-02-08 14:33:16","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("498","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-08 16:17:22","2018-02-08 17:28:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("499","cf8d178a9d6a87d6a7d70228747b3e24","2018-02-08 17:36:41","2018-02-08 17:56:52","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("500","82fc13a083e71f652e485c9960f6db23","2018-02-08 18:44:41","2018-02-08 19:13:19","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("501","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 18:51:28","2018-02-08 20:02:24","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("502","ad79a49276c1999cb59b6e7b24240427","2018-02-08 19:40:30","2018-02-08 20:03:49","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("503","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 20:43:15","2018-02-08 21:40:06","Chrome","Windows 7","Computador","F","3");

INSERT INTO tb_acesso VALUES("504","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 21:59:44","2018-02-08 22:34:43","Chrome","Windows 7","Computador","F","3");

INSERT INTO tb_acesso VALUES("505","df0e65e25497eb955689a60c5e69e860","2018-02-08 22:05:02","2018-02-08 22:30:03","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("506","fa3816ee5060c7a633a2b1ce3893cbd6","2018-02-08 22:32:33","2018-02-08 22:54:06","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("507","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 22:39:39","2018-02-08 23:04:16","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("508","a0a0ac96d6f3730b191cafd762b295ed","2018-02-08 22:51:09","2018-02-08 23:11:40","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("509","fa3816ee5060c7a633a2b1ce3893cbd6","2018-02-08 23:02:26","2018-02-08 23:22:53","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("510","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 23:15:17","2018-02-08 23:35:50","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("511","7ddd43a5f5ecd9e2a874de6d63ac23b2","2018-02-08 23:38:39","2018-02-09 00:40:33","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("512","ad79a49276c1999cb59b6e7b24240427","2018-02-08 23:40:40","2018-02-09 00:07:55","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("513","fa3816ee5060c7a633a2b1ce3893cbd6","2018-02-09 01:04:36","2018-02-09 01:26:31","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("514","9d06ab69a479007a58afee1691beb404","2018-02-09 02:20:11","2018-02-09 02:48:10","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("515","9d06ab69a479007a58afee1691beb404","2018-02-09 03:43:28","2018-02-09 04:04:15","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("516","373f9c713c4f5382441ae192d8cb9f2b","2018-02-09 07:56:41","2018-02-09 08:24:22","Chrome","Android","android","F","6");

INSERT INTO tb_acesso VALUES("517","7f596737e68d3515c7d12a694efa1253","2018-02-09 09:25:01","2018-02-09 10:00:46","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("518","cfd3f208b7514505268f0c1bf94f3df5","2018-02-09 09:46:28","2018-02-09 10:07:34","Chrome","Windows 7","Computador","F","7");

INSERT INTO tb_acesso VALUES("519","54846f18805d537b480b9806304ad47e","2018-02-09 09:47:16","2018-02-09 10:12:29","Chrome","Windows 10","Computador","F","9");

INSERT INTO tb_acesso VALUES("520","c8c60271799799e48fd8d9eb27a457dc","2018-02-09 09:52:32","2018-02-09 10:34:14","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("521","1ee2c68c5a66d763d18a09b816aa68aa","2018-02-09 10:31:37","2018-02-09 10:52:46","Chrome","Windows 7","Computador","F","1");

INSERT INTO tb_acesso VALUES("522","c8c60271799799e48fd8d9eb27a457dc","2018-02-09 10:34:47","2018-02-09 10:58:05","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("523","35bccf54aee05faf8c3d86de5d015e75","2018-02-09 10:42:38","2018-02-09 11:06:18","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("524","9988007e3eec271b2a5efb9ff2df6255","2018-02-09 10:47:38","2018-02-09 11:19:17","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("525","1ee2c68c5a66d763d18a09b816aa68aa","2018-02-09 10:53:27","2018-02-09 11:38:08","Chrome","Windows 7","Computador","F","1");

INSERT INTO tb_acesso VALUES("526","35bccf54aee05faf8c3d86de5d015e75","2018-02-09 11:06:50","2018-02-09 11:27:55","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("527","35bccf54aee05faf8c3d86de5d015e75","2018-02-09 11:33:03","2018-02-09 12:43:21","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("528","a0c6a38921433d88db30faa909cbdec6","2018-02-09 12:24:46","2018-02-09 13:13:15","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("529","eec8282bfaba32d316ab10d70ef531c6","2018-02-09 12:49:41","2018-02-09 13:15:35","Chrome","Windows 7","Computador","F","5");

INSERT INTO tb_acesso VALUES("530","9988007e3eec271b2a5efb9ff2df6255","2018-02-09 12:56:45","2018-02-09 13:20:41","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("531","c2edb097fa31aec2a16304eab14c75d8","2018-02-09 13:39:43","2018-02-09 14:01:39","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("532","26448adc3d2d41d92671d9204ab23f3f","2018-02-09 13:56:38","2018-02-09 14:57:21","Chrome","Windows 7","Computador","F","4");

INSERT INTO tb_acesso VALUES("533","031b18b5b4d8aaef8779dab29afb0b88","2018-02-09 14:08:03","2018-02-09 14:39:35","Chrome","Windows 10","Computador","F","8");

INSERT INTO tb_acesso VALUES("534","103fefacc9c509ebbbcf3f4e4c41debf","2018-02-09 16:27:44","2018-02-09 17:04:44","Chrome","Android","android","F","5");

INSERT INTO tb_acesso VALUES("535","b1d542f28873b881577776eeac8867e3","2018-02-09 17:43:45","2018-02-09 18:23:11","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("536","04e249f4df0c2fe6af34ac7b283560d3","2018-02-09 17:58:56","2018-02-09 18:46:56","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("537","734fc0fe36d1cf0683c09c51a5640ddd","2018-02-09 18:29:16","2018-02-09 18:49:54","Chrome","Android","android","F","2");

INSERT INTO tb_acesso VALUES("538","2231c90ab511064a93ce6fad2591406f","2018-02-09 18:45:58","2018-02-09 19:20:37","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("539","f501acbc7b376bb9110d5a7183e7e6c9","2018-02-09 18:56:39","2018-02-09 20:26:54","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("540","b1d542f28873b881577776eeac8867e3","2018-02-09 18:57:34","2018-02-09 19:21:51","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("541","06d473ea42e61fb478bf89f01e80853e","2018-02-09 19:33:16","2018-02-09 19:53:49","Safari","Mac OS X","iphone","F","8");

INSERT INTO tb_acesso VALUES("542","d6a72671221d4202728e6cebdf069c59","2018-02-09 20:20:10","2018-02-09 20:40:15","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("543","f501acbc7b376bb9110d5a7183e7e6c9","2018-02-09 20:29:48","2018-02-09 20:50:31","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("544","4a706ed511d050517cb18f9e524686e2","2018-02-09 20:40:49","2018-02-09 21:26:05","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("545","d75b53d7de7ffd0e8964eb439fb572d9","2018-02-09 22:36:59","2018-02-09 22:58:14","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("546","926120bf039828eb977bcbc193126fa7","2018-02-11 08:20:37","2018-02-11 08:57:04","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("547","546a94afecb0da2da65328efee492a7c","2018-02-16 16:55:27","2018-02-16 17:15:43","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("548","8ebe9b1bd73dcf1ce610229dc7c48f05","2018-02-17 19:48:35","2018-02-17 20:14:47","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("549","546a94afecb0da2da65328efee492a7c","2018-02-19 15:28:44","2018-02-19 16:03:29","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("550","546a94afecb0da2da65328efee492a7c","2018-02-19 16:04:39","2018-02-19 16:30:53","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("551","546a94afecb0da2da65328efee492a7c","2018-02-19 16:59:22","2018-02-19 17:19:48","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("552","546a94afecb0da2da65328efee492a7c","2018-02-19 17:22:44","2018-02-19 17:43:04","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("553","46ca5c63c1109fdd688707d5adbeff0a","2018-03-07 20:26:03","2018-03-07 20:49:20","Chrome","Windows 10","Computador","F","3");

INSERT INTO tb_acesso VALUES("554","ff8d290397f20650524944b4972d7c96","2018-03-22 22:03:12","2018-03-22 22:13:30","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("555","ff8d290397f20650524944b4972d7c96","2018-03-22 22:13:49","2018-03-22 22:16:27","Chrome","Windows 8.1","Computador","F","5");

INSERT INTO tb_acesso VALUES("556","ff8d290397f20650524944b4972d7c96","2018-03-22 22:16:43","2018-03-22 22:18:33","Chrome","Windows 8.1","Computador","F","5");

INSERT INTO tb_acesso VALUES("557","ff8d290397f20650524944b4972d7c96","2018-03-22 22:25:29","2018-03-22 22:31:56","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("558","ff8d290397f20650524944b4972d7c96","2018-03-22 22:32:15","2018-03-22 22:35:34","Chrome","Windows 8.1","Computador","F","5");

INSERT INTO tb_acesso VALUES("559","ff8d290397f20650524944b4972d7c96","2018-03-22 22:35:51","2018-03-22 22:41:42","Chrome","Windows 8.1","Computador","F","5");

INSERT INTO tb_acesso VALUES("560","ff8d290397f20650524944b4972d7c96","2018-03-22 22:42:02","2018-03-22 23:10:41","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("561","5b3c153ac989610ec579b3b4ef259e5d","2018-03-22 22:51:17","2018-03-22 23:15:40","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("562","1f945243230b45abb2161b23aacf52c7","2018-03-23 10:21:20","2018-03-23 13:04:33","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("563","1f945243230b45abb2161b23aacf52c7","2018-03-23 14:10:40","2018-03-23 14:32:10","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("564","46f845c78a91ee8cf7e9b78ee1858dbb","2018-03-23 14:12:40","2018-03-23 17:24:52","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("565","46f845c78a91ee8cf7e9b78ee1858dbb","2018-03-23 17:25:27","2018-03-23 17:45:35","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("566","1f945243230b45abb2161b23aacf52c7","2018-03-23 17:36:19","2018-03-23 17:56:13","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("567","1f945243230b45abb2161b23aacf52c7","2018-03-23 17:56:32","2018-03-23 18:16:55","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("568","1d9b4d752fb0ca733aedf43b949c2f74","2018-03-23 21:32:24","2018-03-23 21:53:28","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO tb_acesso VALUES("569","8664565b91135f844b619b17d605da21","2018-03-24 18:14:04","2018-03-24 18:41:23","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("570","394b52ac33bffb54ae89d852bfaf9021","2018-03-24 18:21:56","2018-03-24 19:02:00","Chrome","Android","android","F","1");

INSERT INTO tb_acesso VALUES("571","ea8ea61119f4429c38eb01c67b6aa09a","2018-03-24 21:57:09","2018-03-24 22:18:15","Chrome","Android","android","F","7");

INSERT INTO tb_acesso VALUES("572","402eefcd05e16493c51166532c91c80a","2018-03-29 11:48:43","2018-03-29 17:13:06","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("573","402eefcd05e16493c51166532c91c80a","2018-03-29 17:13:58","2018-03-29 19:59:09","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("574","402eefcd05e16493c51166532c91c80a","2018-03-29 19:59:28","2018-03-29 20:22:24","Chrome","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("575","hm6s0cs4sme33vtcqu52h7crr2","2018-04-03 12:10:32","2018-04-03 12:33:27","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("576","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 11:04:46","2018-04-04 11:26:07","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("577","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 11:27:31","2018-04-04 11:29:50","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("578","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 11:52:09","2018-04-04 11:54:40","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("579","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 12:20:05","2018-04-04 12:22:52","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("580","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 12:23:06","2018-04-04 13:05:06","Firefox","Windows 10","Computador","F","21");

INSERT INTO tb_acesso VALUES("581","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 13:52:43","2018-04-04 13:57:23","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("582","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 13:57:58","2018-04-04 14:24:34","Firefox","Windows 10","Computador","F","22");

INSERT INTO tb_acesso VALUES("583","hm6s0cs4sme33vtcqu52h7crr2","2018-04-04 17:14:33","2018-04-04 17:35:20","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("584","hm6s0cs4sme33vtcqu52h7crr2","2018-04-05 10:34:46","2018-04-05 11:11:16","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("585","kf9lrkbmnulj91c6qo6vom1ef3","2018-04-05 11:36:49","2018-04-05 12:32:02","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("586","kf9lrkbmnulj91c6qo6vom1ef3","2018-04-05 12:51:42","2018-04-05 13:29:38","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("587","kf9lrkbmnulj91c6qo6vom1ef3","2018-04-06 10:40:20","2018-04-06 12:08:19","Firefox","Windows 10","Computador","F","1");

INSERT INTO tb_acesso VALUES("588","kf9lrkbmnulj91c6qo6vom1ef3","2018-04-06 13:44:00","2018-04-06 14:31:36","Firefox","Windows 10","Computador","F","1");




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
  `co_endereco` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_usuario`,`co_categoria_agenda`,`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_agenda VALUES("1","<p>fewf ewfew</p>\n","2018-04-06 11:16:11","N","2018-04-07 15:30:00","","Nosso super encontro","1","3","252");

INSERT INTO tb_agenda VALUES("2","<p>fwe we few f foi um super retiro</p>\n","2018-04-06 11:30:02","N","2018-02-10 06:00:00","2018-02-13 21:00:00","VI Retiro de carnaval Santifique-se","1","5","253");

INSERT INTO tb_agenda VALUES("3","<p>ew f ewf</p>\n","2018-04-06 11:44:06","N","2018-04-14 20:00:00","","Ensaio da Música","1","2","254");




DROP TABLE IF EXISTS tb_agenda_evento;


CREATE TABLE `tb_agenda_evento` (
  `co_agenda_evento` int(11) NOT NULL AUTO_INCREMENT,
  `co_evento` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda_evento`,`co_evento`,`co_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tb_agenda_evento VALUES("1","1","3");




DROP TABLE IF EXISTS tb_auditoria;


CREATE TABLE `tb_auditoria` (
  `co_auditoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("1","2018-03-22 22:38:29","Coordenador, Membro, Membro","5");

INSERT INTO tb_auditoria VALUES("2","2018-03-22 22:55:20","Master","1");

INSERT INTO tb_auditoria VALUES("3","2018-03-23 12:17:22","Via Site","0");

INSERT INTO tb_auditoria VALUES("4","2018-03-23 12:19:12","Master","1");

INSERT INTO tb_auditoria VALUES("5","2018-03-23 14:23:35","Master","1");

INSERT INTO tb_auditoria VALUES("6","2018-03-23 14:24:35","Master","1");

INSERT INTO tb_auditoria VALUES("7","2018-03-23 14:42:16","Master","1");

INSERT INTO tb_auditoria VALUES("8","2018-03-23 14:50:38","Master","1");

INSERT INTO tb_auditoria VALUES("9","2018-03-23 14:55:34","Master","1");

INSERT INTO tb_auditoria VALUES("10","2018-03-23 15:06:15","Master","1");

INSERT INTO tb_auditoria VALUES("11","2018-03-23 15:12:14","Master","1");

INSERT INTO tb_auditoria VALUES("12","2018-03-23 15:16:25","Master","1");

INSERT INTO tb_auditoria VALUES("13","2018-03-23 15:22:17","Master","1");

INSERT INTO tb_auditoria VALUES("14","2018-03-23 15:24:53","Master","1");

INSERT INTO tb_auditoria VALUES("15","2018-03-23 15:28:43","Master","1");

INSERT INTO tb_auditoria VALUES("16","2018-03-23 15:31:19","Master","1");

INSERT INTO tb_auditoria VALUES("17","2018-03-23 15:39:05","Master","1");

INSERT INTO tb_auditoria VALUES("18","2018-03-23 15:42:10","Master","1");

INSERT INTO tb_auditoria VALUES("19","2018-03-23 15:47:21","Master","1");

INSERT INTO tb_auditoria VALUES("20","2018-03-23 15:50:02","Master","1");

INSERT INTO tb_auditoria VALUES("21","2018-03-23 15:52:08","Master","1");

INSERT INTO tb_auditoria VALUES("22","2018-03-23 15:54:51","Master","1");

INSERT INTO tb_auditoria VALUES("23","2018-03-23 16:00:08","Master","1");

INSERT INTO tb_auditoria VALUES("24","2018-03-23 16:03:53","Master","1");

INSERT INTO tb_auditoria VALUES("25","2018-03-23 16:05:40","Master","1");

INSERT INTO tb_auditoria VALUES("26","2018-03-23 16:10:46","Master","1");

INSERT INTO tb_auditoria VALUES("27","2018-03-23 16:18:41","Master","1");

INSERT INTO tb_auditoria VALUES("28","2018-03-23 16:23:54","Master","1");

INSERT INTO tb_auditoria VALUES("29","2018-03-23 16:28:27","Master","1");

INSERT INTO tb_auditoria VALUES("30","2018-03-23 16:30:47","Master","1");

INSERT INTO tb_auditoria VALUES("31","2018-03-23 16:32:25","Master","1");

INSERT INTO tb_auditoria VALUES("32","2018-03-23 16:34:39","Master","1");

INSERT INTO tb_auditoria VALUES("33","2018-03-23 16:39:22","Master","1");

INSERT INTO tb_auditoria VALUES("34","2018-03-23 16:52:29","Master","1");

INSERT INTO tb_auditoria VALUES("35","2018-03-23 16:55:36","Master","1");

INSERT INTO tb_auditoria VALUES("36","2018-03-23 16:57:35","Master","1");

INSERT INTO tb_auditoria VALUES("37","2018-03-23 16:59:32","Master","1");

INSERT INTO tb_auditoria VALUES("38","2018-03-23 17:02:11","Master","1");

INSERT INTO tb_auditoria VALUES("39","2018-03-23 17:04:31","Master","1");

INSERT INTO tb_auditoria VALUES("40","2018-03-23 17:08:20","Master","1");

INSERT INTO tb_auditoria VALUES("41","2018-03-23 17:10:12","Master","1");

INSERT INTO tb_auditoria VALUES("42","2018-03-23 17:11:49","Master","1");

INSERT INTO tb_auditoria VALUES("43","2018-03-23 17:17:00","Master","1");

INSERT INTO tb_auditoria VALUES("44","2018-03-23 17:18:54","Master","1");

INSERT INTO tb_auditoria VALUES("45","2018-04-04 11:45:59","Via Site","0");

INSERT INTO tb_auditoria VALUES("46","2018-04-04 11:55:57","Via Site","0");

INSERT INTO tb_auditoria VALUES("47","2018-04-04 12:03:57","Via Site","0");

INSERT INTO tb_auditoria VALUES("48","2018-04-04 12:05:07","Via Site","0");

INSERT INTO tb_auditoria VALUES("49","2018-04-04 12:10:14","Via Site","0");

INSERT INTO tb_auditoria VALUES("50","2018-04-04 12:12:13","Via Site","0");

INSERT INTO tb_auditoria VALUES("51","2018-04-04 12:13:34","Via Site","0");

INSERT INTO tb_auditoria VALUES("52","2018-04-04 12:14:31","Via Site","0");

INSERT INTO tb_auditoria VALUES("53","2018-04-04 12:18:02","Via Site","0");

INSERT INTO tb_auditoria VALUES("54","2018-04-04 12:19:53","Via Site","0");

INSERT INTO tb_auditoria VALUES("55","2018-04-04 12:22:23","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("56","2018-04-04 13:52:26","Via Site","0");

INSERT INTO tb_auditoria VALUES("57","2018-04-04 13:56:53","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("58","2018-04-04 17:14:19","Via Site","0");

INSERT INTO tb_auditoria VALUES("59","2018-04-05 10:50:57","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("60","2018-04-05 11:56:12","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("61","2018-04-05 11:59:59","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("62","2018-04-05 12:54:33","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("63","2018-04-05 13:00:59","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("64","2018-04-05 13:03:43","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("65","2018-04-05 13:05:59","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("66","2018-04-06 11:16:10","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("67","2018-04-06 11:30:02","Coord. Administrativo, Coordenadores, Membros, Master","1");

INSERT INTO tb_auditoria VALUES("68","2018-04-06 11:44:06","Coord. Administrativo, Coordenadores, Membros, Master","1");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Valor do registro Antes de Atualizar ou Deletar',
  `ds_item_atual` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Valor do Registro que passou a ser apos o Cadastro ou Atualização\n',
  `ds_campo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do campo da Tabela de Origem',
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=1369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tb_auditoria_itens VALUES("1","","Reunião para saber sobre o site e apresentação","ds_descricao","1");

INSERT INTO tb_auditoria_itens VALUES("2","","5","co_usuario","1");

INSERT INTO tb_auditoria_itens VALUES("3","","2018-03-24 14:00:00","dt_inicio","1");

INSERT INTO tb_auditoria_itens VALUES("4","","","dt_fim","1");

INSERT INTO tb_auditoria_itens VALUES("5","","Reunião do site","ds_titulo","1");

INSERT INTO tb_auditoria_itens VALUES("6","","1","co_categoria_agenda","1");

INSERT INTO tb_auditoria_itens VALUES("7","","0","co_evento","1");

INSERT INTO tb_auditoria_itens VALUES("8","","2018-03-22 22:38:29","dt_cadastro","1");

INSERT INTO tb_auditoria_itens VALUES("9","","N","st_dia_todo","1");

INSERT INTO tb_auditoria_itens VALUES("10","","1","co_agenda","2");

INSERT INTO tb_auditoria_itens VALUES("11","","4","co_perfil","2");

INSERT INTO tb_auditoria_itens VALUES("12","","1","co_agenda","3");

INSERT INTO tb_auditoria_itens VALUES("13","","2","co_perfil","3");

INSERT INTO tb_auditoria_itens VALUES("14","","Reunião sobre o site","ds_descricao","4");

INSERT INTO tb_auditoria_itens VALUES("15","","1","co_usuario","4");

INSERT INTO tb_auditoria_itens VALUES("16","","2018-03-24 14:00:00","dt_inicio","4");

INSERT INTO tb_auditoria_itens VALUES("17","","","dt_fim","4");

INSERT INTO tb_auditoria_itens VALUES("18","","Reunião do site","ds_titulo","4");

INSERT INTO tb_auditoria_itens VALUES("19","","1","co_categoria_agenda","4");

INSERT INTO tb_auditoria_itens VALUES("20","","0","co_evento","4");

INSERT INTO tb_auditoria_itens VALUES("21","","2018-03-22 22:55:20","dt_cadastro","4");

INSERT INTO tb_auditoria_itens VALUES("22","","N","st_dia_todo","4");

INSERT INTO tb_auditoria_itens VALUES("23","","2","co_agenda","5");

INSERT INTO tb_auditoria_itens VALUES("24","","4","co_perfil","5");

INSERT INTO tb_auditoria_itens VALUES("25","","2","co_agenda","6");

INSERT INTO tb_auditoria_itens VALUES("26","","2","co_perfil","6");

INSERT INTO tb_auditoria_itens VALUES("27","1","","co_agenda","7");

INSERT INTO tb_auditoria_itens VALUES("28","Reunião para saber sobre o site e apresentação","","ds_descricao","7");

INSERT INTO tb_auditoria_itens VALUES("29","2018-03-22 22:38:29","","dt_cadastro","7");

INSERT INTO tb_auditoria_itens VALUES("30","N","","st_dia_todo","7");

INSERT INTO tb_auditoria_itens VALUES("31","2018-03-24 14:00:00","","dt_inicio","7");

INSERT INTO tb_auditoria_itens VALUES("32","","","dt_fim","7");

INSERT INTO tb_auditoria_itens VALUES("33","Reunião do site","","ds_titulo","7");

INSERT INTO tb_auditoria_itens VALUES("34","5","","co_usuario","7");

INSERT INTO tb_auditoria_itens VALUES("35","1","","co_categoria_agenda","7");

INSERT INTO tb_auditoria_itens VALUES("36","0","","co_evento","7");

INSERT INTO tb_auditoria_itens VALUES("37","","Reunião para mostrar o site","ds_descricao","8");

INSERT INTO tb_auditoria_itens VALUES("38","","1","co_usuario","8");

INSERT INTO tb_auditoria_itens VALUES("39","","2018-03-24 20:00:00","dt_inicio","8");

INSERT INTO tb_auditoria_itens VALUES("40","","","dt_fim","8");

INSERT INTO tb_auditoria_itens VALUES("41","","Reunião para o site","ds_titulo","8");

INSERT INTO tb_auditoria_itens VALUES("42","","1","co_categoria_agenda","8");

INSERT INTO tb_auditoria_itens VALUES("43","","0","co_evento","8");

INSERT INTO tb_auditoria_itens VALUES("44","","2018-03-23 12:19:12","dt_cadastro","8");

INSERT INTO tb_auditoria_itens VALUES("45","","N","st_dia_todo","8");

INSERT INTO tb_auditoria_itens VALUES("46","","3","co_agenda","9");

INSERT INTO tb_auditoria_itens VALUES("47","","4","co_perfil","9");

INSERT INTO tb_auditoria_itens VALUES("48","","3","co_agenda","10");

INSERT INTO tb_auditoria_itens VALUES("49","","2","co_perfil","10");

INSERT INTO tb_auditoria_itens VALUES("50","5","","co_perfil_agenda","11");

INSERT INTO tb_auditoria_itens VALUES("51","3","","co_agenda","11");

INSERT INTO tb_auditoria_itens VALUES("52","4","","co_perfil","11");

INSERT INTO tb_auditoria_itens VALUES("53","6","","co_perfil_agenda","11");

INSERT INTO tb_auditoria_itens VALUES("54","3","","co_agenda","11");

INSERT INTO tb_auditoria_itens VALUES("55","2","","co_perfil","11");

INSERT INTO tb_auditoria_itens VALUES("56","3","","co_agenda","12");

INSERT INTO tb_auditoria_itens VALUES("57","Reunião para mostrar o site","Reunião para mostrar o site","ds_descricao","12");

INSERT INTO tb_auditoria_itens VALUES("58","2018-03-23 12:19:12","","dt_cadastro","12");

INSERT INTO tb_auditoria_itens VALUES("59","N","","st_dia_todo","12");

INSERT INTO tb_auditoria_itens VALUES("60","2018-03-24 20:00:00","2018-03-24 14:00:00","dt_inicio","12");

INSERT INTO tb_auditoria_itens VALUES("61","","","dt_fim","12");

INSERT INTO tb_auditoria_itens VALUES("62","Reunião para o site","Reunião para o site","ds_titulo","12");

INSERT INTO tb_auditoria_itens VALUES("63","1","1","co_usuario","12");

INSERT INTO tb_auditoria_itens VALUES("64","1","1","co_categoria_agenda","12");

INSERT INTO tb_auditoria_itens VALUES("65","0","","co_evento","12");

INSERT INTO tb_auditoria_itens VALUES("66","","3","co_agenda","13");

INSERT INTO tb_auditoria_itens VALUES("67","","4","co_perfil","13");

INSERT INTO tb_auditoria_itens VALUES("68","","3","co_agenda","14");

INSERT INTO tb_auditoria_itens VALUES("69","","2","co_perfil","14");

INSERT INTO tb_auditoria_itens VALUES("70","7","","co_perfil_agenda","15");

INSERT INTO tb_auditoria_itens VALUES("71","3","","co_agenda","15");

INSERT INTO tb_auditoria_itens VALUES("72","4","","co_perfil","15");

INSERT INTO tb_auditoria_itens VALUES("73","8","","co_perfil_agenda","15");

INSERT INTO tb_auditoria_itens VALUES("74","3","","co_agenda","15");

INSERT INTO tb_auditoria_itens VALUES("75","2","","co_perfil","15");

INSERT INTO tb_auditoria_itens VALUES("76","3","","co_agenda","16");

INSERT INTO tb_auditoria_itens VALUES("77","Reunião para mostrar o site","Reunião para mostrar o site","ds_descricao","16");

INSERT INTO tb_auditoria_itens VALUES("78","2018-03-23 12:19:12","","dt_cadastro","16");

INSERT INTO tb_auditoria_itens VALUES("79","N","","st_dia_todo","16");

INSERT INTO tb_auditoria_itens VALUES("80","2018-03-24 14:00:00","2018-03-24 18:00:00","dt_inicio","16");

INSERT INTO tb_auditoria_itens VALUES("81","","","dt_fim","16");

INSERT INTO tb_auditoria_itens VALUES("82","Reunião para o site","Reunião para o site","ds_titulo","16");

INSERT INTO tb_auditoria_itens VALUES("83","1","1","co_usuario","16");

INSERT INTO tb_auditoria_itens VALUES("84","1","1","co_categoria_agenda","16");

INSERT INTO tb_auditoria_itens VALUES("85","0","","co_evento","16");

INSERT INTO tb_auditoria_itens VALUES("86","","3","co_agenda","17");

INSERT INTO tb_auditoria_itens VALUES("87","","4","co_perfil","17");

INSERT INTO tb_auditoria_itens VALUES("88","","3","co_agenda","18");

INSERT INTO tb_auditoria_itens VALUES("89","","2","co_perfil","18");

INSERT INTO tb_auditoria_itens VALUES("90","2","","co_perfil","19");

INSERT INTO tb_auditoria_itens VALUES("91","Coordenador","Conselheiro(a)","no_perfil","19");

INSERT INTO tb_auditoria_itens VALUES("92","A","","st_status","19");

INSERT INTO tb_auditoria_itens VALUES("93","5","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("94","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("95","5","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("96","6","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("97","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("98","6","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("99","11","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("100","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("101","13","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("102","13","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("103","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("104","12","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("105","17","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("106","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("107","4","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("108","20","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("109","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("110","14","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("111","23","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("112","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("113","15","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("114","26","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("115","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("116","16","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("117","30","","co_perfil_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("118","2","","co_perfil","20");

INSERT INTO tb_auditoria_itens VALUES("119","17","","co_funcionalidade","20");

INSERT INTO tb_auditoria_itens VALUES("120","","2","co_perfil","21");

INSERT INTO tb_auditoria_itens VALUES("121","","18","co_funcionalidade","21");

INSERT INTO tb_auditoria_itens VALUES("122","","2","co_perfil","22");

INSERT INTO tb_auditoria_itens VALUES("123","","17","co_funcionalidade","22");

INSERT INTO tb_auditoria_itens VALUES("124","","2","co_perfil","23");

INSERT INTO tb_auditoria_itens VALUES("125","","16","co_funcionalidade","23");

INSERT INTO tb_auditoria_itens VALUES("126","","2","co_perfil","24");

INSERT INTO tb_auditoria_itens VALUES("127","","15","co_funcionalidade","24");

INSERT INTO tb_auditoria_itens VALUES("128","","2","co_perfil","25");

INSERT INTO tb_auditoria_itens VALUES("129","","14","co_funcionalidade","25");

INSERT INTO tb_auditoria_itens VALUES("130","","2","co_perfil","26");

INSERT INTO tb_auditoria_itens VALUES("131","","13","co_funcionalidade","26");

INSERT INTO tb_auditoria_itens VALUES("132","","2","co_perfil","27");

INSERT INTO tb_auditoria_itens VALUES("133","","12","co_funcionalidade","27");

INSERT INTO tb_auditoria_itens VALUES("134","","2","co_perfil","28");

INSERT INTO tb_auditoria_itens VALUES("135","","6","co_funcionalidade","28");

INSERT INTO tb_auditoria_itens VALUES("136","","2","co_perfil","29");

INSERT INTO tb_auditoria_itens VALUES("137","","5","co_funcionalidade","29");

INSERT INTO tb_auditoria_itens VALUES("138","","2","co_perfil","30");

INSERT INTO tb_auditoria_itens VALUES("139","","4","co_funcionalidade","30");

INSERT INTO tb_auditoria_itens VALUES("140","","Fundadores","no_perfil","31");

INSERT INTO tb_auditoria_itens VALUES("141","","6","co_perfil","32");

INSERT INTO tb_auditoria_itens VALUES("142","","18","co_funcionalidade","32");

INSERT INTO tb_auditoria_itens VALUES("143","","6","co_perfil","33");

INSERT INTO tb_auditoria_itens VALUES("144","","17","co_funcionalidade","33");

INSERT INTO tb_auditoria_itens VALUES("145","","6","co_perfil","34");

INSERT INTO tb_auditoria_itens VALUES("146","","16","co_funcionalidade","34");

INSERT INTO tb_auditoria_itens VALUES("147","","6","co_perfil","35");

INSERT INTO tb_auditoria_itens VALUES("148","","15","co_funcionalidade","35");

INSERT INTO tb_auditoria_itens VALUES("149","","6","co_perfil","36");

INSERT INTO tb_auditoria_itens VALUES("150","","14","co_funcionalidade","36");

INSERT INTO tb_auditoria_itens VALUES("151","","6","co_perfil","37");

INSERT INTO tb_auditoria_itens VALUES("152","","13","co_funcionalidade","37");

INSERT INTO tb_auditoria_itens VALUES("153","","6","co_perfil","38");

INSERT INTO tb_auditoria_itens VALUES("154","","12","co_funcionalidade","38");

INSERT INTO tb_auditoria_itens VALUES("155","","6","co_perfil","39");

INSERT INTO tb_auditoria_itens VALUES("156","","6","co_funcionalidade","39");

INSERT INTO tb_auditoria_itens VALUES("157","","6","co_perfil","40");

INSERT INTO tb_auditoria_itens VALUES("158","","5","co_funcionalidade","40");

INSERT INTO tb_auditoria_itens VALUES("159","","6","co_perfil","41");

INSERT INTO tb_auditoria_itens VALUES("160","","4","co_funcionalidade","41");

INSERT INTO tb_auditoria_itens VALUES("161","","6","co_perfil","42");

INSERT INTO tb_auditoria_itens VALUES("162","","3","co_funcionalidade","42");

INSERT INTO tb_auditoria_itens VALUES("163","","6","co_perfil","43");

INSERT INTO tb_auditoria_itens VALUES("164","","2","co_funcionalidade","43");

INSERT INTO tb_auditoria_itens VALUES("165","","Coordenadores","no_perfil","44");

INSERT INTO tb_auditoria_itens VALUES("166","","7","co_perfil","45");

INSERT INTO tb_auditoria_itens VALUES("167","","18","co_funcionalidade","45");

INSERT INTO tb_auditoria_itens VALUES("168","","7","co_perfil","46");

INSERT INTO tb_auditoria_itens VALUES("169","","17","co_funcionalidade","46");

INSERT INTO tb_auditoria_itens VALUES("170","","7","co_perfil","47");

INSERT INTO tb_auditoria_itens VALUES("171","","16","co_funcionalidade","47");

INSERT INTO tb_auditoria_itens VALUES("172","","7","co_perfil","48");

INSERT INTO tb_auditoria_itens VALUES("173","","12","co_funcionalidade","48");

INSERT INTO tb_auditoria_itens VALUES("174","","7","co_perfil","49");

INSERT INTO tb_auditoria_itens VALUES("175","","6","co_funcionalidade","49");

INSERT INTO tb_auditoria_itens VALUES("176","","7","co_perfil","50");

INSERT INTO tb_auditoria_itens VALUES("177","","5","co_funcionalidade","50");

INSERT INTO tb_auditoria_itens VALUES("178","","Coord. Administrativo","no_perfil","51");

INSERT INTO tb_auditoria_itens VALUES("179","","8","co_perfil","52");

INSERT INTO tb_auditoria_itens VALUES("180","","18","co_funcionalidade","52");

INSERT INTO tb_auditoria_itens VALUES("181","","8","co_perfil","53");

INSERT INTO tb_auditoria_itens VALUES("182","","6","co_funcionalidade","53");

INSERT INTO tb_auditoria_itens VALUES("183","","Coord. 1","no_perfil","54");

INSERT INTO tb_auditoria_itens VALUES("184","","9","co_perfil","55");

INSERT INTO tb_auditoria_itens VALUES("185","","18","co_funcionalidade","55");

INSERT INTO tb_auditoria_itens VALUES("186","","9","co_perfil","56");

INSERT INTO tb_auditoria_itens VALUES("187","","6","co_funcionalidade","56");

INSERT INTO tb_auditoria_itens VALUES("188","","Coord. 2","no_perfil","57");

INSERT INTO tb_auditoria_itens VALUES("189","","10","co_perfil","58");

INSERT INTO tb_auditoria_itens VALUES("190","","18","co_funcionalidade","58");

INSERT INTO tb_auditoria_itens VALUES("191","","10","co_perfil","59");

INSERT INTO tb_auditoria_itens VALUES("192","","6","co_funcionalidade","59");

INSERT INTO tb_auditoria_itens VALUES("193","","Lider Música","no_perfil","60");

INSERT INTO tb_auditoria_itens VALUES("194","","11","co_perfil","61");

INSERT INTO tb_auditoria_itens VALUES("195","","18","co_funcionalidade","61");

INSERT INTO tb_auditoria_itens VALUES("196","","11","co_perfil","62");

INSERT INTO tb_auditoria_itens VALUES("197","","6","co_funcionalidade","62");

INSERT INTO tb_auditoria_itens VALUES("198","","Equipe Música","no_perfil","63");

INSERT INTO tb_auditoria_itens VALUES("199","","12","co_perfil","64");

INSERT INTO tb_auditoria_itens VALUES("200","","18","co_funcionalidade","64");

INSERT INTO tb_auditoria_itens VALUES("201","","12","co_perfil","65");

INSERT INTO tb_auditoria_itens VALUES("202","","6","co_funcionalidade","65");

INSERT INTO tb_auditoria_itens VALUES("203","","Líder Ornamentação","no_perfil","66");

INSERT INTO tb_auditoria_itens VALUES("204","","13","co_perfil","67");

INSERT INTO tb_auditoria_itens VALUES("205","","18","co_funcionalidade","67");

INSERT INTO tb_auditoria_itens VALUES("206","","13","co_perfil","68");

INSERT INTO tb_auditoria_itens VALUES("207","","6","co_funcionalidade","68");

INSERT INTO tb_auditoria_itens VALUES("208","","Equipe Ornamentação","no_perfil","69");

INSERT INTO tb_auditoria_itens VALUES("209","","14","co_perfil","70");

INSERT INTO tb_auditoria_itens VALUES("210","","18","co_funcionalidade","70");

INSERT INTO tb_auditoria_itens VALUES("211","","14","co_perfil","71");

INSERT INTO tb_auditoria_itens VALUES("212","","6","co_funcionalidade","71");

INSERT INTO tb_auditoria_itens VALUES("213","","Líder Animação","no_perfil","72");

INSERT INTO tb_auditoria_itens VALUES("214","","15","co_perfil","73");

INSERT INTO tb_auditoria_itens VALUES("215","","18","co_funcionalidade","73");

INSERT INTO tb_auditoria_itens VALUES("216","","15","co_perfil","74");

INSERT INTO tb_auditoria_itens VALUES("217","","6","co_funcionalidade","74");

INSERT INTO tb_auditoria_itens VALUES("218","","Equipe Animação","no_perfil","75");

INSERT INTO tb_auditoria_itens VALUES("219","","16","co_perfil","76");

INSERT INTO tb_auditoria_itens VALUES("220","","18","co_funcionalidade","76");

INSERT INTO tb_auditoria_itens VALUES("221","","16","co_perfil","77");

INSERT INTO tb_auditoria_itens VALUES("222","","6","co_funcionalidade","77");

INSERT INTO tb_auditoria_itens VALUES("223","","Líder Intercessão","no_perfil","78");

INSERT INTO tb_auditoria_itens VALUES("224","","17","co_perfil","79");

INSERT INTO tb_auditoria_itens VALUES("225","","18","co_funcionalidade","79");

INSERT INTO tb_auditoria_itens VALUES("226","","17","co_perfil","80");

INSERT INTO tb_auditoria_itens VALUES("227","","6","co_funcionalidade","80");

INSERT INTO tb_auditoria_itens VALUES("228","","Equipe Intercessão","no_perfil","81");

INSERT INTO tb_auditoria_itens VALUES("229","","18","co_perfil","82");

INSERT INTO tb_auditoria_itens VALUES("230","","18","co_funcionalidade","82");

INSERT INTO tb_auditoria_itens VALUES("231","","18","co_perfil","83");

INSERT INTO tb_auditoria_itens VALUES("232","","6","co_funcionalidade","83");

INSERT INTO tb_auditoria_itens VALUES("233","","Líder Teatro","no_perfil","84");

INSERT INTO tb_auditoria_itens VALUES("234","","19","co_perfil","85");

INSERT INTO tb_auditoria_itens VALUES("235","","18","co_funcionalidade","85");

INSERT INTO tb_auditoria_itens VALUES("236","","19","co_perfil","86");

INSERT INTO tb_auditoria_itens VALUES("237","","6","co_funcionalidade","86");

INSERT INTO tb_auditoria_itens VALUES("238","","Equipe Teatro","no_perfil","87");

INSERT INTO tb_auditoria_itens VALUES("239","","20","co_perfil","88");

INSERT INTO tb_auditoria_itens VALUES("240","","18","co_funcionalidade","88");

INSERT INTO tb_auditoria_itens VALUES("241","","20","co_perfil","89");

INSERT INTO tb_auditoria_itens VALUES("242","","6","co_funcionalidade","89");

INSERT INTO tb_auditoria_itens VALUES("243","","Líder Comunicação","no_perfil","90");

INSERT INTO tb_auditoria_itens VALUES("244","","21","co_perfil","91");

INSERT INTO tb_auditoria_itens VALUES("245","","18","co_funcionalidade","91");

INSERT INTO tb_auditoria_itens VALUES("246","","21","co_perfil","92");

INSERT INTO tb_auditoria_itens VALUES("247","","6","co_funcionalidade","92");

INSERT INTO tb_auditoria_itens VALUES("248","","Equipe Comunicação","no_perfil","93");

INSERT INTO tb_auditoria_itens VALUES("249","","22","co_perfil","94");

INSERT INTO tb_auditoria_itens VALUES("250","","18","co_funcionalidade","94");

INSERT INTO tb_auditoria_itens VALUES("251","","22","co_perfil","95");

INSERT INTO tb_auditoria_itens VALUES("252","","6","co_funcionalidade","95");

INSERT INTO tb_auditoria_itens VALUES("253","","Novato","no_perfil","96");

INSERT INTO tb_auditoria_itens VALUES("254","","23","co_perfil","97");

INSERT INTO tb_auditoria_itens VALUES("255","","18","co_funcionalidade","97");

INSERT INTO tb_auditoria_itens VALUES("256","","23","co_perfil","98");

INSERT INTO tb_auditoria_itens VALUES("257","","6","co_funcionalidade","98");

INSERT INTO tb_auditoria_itens VALUES("258","","Elo 1","no_perfil","99");

INSERT INTO tb_auditoria_itens VALUES("259","","24","co_perfil","100");

INSERT INTO tb_auditoria_itens VALUES("260","","18","co_funcionalidade","100");

INSERT INTO tb_auditoria_itens VALUES("261","","24","co_perfil","101");

INSERT INTO tb_auditoria_itens VALUES("262","","6","co_funcionalidade","101");

INSERT INTO tb_auditoria_itens VALUES("263","","Elo 2","no_perfil","102");

INSERT INTO tb_auditoria_itens VALUES("264","","25","co_perfil","103");

INSERT INTO tb_auditoria_itens VALUES("265","","18","co_funcionalidade","103");

INSERT INTO tb_auditoria_itens VALUES("266","","25","co_perfil","104");

INSERT INTO tb_auditoria_itens VALUES("267","","6","co_funcionalidade","104");

INSERT INTO tb_auditoria_itens VALUES("268","","Elo 3","no_perfil","105");

INSERT INTO tb_auditoria_itens VALUES("269","","26","co_perfil","106");

INSERT INTO tb_auditoria_itens VALUES("270","","18","co_funcionalidade","106");

INSERT INTO tb_auditoria_itens VALUES("271","","26","co_perfil","107");

INSERT INTO tb_auditoria_itens VALUES("272","","6","co_funcionalidade","107");

INSERT INTO tb_auditoria_itens VALUES("273","","Elo 4","no_perfil","108");

INSERT INTO tb_auditoria_itens VALUES("274","","27","co_perfil","109");

INSERT INTO tb_auditoria_itens VALUES("275","","18","co_funcionalidade","109");

INSERT INTO tb_auditoria_itens VALUES("276","","27","co_perfil","110");

INSERT INTO tb_auditoria_itens VALUES("277","","6","co_funcionalidade","110");

INSERT INTO tb_auditoria_itens VALUES("278","5","","co_perfil","111");

INSERT INTO tb_auditoria_itens VALUES("279","Líder","Líderes","no_perfil","111");

INSERT INTO tb_auditoria_itens VALUES("280","I","","st_status","111");

INSERT INTO tb_auditoria_itens VALUES("281","15","","co_perfil_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("282","5","","co_perfil","112");

INSERT INTO tb_auditoria_itens VALUES("283","12","","co_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("284","28","","co_perfil_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("285","5","","co_perfil","112");

INSERT INTO tb_auditoria_itens VALUES("286","16","","co_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("287","32","","co_perfil_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("288","5","","co_perfil","112");

INSERT INTO tb_auditoria_itens VALUES("289","17","","co_funcionalidade","112");

INSERT INTO tb_auditoria_itens VALUES("290","","5","co_perfil","113");

INSERT INTO tb_auditoria_itens VALUES("291","","18","co_funcionalidade","113");

INSERT INTO tb_auditoria_itens VALUES("292","","5","co_perfil","114");

INSERT INTO tb_auditoria_itens VALUES("293","","17","co_funcionalidade","114");

INSERT INTO tb_auditoria_itens VALUES("294","","5","co_perfil","115");

INSERT INTO tb_auditoria_itens VALUES("295","","16","co_funcionalidade","115");

INSERT INTO tb_auditoria_itens VALUES("296","","5","co_perfil","116");

INSERT INTO tb_auditoria_itens VALUES("297","","12","co_funcionalidade","116");

INSERT INTO tb_auditoria_itens VALUES("298","3","","co_perfil","117");

INSERT INTO tb_auditoria_itens VALUES("299","Membro","Membros","no_perfil","117");

INSERT INTO tb_auditoria_itens VALUES("300","A","","st_status","117");

INSERT INTO tb_auditoria_itens VALUES("301","4","","co_perfil_funcionalidade","118");

INSERT INTO tb_auditoria_itens VALUES("302","3","","co_perfil","118");

INSERT INTO tb_auditoria_itens VALUES("303","6","","co_funcionalidade","118");

INSERT INTO tb_auditoria_itens VALUES("304","33","","co_perfil_funcionalidade","118");

INSERT INTO tb_auditoria_itens VALUES("305","3","","co_perfil","118");

INSERT INTO tb_auditoria_itens VALUES("306","18","","co_funcionalidade","118");

INSERT INTO tb_auditoria_itens VALUES("307","","3","co_perfil","119");

INSERT INTO tb_auditoria_itens VALUES("308","","18","co_funcionalidade","119");

INSERT INTO tb_auditoria_itens VALUES("309","","3","co_perfil","120");

INSERT INTO tb_auditoria_itens VALUES("310","","6","co_funcionalidade","120");

INSERT INTO tb_auditoria_itens VALUES("311","2","","co_perfil","121");

INSERT INTO tb_auditoria_itens VALUES("312","Conselheiro(a)","Conselheiros","no_perfil","121");

INSERT INTO tb_auditoria_itens VALUES("313","A","","st_status","121");

INSERT INTO tb_auditoria_itens VALUES("314","34","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("315","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("316","18","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("317","35","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("318","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("319","17","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("320","36","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("321","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("322","16","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("323","37","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("324","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("325","15","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("326","38","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("327","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("328","14","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("329","39","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("330","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("331","13","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("332","40","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("333","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("334","12","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("335","41","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("336","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("337","6","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("338","42","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("339","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("340","5","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("341","43","","co_perfil_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("342","2","","co_perfil","122");

INSERT INTO tb_auditoria_itens VALUES("343","4","","co_funcionalidade","122");

INSERT INTO tb_auditoria_itens VALUES("344","","2","co_perfil","123");

INSERT INTO tb_auditoria_itens VALUES("345","","18","co_funcionalidade","123");

INSERT INTO tb_auditoria_itens VALUES("346","","2","co_perfil","124");

INSERT INTO tb_auditoria_itens VALUES("347","","17","co_funcionalidade","124");

INSERT INTO tb_auditoria_itens VALUES("348","","2","co_perfil","125");

INSERT INTO tb_auditoria_itens VALUES("349","","16","co_funcionalidade","125");

INSERT INTO tb_auditoria_itens VALUES("350","","2","co_perfil","126");

INSERT INTO tb_auditoria_itens VALUES("351","","15","co_funcionalidade","126");

INSERT INTO tb_auditoria_itens VALUES("352","","2","co_perfil","127");

INSERT INTO tb_auditoria_itens VALUES("353","","14","co_funcionalidade","127");

INSERT INTO tb_auditoria_itens VALUES("354","","2","co_perfil","128");

INSERT INTO tb_auditoria_itens VALUES("355","","13","co_funcionalidade","128");

INSERT INTO tb_auditoria_itens VALUES("356","","2","co_perfil","129");

INSERT INTO tb_auditoria_itens VALUES("357","","12","co_funcionalidade","129");

INSERT INTO tb_auditoria_itens VALUES("358","","2","co_perfil","130");

INSERT INTO tb_auditoria_itens VALUES("359","","6","co_funcionalidade","130");

INSERT INTO tb_auditoria_itens VALUES("360","","2","co_perfil","131");

INSERT INTO tb_auditoria_itens VALUES("361","","5","co_funcionalidade","131");

INSERT INTO tb_auditoria_itens VALUES("362","","2","co_perfil","132");

INSERT INTO tb_auditoria_itens VALUES("363","","4","co_funcionalidade","132");

INSERT INTO tb_auditoria_itens VALUES("364","18","","co_funcionalidade","133");

INSERT INTO tb_auditoria_itens VALUES("365","Calendário","Calendário","no_funcionalidade","133");

INSERT INTO tb_auditoria_itens VALUES("366","I","","st_status","133");

INSERT INTO tb_auditoria_itens VALUES("367","44","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("368","6","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("369","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("370","56","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("371","7","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("372","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("373","62","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("374","8","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("375","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("376","64","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("377","9","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("378","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("379","66","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("380","10","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("381","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("382","68","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("383","11","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("384","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("385","70","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("386","12","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("387","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("388","72","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("389","13","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("390","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("391","74","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("392","14","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("393","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("394","76","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("395","15","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("396","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("397","78","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("398","16","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("399","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("400","80","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("401","17","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("402","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("403","82","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("404","18","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("405","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("406","84","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("407","19","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("408","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("409","86","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("410","20","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("411","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("412","88","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("413","21","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("414","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("415","90","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("416","22","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("417","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("418","92","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("419","23","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("420","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("421","94","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("422","24","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("423","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("424","96","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("425","25","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("426","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("427","98","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("428","26","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("429","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("430","100","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("431","27","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("432","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("433","102","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("434","5","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("435","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("436","106","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("437","3","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("438","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("439","108","","co_perfil_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("440","2","","co_perfil","134");

INSERT INTO tb_auditoria_itens VALUES("441","18","","co_funcionalidade","134");

INSERT INTO tb_auditoria_itens VALUES("442","","18","co_funcionalidade","135");

INSERT INTO tb_auditoria_itens VALUES("443","","3","co_perfil","135");

INSERT INTO tb_auditoria_itens VALUES("444","6","","co_funcionalidade","136");

INSERT INTO tb_auditoria_itens VALUES("445","Meu Usuario","Meu Usuario","no_funcionalidade","136");

INSERT INTO tb_auditoria_itens VALUES("446","A","","st_status","136");

INSERT INTO tb_auditoria_itens VALUES("447","8","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("448","4","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("449","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("450","51","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("451","6","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("452","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("453","60","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("454","7","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("455","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("456","63","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("457","8","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("458","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("459","65","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("460","9","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("461","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("462","67","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("463","10","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("464","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("465","69","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("466","11","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("467","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("468","71","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("469","12","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("470","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("471","73","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("472","13","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("473","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("474","75","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("475","14","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("476","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("477","77","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("478","15","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("479","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("480","79","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("481","16","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("482","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("483","81","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("484","17","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("485","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("486","83","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("487","18","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("488","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("489","85","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("490","19","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("491","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("492","87","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("493","20","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("494","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("495","89","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("496","21","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("497","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("498","91","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("499","22","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("500","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("501","93","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("502","23","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("503","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("504","95","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("505","24","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("506","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("507","97","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("508","25","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("509","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("510","99","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("511","26","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("512","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("513","101","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("514","27","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("515","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("516","107","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("517","3","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("518","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("519","115","","co_perfil_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("520","2","","co_perfil","137");

INSERT INTO tb_auditoria_itens VALUES("521","6","","co_funcionalidade","137");

INSERT INTO tb_auditoria_itens VALUES("522","","6","co_funcionalidade","138");

INSERT INTO tb_auditoria_itens VALUES("523","","3","co_perfil","138");

INSERT INTO tb_auditoria_itens VALUES("524","74","","co_contato","139");

INSERT INTO tb_auditoria_itens VALUES("525","61993259985","61993259985","nu_tel1","139");

INSERT INTO tb_auditoria_itens VALUES("526","","","nu_tel2","139");

INSERT INTO tb_auditoria_itens VALUES("527","","","nu_tel3","139");

INSERT INTO tb_auditoria_itens VALUES("528","Linnekerlima@hotmail.com","Linnekerlima@hotmail.com","ds_email","139");

INSERT INTO tb_auditoria_itens VALUES("529","72","","co_endereco","140");

INSERT INTO tb_auditoria_itens VALUES("530","Qr 405 13 13","Qr 405 13 13","ds_endereco","140");

INSERT INTO tb_auditoria_itens VALUES("531","13","13","ds_complemento","140");

INSERT INTO tb_auditoria_itens VALUES("532","Samambaia norte","Samambaia norte","ds_bairro","140");

INSERT INTO tb_auditoria_itens VALUES("533","72319213","72319213","nu_cep","140");

INSERT INTO tb_auditoria_itens VALUES("534","Brasília ","Brasília ","no_cidade","140");

INSERT INTO tb_auditoria_itens VALUES("535","DF","DF","sg_uf","140");

INSERT INTO tb_auditoria_itens VALUES("536","72","","co_pessoa","141");

INSERT INTO tb_auditoria_itens VALUES("537","04804195157","04804195157","nu_cpf","141");

INSERT INTO tb_auditoria_itens VALUES("538","LINNEKER LIMA ROBERTO GOMES","LINNEKER LIMA ROBERTO GOMES","no_pessoa","141");

INSERT INTO tb_auditoria_itens VALUES("539","2812768","2812768","nu_rg","141");

INSERT INTO tb_auditoria_itens VALUES("540","2017-12-27 22:01:56","2018-03-23 16:55:33","dt_cadastro","141");

INSERT INTO tb_auditoria_itens VALUES("541","1995-10-04","1995-10-04","dt_nascimento","141");

INSERT INTO tb_auditoria_itens VALUES("542","M","M","st_sexo","141");

INSERT INTO tb_auditoria_itens VALUES("543","74","","co_contato","141");

INSERT INTO tb_auditoria_itens VALUES("544","72","","co_endereco","141");

INSERT INTO tb_auditoria_itens VALUES("545","8","","co_usuario","142");

INSERT INTO tb_auditoria_itens VALUES("546","Maria10","Maria10","ds_senha","142");

INSERT INTO tb_auditoria_itens VALUES("547","VFdGeWFXRXhNQT09","VFdGeWFXRXhNQT09","ds_code","142");

INSERT INTO tb_auditoria_itens VALUES("548","A","A","st_status","142");

INSERT INTO tb_auditoria_itens VALUES("549","2017-12-27 00:00:00","","dt_cadastro","142");

INSERT INTO tb_auditoria_itens VALUES("550","74","","co_imagem","142");

INSERT INTO tb_auditoria_itens VALUES("551","72","","co_pessoa","142");

INSERT INTO tb_auditoria_itens VALUES("552","27","","co_usuario_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("553","8","","co_usuario","143");

INSERT INTO tb_auditoria_itens VALUES("554","3","","co_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("555","28","","co_usuario_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("556","8","","co_usuario","143");

INSERT INTO tb_auditoria_itens VALUES("557","5","","co_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("558","29","","co_usuario_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("559","8","","co_usuario","143");

INSERT INTO tb_auditoria_itens VALUES("560","3","","co_perfil","143");

INSERT INTO tb_auditoria_itens VALUES("561","","8","co_usuario","144");

INSERT INTO tb_auditoria_itens VALUES("562","","8","co_perfil","144");

INSERT INTO tb_auditoria_itens VALUES("563","","8","co_usuario","145");

INSERT INTO tb_auditoria_itens VALUES("564","","5","co_perfil","145");

INSERT INTO tb_auditoria_itens VALUES("565","","8","co_usuario","146");

INSERT INTO tb_auditoria_itens VALUES("566","","3","co_perfil","146");

INSERT INTO tb_auditoria_itens VALUES("567","","8","co_usuario","147");

INSERT INTO tb_auditoria_itens VALUES("568","","2","co_perfil","147");

INSERT INTO tb_auditoria_itens VALUES("569","","8","co_usuario","148");

INSERT INTO tb_auditoria_itens VALUES("570","","3","co_perfil","148");

INSERT INTO tb_auditoria_itens VALUES("571","36","","co_contato","149");

INSERT INTO tb_auditoria_itens VALUES("572","61991984370","61991984370","nu_tel1","149");

INSERT INTO tb_auditoria_itens VALUES("573","","___________","nu_tel2","149");

INSERT INTO tb_auditoria_itens VALUES("574","","","nu_tel3","149");

INSERT INTO tb_auditoria_itens VALUES("575","lukka_bessa@hotmail.com","lukka_bessa@hotmail.com","ds_email","149");

INSERT INTO tb_auditoria_itens VALUES("576","36","","co_endereco","150");

INSERT INTO tb_auditoria_itens VALUES("577","QR 405 Conjunto 21 Casa 26","QR 405 Conjunto 21 Casa 26","ds_endereco","150");

INSERT INTO tb_auditoria_itens VALUES("578","","","ds_complemento","150");

INSERT INTO tb_auditoria_itens VALUES("579","Samambaia Norte","Samambaia Norte","ds_bairro","150");

INSERT INTO tb_auditoria_itens VALUES("580","72319221","72319221","nu_cep","150");

INSERT INTO tb_auditoria_itens VALUES("581","Brasília","Brasília","no_cidade","150");

INSERT INTO tb_auditoria_itens VALUES("582","DF","DF","sg_uf","150");

INSERT INTO tb_auditoria_itens VALUES("583","36","","co_pessoa","151");

INSERT INTO tb_auditoria_itens VALUES("584","03874430103","03874430103","nu_cpf","151");

INSERT INTO tb_auditoria_itens VALUES("585","LUANA RIBEIRO BESSA","LUANA RIBEIRO BESSA","no_pessoa","151");

INSERT INTO tb_auditoria_itens VALUES("586","2944508","2944508","nu_rg","151");

INSERT INTO tb_auditoria_itens VALUES("587","2017-12-11 10:20:32","2018-03-23 16:57:32","dt_cadastro","151");

INSERT INTO tb_auditoria_itens VALUES("588","1993-08-17","1993-08-17","dt_nascimento","151");

INSERT INTO tb_auditoria_itens VALUES("589","F","F","st_sexo","151");

INSERT INTO tb_auditoria_itens VALUES("590","36","","co_contato","151");

INSERT INTO tb_auditoria_itens VALUES("591","36","","co_endereco","151");

INSERT INTO tb_auditoria_itens VALUES("592","4","","co_usuario","152");

INSERT INTO tb_auditoria_itens VALUES("593","santosdecalcajeansjpII123","santosdecalcajeansjpII123","ds_senha","152");

INSERT INTO tb_auditoria_itens VALUES("594","YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09","YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09","ds_code","152");

INSERT INTO tb_auditoria_itens VALUES("595","A","A","st_status","152");

INSERT INTO tb_auditoria_itens VALUES("596","2017-12-10 00:00:00","","dt_cadastro","152");

INSERT INTO tb_auditoria_itens VALUES("597","36","","co_imagem","152");

INSERT INTO tb_auditoria_itens VALUES("598","36","","co_pessoa","152");

INSERT INTO tb_auditoria_itens VALUES("599","11","","co_usuario_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("600","4","","co_usuario","153");

INSERT INTO tb_auditoria_itens VALUES("601","2","","co_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("602","12","","co_usuario_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("603","4","","co_usuario","153");

INSERT INTO tb_auditoria_itens VALUES("604","3","","co_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("605","13","","co_usuario_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("606","4","","co_usuario","153");

INSERT INTO tb_auditoria_itens VALUES("607","3","","co_perfil","153");

INSERT INTO tb_auditoria_itens VALUES("608","","4","co_usuario","154");

INSERT INTO tb_auditoria_itens VALUES("609","","6","co_perfil","154");

INSERT INTO tb_auditoria_itens VALUES("610","","4","co_usuario","155");

INSERT INTO tb_auditoria_itens VALUES("611","","3","co_perfil","155");

INSERT INTO tb_auditoria_itens VALUES("612","","4","co_usuario","156");

INSERT INTO tb_auditoria_itens VALUES("613","","2","co_perfil","156");

INSERT INTO tb_auditoria_itens VALUES("614","","4","co_usuario","157");

INSERT INTO tb_auditoria_itens VALUES("615","","3","co_perfil","157");

INSERT INTO tb_auditoria_itens VALUES("616","62","","co_contato","158");

INSERT INTO tb_auditoria_itens VALUES("617","6191066240","6191066240","nu_tel1","158");

INSERT INTO tb_auditoria_itens VALUES("618","6191066240","6191066240_","nu_tel2","158");

INSERT INTO tb_auditoria_itens VALUES("619","","","nu_tel3","158");

INSERT INTO tb_auditoria_itens VALUES("620","lililasp@gmail.com","lililasp@gmail.com","ds_email","158");

INSERT INTO tb_auditoria_itens VALUES("621","61","","co_endereco","159");

INSERT INTO tb_auditoria_itens VALUES("622","QR 403 CONJUNTO 10 CASA 2I","QR 403 CONJUNTO 10 CASA 2I","ds_endereco","159");

INSERT INTO tb_auditoria_itens VALUES("623","28","28","ds_complemento","159");

INSERT INTO tb_auditoria_itens VALUES("624","Samambaia","Samambaia","ds_bairro","159");

INSERT INTO tb_auditoria_itens VALUES("625","72319111","72319111","nu_cep","159");

INSERT INTO tb_auditoria_itens VALUES("626","Brasília","Brasília","no_cidade","159");

INSERT INTO tb_auditoria_itens VALUES("627","DF","DF","sg_uf","159");

INSERT INTO tb_auditoria_itens VALUES("628","61","","co_pessoa","160");

INSERT INTO tb_auditoria_itens VALUES("629","02351127129","02351127129","nu_cpf","160");

INSERT INTO tb_auditoria_itens VALUES("630","LILIAN MACHADO CARVALHO BESSA","LILIAN MACHADO CARVALHO BESSA","no_pessoa","160");

INSERT INTO tb_auditoria_itens VALUES("631","2529020","2529020","nu_rg","160");

INSERT INTO tb_auditoria_itens VALUES("632","2017-12-21 08:30:32","2018-03-23 16:59:29","dt_cadastro","160");

INSERT INTO tb_auditoria_itens VALUES("633","1988-10-31","1988-10-31","dt_nascimento","160");

INSERT INTO tb_auditoria_itens VALUES("634","F","F","st_sexo","160");

INSERT INTO tb_auditoria_itens VALUES("635","62","","co_contato","160");

INSERT INTO tb_auditoria_itens VALUES("636","61","","co_endereco","160");

INSERT INTO tb_auditoria_itens VALUES("637","7","","co_usuario","161");

INSERT INTO tb_auditoria_itens VALUES("638","311088*lili**","311088*lili**","ds_senha","161");

INSERT INTO tb_auditoria_itens VALUES("639","TXpFeE1EZzRLbXhwYkdrcUtnPT0=","TXpFeE1EZzRLbXhwYkdrcUtnPT0=","ds_code","161");

INSERT INTO tb_auditoria_itens VALUES("640","A","A","st_status","161");

INSERT INTO tb_auditoria_itens VALUES("641","2017-12-20 00:00:00","","dt_cadastro","161");

INSERT INTO tb_auditoria_itens VALUES("642","62","","co_imagem","161");

INSERT INTO tb_auditoria_itens VALUES("643","61","","co_pessoa","161");

INSERT INTO tb_auditoria_itens VALUES("644","23","","co_usuario_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("645","7","","co_usuario","162");

INSERT INTO tb_auditoria_itens VALUES("646","2","","co_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("647","24","","co_usuario_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("648","7","","co_usuario","162");

INSERT INTO tb_auditoria_itens VALUES("649","3","","co_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("650","25","","co_usuario_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("651","7","","co_usuario","162");

INSERT INTO tb_auditoria_itens VALUES("652","3","","co_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("653","","7","co_usuario","163");

INSERT INTO tb_auditoria_itens VALUES("654","","6","co_perfil","163");

INSERT INTO tb_auditoria_itens VALUES("655","","7","co_usuario","164");

INSERT INTO tb_auditoria_itens VALUES("656","","3","co_perfil","164");

INSERT INTO tb_auditoria_itens VALUES("657","","7","co_usuario","165");

INSERT INTO tb_auditoria_itens VALUES("658","","2","co_perfil","165");

INSERT INTO tb_auditoria_itens VALUES("659","","7","co_usuario","166");

INSERT INTO tb_auditoria_itens VALUES("660","","3","co_perfil","166");

INSERT INTO tb_auditoria_itens VALUES("661","37","","co_imagem","167");

INSERT INTO tb_auditoria_itens VALUES("662","leticia-machado-carvalho-bessa-5a2ed7ed5b120.jpg","leticia-machado-carvalho-bessa-5ab55d4314234.jpg","ds_caminho","167");

INSERT INTO tb_auditoria_itens VALUES("663","37","","co_contato","168");

INSERT INTO tb_auditoria_itens VALUES("664","61991058681","61991058681","nu_tel1","168");

INSERT INTO tb_auditoria_itens VALUES("665","","___________","nu_tel2","168");

INSERT INTO tb_auditoria_itens VALUES("666","","","nu_tel3","168");

INSERT INTO tb_auditoria_itens VALUES("667","lele.403@hotmail.com","lele.403@hotmail.com","ds_email","168");

INSERT INTO tb_auditoria_itens VALUES("668","37","","co_endereco","169");

INSERT INTO tb_auditoria_itens VALUES("669","QR 403 conj 10 casa 28","QR 403 conj 10 casa 28","ds_endereco","169");

INSERT INTO tb_auditoria_itens VALUES("670","","","ds_complemento","169");

INSERT INTO tb_auditoria_itens VALUES("671","Samambaia Norte","Samambaia Norte","ds_bairro","169");

INSERT INTO tb_auditoria_itens VALUES("672","72319111","72319111","nu_cep","169");

INSERT INTO tb_auditoria_itens VALUES("673","Brasília","Brasília","no_cidade","169");

INSERT INTO tb_auditoria_itens VALUES("674","DF","DF","sg_uf","169");

INSERT INTO tb_auditoria_itens VALUES("675","37","","co_pessoa","170");

INSERT INTO tb_auditoria_itens VALUES("676","03904086111","03904086111","nu_cpf","170");

INSERT INTO tb_auditoria_itens VALUES("677","LETíCIA MACHADO CARVALHO BESSA","LETíCIA MACHADO CARVALHO BESSA","no_pessoa","170");

INSERT INTO tb_auditoria_itens VALUES("678","2807680","2807680","nu_rg","170");

INSERT INTO tb_auditoria_itens VALUES("679","2017-12-11 19:34:49","2018-03-23 17:02:07","dt_cadastro","170");

INSERT INTO tb_auditoria_itens VALUES("680","1992-08-27","1992-08-27","dt_nascimento","170");

INSERT INTO tb_auditoria_itens VALUES("681","F","F","st_sexo","170");

INSERT INTO tb_auditoria_itens VALUES("682","37","","co_contato","170");

INSERT INTO tb_auditoria_itens VALUES("683","37","","co_endereco","170");

INSERT INTO tb_auditoria_itens VALUES("684","5","","co_usuario","171");

INSERT INTO tb_auditoria_itens VALUES("685","pe.pio2309","pe.pio2309","ds_senha","171");

INSERT INTO tb_auditoria_itens VALUES("686","Y0dVdWNHbHZNak13T1E9PQ==","Y0dVdWNHbHZNak13T1E9PQ==","ds_code","171");

INSERT INTO tb_auditoria_itens VALUES("687","A","A","st_status","171");

INSERT INTO tb_auditoria_itens VALUES("688","2017-12-11 00:00:00","","dt_cadastro","171");

INSERT INTO tb_auditoria_itens VALUES("689","37","","co_imagem","171");

INSERT INTO tb_auditoria_itens VALUES("690","37","","co_pessoa","171");

INSERT INTO tb_auditoria_itens VALUES("691","19","","co_usuario_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("692","5","","co_usuario","172");

INSERT INTO tb_auditoria_itens VALUES("693","2","","co_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("694","20","","co_usuario_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("695","5","","co_usuario","172");

INSERT INTO tb_auditoria_itens VALUES("696","3","","co_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("697","21","","co_usuario_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("698","5","","co_usuario","172");

INSERT INTO tb_auditoria_itens VALUES("699","3","","co_perfil","172");

INSERT INTO tb_auditoria_itens VALUES("700","","5","co_usuario","173");

INSERT INTO tb_auditoria_itens VALUES("701","","6","co_perfil","173");

INSERT INTO tb_auditoria_itens VALUES("702","","5","co_usuario","174");

INSERT INTO tb_auditoria_itens VALUES("703","","3","co_perfil","174");

INSERT INTO tb_auditoria_itens VALUES("704","","5","co_usuario","175");

INSERT INTO tb_auditoria_itens VALUES("705","","2","co_perfil","175");

INSERT INTO tb_auditoria_itens VALUES("706","","5","co_usuario","176");

INSERT INTO tb_auditoria_itens VALUES("707","","3","co_perfil","176");

INSERT INTO tb_auditoria_itens VALUES("708","1","","co_contato","177");

INSERT INTO tb_auditoria_itens VALUES("709","61993274991","61993274991","nu_tel1","177");

INSERT INTO tb_auditoria_itens VALUES("710","6130826060","6130826060","nu_tel2","177");

INSERT INTO tb_auditoria_itens VALUES("711","","","nu_tel3","177");

INSERT INTO tb_auditoria_itens VALUES("712","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","177");

INSERT INTO tb_auditoria_itens VALUES("713","1","","co_endereco","178");

INSERT INTO tb_auditoria_itens VALUES("714","qr 403 conjunto 10 casa 28","qr 403 conjunto 10 casa 28","ds_endereco","178");

INSERT INTO tb_auditoria_itens VALUES("715","","","ds_complemento","178");

INSERT INTO tb_auditoria_itens VALUES("716","Samambaia Norte","Samambaia Norte","ds_bairro","178");

INSERT INTO tb_auditoria_itens VALUES("717","72319111","72319111","nu_cep","178");

INSERT INTO tb_auditoria_itens VALUES("718","Brasília","Brasília","no_cidade","178");

INSERT INTO tb_auditoria_itens VALUES("719","DF","DF","sg_uf","178");

INSERT INTO tb_auditoria_itens VALUES("720","1","","co_pessoa","179");

INSERT INTO tb_auditoria_itens VALUES("721","72681438187","72681438187","nu_cpf","179");

INSERT INTO tb_auditoria_itens VALUES("722","LEONARDO MACHADO CARVALHO BESSA","LEONARDO MACHADO CARVALHO BESSA","no_pessoa","179");

INSERT INTO tb_auditoria_itens VALUES("723","2077811","2077811","nu_rg","179");

INSERT INTO tb_auditoria_itens VALUES("724","2016-10-31 00:00:00","2018-03-23 17:04:23","dt_cadastro","179");

INSERT INTO tb_auditoria_itens VALUES("725","1984-07-06","1984-07-06","dt_nascimento","179");

INSERT INTO tb_auditoria_itens VALUES("726","M","M","st_sexo","179");

INSERT INTO tb_auditoria_itens VALUES("727","1","","co_contato","179");

INSERT INTO tb_auditoria_itens VALUES("728","1","","co_endereco","179");

INSERT INTO tb_auditoria_itens VALUES("729","1","","co_usuario","180");

INSERT INTO tb_auditoria_itens VALUES("730","123456**","123456**","ds_senha","180");

INSERT INTO tb_auditoria_itens VALUES("731","TVRJek5EVTJLaW89","TVRJek5EVTJLaW89","ds_code","180");

INSERT INTO tb_auditoria_itens VALUES("732","A","A","st_status","180");

INSERT INTO tb_auditoria_itens VALUES("733","2016-10-31 00:00:00","","dt_cadastro","180");

INSERT INTO tb_auditoria_itens VALUES("734","1","","co_imagem","180");

INSERT INTO tb_auditoria_itens VALUES("735","1","","co_pessoa","180");

INSERT INTO tb_auditoria_itens VALUES("736","1","","co_usuario_perfil","181");

INSERT INTO tb_auditoria_itens VALUES("737","1","","co_usuario","181");

INSERT INTO tb_auditoria_itens VALUES("738","1","","co_perfil","181");

INSERT INTO tb_auditoria_itens VALUES("739","","1","co_usuario","182");

INSERT INTO tb_auditoria_itens VALUES("740","","8","co_perfil","182");

INSERT INTO tb_auditoria_itens VALUES("741","","1","co_usuario","183");

INSERT INTO tb_auditoria_itens VALUES("742","","7","co_perfil","183");

INSERT INTO tb_auditoria_itens VALUES("743","","1","co_usuario","184");

INSERT INTO tb_auditoria_itens VALUES("744","","3","co_perfil","184");

INSERT INTO tb_auditoria_itens VALUES("745","9","","co_perfil_agenda","185");

INSERT INTO tb_auditoria_itens VALUES("746","3","","co_agenda","185");

INSERT INTO tb_auditoria_itens VALUES("747","4","","co_perfil","185");

INSERT INTO tb_auditoria_itens VALUES("748","10","","co_perfil_agenda","185");

INSERT INTO tb_auditoria_itens VALUES("749","3","","co_agenda","185");

INSERT INTO tb_auditoria_itens VALUES("750","2","","co_perfil","185");

INSERT INTO tb_auditoria_itens VALUES("751","3","","co_agenda","186");

INSERT INTO tb_auditoria_itens VALUES("752","Reunião para mostrar o site","Reunião para mostrar o site","ds_descricao","186");

INSERT INTO tb_auditoria_itens VALUES("753","2018-03-23 12:19:12","","dt_cadastro","186");

INSERT INTO tb_auditoria_itens VALUES("754","N","","st_dia_todo","186");

INSERT INTO tb_auditoria_itens VALUES("755","2018-03-24 18:00:00","2018-03-24 18:00:00","dt_inicio","186");

INSERT INTO tb_auditoria_itens VALUES("756","","","dt_fim","186");

INSERT INTO tb_auditoria_itens VALUES("757","Reunião para o site","Reunião para o site","ds_titulo","186");

INSERT INTO tb_auditoria_itens VALUES("758","1","1","co_usuario","186");

INSERT INTO tb_auditoria_itens VALUES("759","1","1","co_categoria_agenda","186");

INSERT INTO tb_auditoria_itens VALUES("760","0","","co_evento","186");

INSERT INTO tb_auditoria_itens VALUES("761","","3","co_agenda","187");

INSERT INTO tb_auditoria_itens VALUES("762","","8","co_perfil","187");

INSERT INTO tb_auditoria_itens VALUES("763","","3","co_agenda","188");

INSERT INTO tb_auditoria_itens VALUES("764","","2","co_perfil","188");

INSERT INTO tb_auditoria_itens VALUES("765","","Reunião para ajustes da nova estruturação","ds_descricao","189");

INSERT INTO tb_auditoria_itens VALUES("766","","1","co_usuario","189");

INSERT INTO tb_auditoria_itens VALUES("767","","2018-03-24 14:00:00","dt_inicio","189");

INSERT INTO tb_auditoria_itens VALUES("768","","","dt_fim","189");

INSERT INTO tb_auditoria_itens VALUES("769","","Reunião dos Coordenadores","ds_titulo","189");

INSERT INTO tb_auditoria_itens VALUES("770","","1","co_categoria_agenda","189");

INSERT INTO tb_auditoria_itens VALUES("771","","0","co_evento","189");

INSERT INTO tb_auditoria_itens VALUES("772","","2018-03-23 17:10:12","dt_cadastro","189");

INSERT INTO tb_auditoria_itens VALUES("773","","N","st_dia_todo","189");

INSERT INTO tb_auditoria_itens VALUES("774","","4","co_agenda","190");

INSERT INTO tb_auditoria_itens VALUES("775","","7","co_perfil","190");

INSERT INTO tb_auditoria_itens VALUES("776","","4","co_agenda","191");

INSERT INTO tb_auditoria_itens VALUES("777","","2","co_perfil","191");

INSERT INTO tb_auditoria_itens VALUES("778","","Nosso encontro vai ser top","ds_descricao","192");

INSERT INTO tb_auditoria_itens VALUES("779","","1","co_usuario","192");

INSERT INTO tb_auditoria_itens VALUES("780","","2018-03-24 16:00:00","dt_inicio","192");

INSERT INTO tb_auditoria_itens VALUES("781","","","dt_fim","192");

INSERT INTO tb_auditoria_itens VALUES("782","","Nossa super encontro","ds_titulo","192");

INSERT INTO tb_auditoria_itens VALUES("783","","3","co_categoria_agenda","192");

INSERT INTO tb_auditoria_itens VALUES("784","","0","co_evento","192");

INSERT INTO tb_auditoria_itens VALUES("785","","2018-03-23 17:11:49","dt_cadastro","192");

INSERT INTO tb_auditoria_itens VALUES("786","","N","st_dia_todo","192");

INSERT INTO tb_auditoria_itens VALUES("787","","5","co_agenda","193");

INSERT INTO tb_auditoria_itens VALUES("788","","3","co_perfil","193");

INSERT INTO tb_auditoria_itens VALUES("789","","Foi top esse retiro","ds_descricao","194");

INSERT INTO tb_auditoria_itens VALUES("790","","1","co_usuario","194");

INSERT INTO tb_auditoria_itens VALUES("791","","2018-03-17 07:30:00","dt_inicio","194");

INSERT INTO tb_auditoria_itens VALUES("792","","2018-03-17 21:30:00","dt_fim","194");

INSERT INTO tb_auditoria_itens VALUES("793","","Retiro do EAC","ds_titulo","194");

INSERT INTO tb_auditoria_itens VALUES("794","","5","co_categoria_agenda","194");

INSERT INTO tb_auditoria_itens VALUES("795","","2","co_evento","194");

INSERT INTO tb_auditoria_itens VALUES("796","","2018-03-23 17:17:00","dt_cadastro","194");

INSERT INTO tb_auditoria_itens VALUES("797","","N","st_dia_todo","194");

INSERT INTO tb_auditoria_itens VALUES("798","","6","co_agenda","195");

INSERT INTO tb_auditoria_itens VALUES("799","","3","co_perfil","195");

INSERT INTO tb_auditoria_itens VALUES("800","","Foram 4 dias super maraviolhosos","ds_descricao","196");

INSERT INTO tb_auditoria_itens VALUES("801","","1","co_usuario","196");

INSERT INTO tb_auditoria_itens VALUES("802","","2018-02-10 06:30:00","dt_inicio","196");

INSERT INTO tb_auditoria_itens VALUES("803","","2018-02-13 21:00:00","dt_fim","196");

INSERT INTO tb_auditoria_itens VALUES("804","","VI Retiro de carnaval Santifique-se","ds_titulo","196");

INSERT INTO tb_auditoria_itens VALUES("805","","5","co_categoria_agenda","196");

INSERT INTO tb_auditoria_itens VALUES("806","","1","co_evento","196");

INSERT INTO tb_auditoria_itens VALUES("807","","2018-03-23 17:18:54","dt_cadastro","196");

INSERT INTO tb_auditoria_itens VALUES("808","","N","st_dia_todo","196");

INSERT INTO tb_auditoria_itens VALUES("809","","7","co_agenda","197");

INSERT INTO tb_auditoria_itens VALUES("810","","3","co_perfil","197");

INSERT INTO tb_auditoria_itens VALUES("811","","Qs 403 , conj. 10 casa 27","ds_endereco","198");

INSERT INTO tb_auditoria_itens VALUES("812","","complemento 55","ds_complemento","198");

INSERT INTO tb_auditoria_itens VALUES("813","","Samambaia norte 55","ds_bairro","198");

INSERT INTO tb_auditoria_itens VALUES("814","","72319111","nu_cep","198");

INSERT INTO tb_auditoria_itens VALUES("815","","Brasília 55","no_cidade","198");

INSERT INTO tb_auditoria_itens VALUES("816","","DF","sg_uf","198");

INSERT INTO tb_auditoria_itens VALUES("817","6","","co_contato","199");

INSERT INTO tb_auditoria_itens VALUES("818","62982163027","62982163027","nu_tel1","199");

INSERT INTO tb_auditoria_itens VALUES("819","","","nu_tel2","199");

INSERT INTO tb_auditoria_itens VALUES("820","","","nu_tel3","199");

INSERT INTO tb_auditoria_itens VALUES("821","henriquecarvalhohca@outlook.com","henriquecarvalhohca@outlook.com","ds_email","199");

INSERT INTO tb_auditoria_itens VALUES("822","6","","co_imagem","200");

INSERT INTO tb_auditoria_itens VALUES("823","henrique-carvalho-assuncao-5a259c70e65a0.jpg","henrique-carvalho-assuncao-5ac4e52704590.jpg","ds_caminho","200");

INSERT INTO tb_auditoria_itens VALUES("824","6","","co_pessoa","201");

INSERT INTO tb_auditoria_itens VALUES("825","05418337157","05418337157","nu_cpf","201");

INSERT INTO tb_auditoria_itens VALUES("826","HENRIQUE CARVALHO ASSUNçãO","HENRIQUE CARVALHO ASSUNçãO","no_pessoa","201");

INSERT INTO tb_auditoria_itens VALUES("827","","","nu_rg","201");

INSERT INTO tb_auditoria_itens VALUES("828","2017-12-04 17:05:20","2018-04-04 11:45:57","dt_cadastro","201");

INSERT INTO tb_auditoria_itens VALUES("829","1996-02-12","1996-02-12","dt_nascimento","201");

INSERT INTO tb_auditoria_itens VALUES("830","M","M","st_sexo","201");

INSERT INTO tb_auditoria_itens VALUES("831","6","1","co_contato","201");

INSERT INTO tb_auditoria_itens VALUES("832","6","233","co_endereco","201");

INSERT INTO tb_auditoria_itens VALUES("833","","TVRJek5EVTJLaW89","ds_code","202");

INSERT INTO tb_auditoria_itens VALUES("834","","123456**","ds_senha","202");

INSERT INTO tb_auditoria_itens VALUES("835","","2018-04-04 11:45:59","dt_cadastro","202");

INSERT INTO tb_auditoria_itens VALUES("836","","1","co_imagem","202");

INSERT INTO tb_auditoria_itens VALUES("837","","1","co_pessoa","202");

INSERT INTO tb_auditoria_itens VALUES("838","","15","co_usuario","203");

INSERT INTO tb_auditoria_itens VALUES("839","","3","co_perfil","203");

INSERT INTO tb_auditoria_itens VALUES("840","","Qs 403 , conj. 10 casa 27","ds_endereco","204");

INSERT INTO tb_auditoria_itens VALUES("841","","","ds_complemento","204");

INSERT INTO tb_auditoria_itens VALUES("842","","Samambaia norte","ds_bairro","204");

INSERT INTO tb_auditoria_itens VALUES("843","","72319111","nu_cep","204");

INSERT INTO tb_auditoria_itens VALUES("844","","Brasília","no_cidade","204");

INSERT INTO tb_auditoria_itens VALUES("845","","DF","sg_uf","204");

INSERT INTO tb_auditoria_itens VALUES("846","6","","co_contato","205");

INSERT INTO tb_auditoria_itens VALUES("847","62982163027","62982163027","nu_tel1","205");

INSERT INTO tb_auditoria_itens VALUES("848","","","nu_tel2","205");

INSERT INTO tb_auditoria_itens VALUES("849","","","nu_tel3","205");

INSERT INTO tb_auditoria_itens VALUES("850","henriquecarvalhohca@outlook.com","henriquecarvalhohca@outlook.com","ds_email","205");

INSERT INTO tb_auditoria_itens VALUES("851","6","","co_imagem","206");

INSERT INTO tb_auditoria_itens VALUES("852","henrique-carvalho-assuncao-5ac4e52704590.jpg","henrique-carvalho-assuncao-5ac4e77de795b.jpg","ds_caminho","206");

INSERT INTO tb_auditoria_itens VALUES("853","6","","co_pessoa","207");

INSERT INTO tb_auditoria_itens VALUES("854","05418337157","05418337157","nu_cpf","207");

INSERT INTO tb_auditoria_itens VALUES("855","HENRIQUE CARVALHO ASSUNçãO","HENRIQUE CARVALHO ASSUNçãO","no_pessoa","207");

INSERT INTO tb_auditoria_itens VALUES("856","","","nu_rg","207");

INSERT INTO tb_auditoria_itens VALUES("857","2018-04-04 11:45:57","2018-04-04 11:55:56","dt_cadastro","207");

INSERT INTO tb_auditoria_itens VALUES("858","1996-02-12","1996-02-12","dt_nascimento","207");

INSERT INTO tb_auditoria_itens VALUES("859","M","M","st_sexo","207");

INSERT INTO tb_auditoria_itens VALUES("860","6","1","co_contato","207");

INSERT INTO tb_auditoria_itens VALUES("861","6","234","co_endereco","207");

INSERT INTO tb_auditoria_itens VALUES("862","","TVRJek5EVTJLaW89","ds_code","208");

INSERT INTO tb_auditoria_itens VALUES("863","","123456**","ds_senha","208");

INSERT INTO tb_auditoria_itens VALUES("864","","2018-04-04 11:55:57","dt_cadastro","208");

INSERT INTO tb_auditoria_itens VALUES("865","","1","co_imagem","208");

INSERT INTO tb_auditoria_itens VALUES("866","","1","co_pessoa","208");

INSERT INTO tb_auditoria_itens VALUES("867","","16","co_usuario","209");

INSERT INTO tb_auditoria_itens VALUES("868","","3","co_perfil","209");

INSERT INTO tb_auditoria_itens VALUES("1006","","Qs 403 , conj. 10 casa 27","ds_endereco","236");

INSERT INTO tb_auditoria_itens VALUES("1007","","","ds_complemento","236");

INSERT INTO tb_auditoria_itens VALUES("1008","","Samambaia norte","ds_bairro","236");

INSERT INTO tb_auditoria_itens VALUES("1009","","72319111","nu_cep","236");

INSERT INTO tb_auditoria_itens VALUES("1010","","Brasília","no_cidade","236");

INSERT INTO tb_auditoria_itens VALUES("1011","","DF","sg_uf","236");

INSERT INTO tb_auditoria_itens VALUES("1012","6","","co_contato","237");

INSERT INTO tb_auditoria_itens VALUES("1013","62982163027","62982163027","nu_tel1","237");

INSERT INTO tb_auditoria_itens VALUES("1014","","","nu_tel2","237");

INSERT INTO tb_auditoria_itens VALUES("1015","","","nu_tel3","237");

INSERT INTO tb_auditoria_itens VALUES("1016","henriquecarvalhohca@outlook.com","henriquecarvalhohca@outlook.com","ds_email","237");

INSERT INTO tb_auditoria_itens VALUES("1017","6","","co_imagem","238");

INSERT INTO tb_auditoria_itens VALUES("1018","henrique-carvalho-assuncao-5ac4e77de795b.jpg","henrique-carvalho-assuncao-5ac4ed18dc01e.jpg","ds_caminho","238");

INSERT INTO tb_auditoria_itens VALUES("1019","6","","co_pessoa","239");

INSERT INTO tb_auditoria_itens VALUES("1020","05418337157","05418337157","nu_cpf","239");

INSERT INTO tb_auditoria_itens VALUES("1021","HENRIQUE CARVALHO ASSUNçãO","HENRIQUE CARVALHO ASSUNçãO","no_pessoa","239");

INSERT INTO tb_auditoria_itens VALUES("1022","","","nu_rg","239");

INSERT INTO tb_auditoria_itens VALUES("1023","2018-04-04 11:55:56","2018-04-04 12:19:51","dt_cadastro","239");

INSERT INTO tb_auditoria_itens VALUES("1024","1996-02-12","1996-02-12","dt_nascimento","239");

INSERT INTO tb_auditoria_itens VALUES("1025","M","M","st_sexo","239");

INSERT INTO tb_auditoria_itens VALUES("1026","6","","co_contato","239");

INSERT INTO tb_auditoria_itens VALUES("1027","6","242","co_endereco","239");

INSERT INTO tb_auditoria_itens VALUES("1028","","TVRJek5EVTJLaW89","ds_code","240");

INSERT INTO tb_auditoria_itens VALUES("1029","","123456**","ds_senha","240");

INSERT INTO tb_auditoria_itens VALUES("1030","","6","co_imagem","240");

INSERT INTO tb_auditoria_itens VALUES("1031","","6","co_pessoa","240");

INSERT INTO tb_auditoria_itens VALUES("1032","","2018-04-04 12:19:53","dt_cadastro","240");

INSERT INTO tb_auditoria_itens VALUES("1033","","21","co_usuario","241");

INSERT INTO tb_auditoria_itens VALUES("1034","","3","co_perfil","241");

INSERT INTO tb_auditoria_itens VALUES("1035","6","","co_imagem","242");

INSERT INTO tb_auditoria_itens VALUES("1036","henrique-carvalho-assuncao-5ac4ed18dc01e.jpg","henrique-carvalho-assuncao-5ac4edaf0fe46.jpg","ds_caminho","242");

INSERT INTO tb_auditoria_itens VALUES("1037","6","","co_contato","243");

INSERT INTO tb_auditoria_itens VALUES("1038","62982163027","62982163027","nu_tel1","243");

INSERT INTO tb_auditoria_itens VALUES("1039","","___________","nu_tel2","243");

INSERT INTO tb_auditoria_itens VALUES("1040","","","nu_tel3","243");

INSERT INTO tb_auditoria_itens VALUES("1041","henriquecarvalhohca@outlook.com","henriquecarvalhohca@outlook.com","ds_email","243");

INSERT INTO tb_auditoria_itens VALUES("1042","242","","co_endereco","244");

INSERT INTO tb_auditoria_itens VALUES("1043","Qs 403 , conj. 10 casa 27","Qs 403 , conj. 10 casa 27","ds_endereco","244");

INSERT INTO tb_auditoria_itens VALUES("1044","","","ds_complemento","244");

INSERT INTO tb_auditoria_itens VALUES("1045","Samambaia norte","Samambaia norte","ds_bairro","244");

INSERT INTO tb_auditoria_itens VALUES("1046","72319111","72319111","nu_cep","244");

INSERT INTO tb_auditoria_itens VALUES("1047","Brasília","Brasília","no_cidade","244");

INSERT INTO tb_auditoria_itens VALUES("1048","DF","DF","sg_uf","244");

INSERT INTO tb_auditoria_itens VALUES("1049","6","","co_pessoa","245");

INSERT INTO tb_auditoria_itens VALUES("1050","05418337157","05418337157","nu_cpf","245");

INSERT INTO tb_auditoria_itens VALUES("1051","HENRIQUE CARVALHO ASSUNçãO","HENRIQUE CARVALHO ASSUNçãO","no_pessoa","245");

INSERT INTO tb_auditoria_itens VALUES("1052","","","nu_rg","245");

INSERT INTO tb_auditoria_itens VALUES("1053","2018-04-04 12:19:51","2018-04-04 12:22:21","dt_cadastro","245");

INSERT INTO tb_auditoria_itens VALUES("1054","1996-02-12","1996-02-12","dt_nascimento","245");

INSERT INTO tb_auditoria_itens VALUES("1055","M","M","st_sexo","245");

INSERT INTO tb_auditoria_itens VALUES("1056","6","","co_contato","245");

INSERT INTO tb_auditoria_itens VALUES("1057","242","","co_endereco","245");

INSERT INTO tb_auditoria_itens VALUES("1058","21","","co_usuario","246");

INSERT INTO tb_auditoria_itens VALUES("1059","123456**","123456**","ds_senha","246");

INSERT INTO tb_auditoria_itens VALUES("1060","TVRJek5EVTJLaW89","TVRJek5EVTJLaW89","ds_code","246");

INSERT INTO tb_auditoria_itens VALUES("1061","I","A","st_status","246");

INSERT INTO tb_auditoria_itens VALUES("1062","2018-04-04 12:19:53","","dt_cadastro","246");

INSERT INTO tb_auditoria_itens VALUES("1063","6","","co_imagem","246");

INSERT INTO tb_auditoria_itens VALUES("1064","6","","co_pessoa","246");

INSERT INTO tb_auditoria_itens VALUES("1065","62","","co_usuario_perfil","247");

INSERT INTO tb_auditoria_itens VALUES("1066","21","","co_usuario","247");

INSERT INTO tb_auditoria_itens VALUES("1067","3","","co_perfil","247");

INSERT INTO tb_auditoria_itens VALUES("1068","","21","co_usuario","248");

INSERT INTO tb_auditoria_itens VALUES("1069","","3","co_perfil","248");

INSERT INTO tb_auditoria_itens VALUES("1070","","21","co_usuario","249");

INSERT INTO tb_auditoria_itens VALUES("1071","","2","co_perfil","249");

INSERT INTO tb_auditoria_itens VALUES("1072","","21","co_usuario","250");

INSERT INTO tb_auditoria_itens VALUES("1073","","3","co_perfil","250");

INSERT INTO tb_auditoria_itens VALUES("1074","","Casa da Lili Bessa","ds_endereco","251");

INSERT INTO tb_auditoria_itens VALUES("1075","","","ds_complemento","251");

INSERT INTO tb_auditoria_itens VALUES("1076","","","ds_bairro","251");

INSERT INTO tb_auditoria_itens VALUES("1077","","","nu_cep","251");

INSERT INTO tb_auditoria_itens VALUES("1078","","","no_cidade","251");

INSERT INTO tb_auditoria_itens VALUES("1079","","DF","sg_uf","251");

INSERT INTO tb_auditoria_itens VALUES("1080","","65464654564","nu_tel1","252");

INSERT INTO tb_auditoria_itens VALUES("1081","","","nu_tel2","252");

INSERT INTO tb_auditoria_itens VALUES("1082","","","nu_tel3","252");

INSERT INTO tb_auditoria_itens VALUES("1083","","grefdffg@tghtrhrjytj.com.br","ds_email","252");

INSERT INTO tb_auditoria_itens VALUES("1084","","gg-novato-5ac502c9df378.PNG","ds_caminho","253");

INSERT INTO tb_auditoria_itens VALUES("1085","","12345678909","nu_cpf","254");

INSERT INTO tb_auditoria_itens VALUES("1086","","GG NOVATO","no_pessoa","254");

INSERT INTO tb_auditoria_itens VALUES("1087","","","nu_rg","254");

INSERT INTO tb_auditoria_itens VALUES("1088","","2018-04-04 13:52:26","dt_cadastro","254");

INSERT INTO tb_auditoria_itens VALUES("1089","","1994-04-06","dt_nascimento","254");

INSERT INTO tb_auditoria_itens VALUES("1090","","F","st_sexo","254");

INSERT INTO tb_auditoria_itens VALUES("1091","","243","co_endereco","254");

INSERT INTO tb_auditoria_itens VALUES("1092","","236","co_contato","254");

INSERT INTO tb_auditoria_itens VALUES("1093","","TVRJek5EVTJLaW89","ds_code","255");

INSERT INTO tb_auditoria_itens VALUES("1094","","123456**","ds_senha","255");

INSERT INTO tb_auditoria_itens VALUES("1095","","236","co_imagem","255");

INSERT INTO tb_auditoria_itens VALUES("1096","","233","co_pessoa","255");

INSERT INTO tb_auditoria_itens VALUES("1097","","2018-04-04 13:52:26","dt_cadastro","255");

INSERT INTO tb_auditoria_itens VALUES("1098","","22","co_usuario","256");

INSERT INTO tb_auditoria_itens VALUES("1099","","3","co_perfil","256");

INSERT INTO tb_auditoria_itens VALUES("1100","236","","co_contato","257");

INSERT INTO tb_auditoria_itens VALUES("1101","65464654564","65464654564","nu_tel1","257");

INSERT INTO tb_auditoria_itens VALUES("1102","","","nu_tel2","257");

INSERT INTO tb_auditoria_itens VALUES("1103","","","nu_tel3","257");

INSERT INTO tb_auditoria_itens VALUES("1104","grefdffg@tghtrhrjytj.com.br","grefdffg@tghtrhrjytj.com.br","ds_email","257");

INSERT INTO tb_auditoria_itens VALUES("1105","243","","co_endereco","258");

INSERT INTO tb_auditoria_itens VALUES("1106","Casa da Lili Bessa","Casa da Lili Bessa","ds_endereco","258");

INSERT INTO tb_auditoria_itens VALUES("1107","","","ds_complemento","258");

INSERT INTO tb_auditoria_itens VALUES("1108","","","ds_bairro","258");

INSERT INTO tb_auditoria_itens VALUES("1109","","","nu_cep","258");

INSERT INTO tb_auditoria_itens VALUES("1110","","","no_cidade","258");

INSERT INTO tb_auditoria_itens VALUES("1111","DF","DF","sg_uf","258");

INSERT INTO tb_auditoria_itens VALUES("1112","233","","co_pessoa","259");

INSERT INTO tb_auditoria_itens VALUES("1113","12345678909","12345678909","nu_cpf","259");

INSERT INTO tb_auditoria_itens VALUES("1114","GG NOVATO","GG NOVATO","no_pessoa","259");

INSERT INTO tb_auditoria_itens VALUES("1115","","","nu_rg","259");

INSERT INTO tb_auditoria_itens VALUES("1116","2018-04-04 13:52:26","2018-04-04 13:56:51","dt_cadastro","259");

INSERT INTO tb_auditoria_itens VALUES("1117","1994-04-06","1994-04-06","dt_nascimento","259");

INSERT INTO tb_auditoria_itens VALUES("1118","F","F","st_sexo","259");

INSERT INTO tb_auditoria_itens VALUES("1119","236","","co_contato","259");

INSERT INTO tb_auditoria_itens VALUES("1120","243","","co_endereco","259");

INSERT INTO tb_auditoria_itens VALUES("1121","22","","co_usuario","260");

INSERT INTO tb_auditoria_itens VALUES("1122","123456**","123456**","ds_senha","260");

INSERT INTO tb_auditoria_itens VALUES("1123","TVRJek5EVTJLaW89","TVRJek5EVTJLaW89","ds_code","260");

INSERT INTO tb_auditoria_itens VALUES("1124","I","A","st_status","260");

INSERT INTO tb_auditoria_itens VALUES("1125","2018-04-04 13:52:26","","dt_cadastro","260");

INSERT INTO tb_auditoria_itens VALUES("1126","236","","co_imagem","260");

INSERT INTO tb_auditoria_itens VALUES("1127","233","","co_pessoa","260");

INSERT INTO tb_auditoria_itens VALUES("1128","66","","co_usuario_perfil","261");

INSERT INTO tb_auditoria_itens VALUES("1129","22","","co_usuario","261");

INSERT INTO tb_auditoria_itens VALUES("1130","3","","co_perfil","261");

INSERT INTO tb_auditoria_itens VALUES("1131","","22","co_usuario","262");

INSERT INTO tb_auditoria_itens VALUES("1132","","3","co_perfil","262");

INSERT INTO tb_auditoria_itens VALUES("1133","","22","co_usuario","263");

INSERT INTO tb_auditoria_itens VALUES("1134","","3","co_perfil","263");

INSERT INTO tb_auditoria_itens VALUES("1135","","Qnb 18 casa 08","ds_endereco","264");

INSERT INTO tb_auditoria_itens VALUES("1136","","com.norte","ds_complemento","264");

INSERT INTO tb_auditoria_itens VALUES("1137","","","ds_bairro","264");

INSERT INTO tb_auditoria_itens VALUES("1138","","72115180","nu_cep","264");

INSERT INTO tb_auditoria_itens VALUES("1139","","Taguatinga","no_cidade","264");

INSERT INTO tb_auditoria_itens VALUES("1140","","DF","sg_uf","264");

INSERT INTO tb_auditoria_itens VALUES("1141","181","","co_contato","265");

INSERT INTO tb_auditoria_itens VALUES("1142","61986174379","61986174379","nu_tel1","265");

INSERT INTO tb_auditoria_itens VALUES("1143","61999422906","61999422906","nu_tel2","265");

INSERT INTO tb_auditoria_itens VALUES("1144","","","nu_tel3","265");

INSERT INTO tb_auditoria_itens VALUES("1145","Sonmurillo@hotmail.com","Sonmurillo@hotmail.com","ds_email","265");

INSERT INTO tb_auditoria_itens VALUES("1146","181","","co_imagem","266");

INSERT INTO tb_auditoria_itens VALUES("1147","guilherme-vale-silva-matos-5a6cb4a3bd882.jpg","guilherme-vale-silva-matos-5ac5321b7144b.jpg","ds_caminho","266");

INSERT INTO tb_auditoria_itens VALUES("1148","178","","co_pessoa","267");

INSERT INTO tb_auditoria_itens VALUES("1149","04436682137","04436682137","nu_cpf","267");

INSERT INTO tb_auditoria_itens VALUES("1150","GUILHERME VALE SILVA MATOS","GUILHERME VALE SILVA MATOS","no_pessoa","267");

INSERT INTO tb_auditoria_itens VALUES("1151","","","nu_rg","267");

INSERT INTO tb_auditoria_itens VALUES("1152","2018-01-27 15:19:30","2018-04-04 17:14:17","dt_cadastro","267");

INSERT INTO tb_auditoria_itens VALUES("1153","1997-09-02","1997-09-02","dt_nascimento","267");

INSERT INTO tb_auditoria_itens VALUES("1154","M","M","st_sexo","267");

INSERT INTO tb_auditoria_itens VALUES("1155","181","","co_contato","267");

INSERT INTO tb_auditoria_itens VALUES("1156","178","244","co_endereco","267");

INSERT INTO tb_auditoria_itens VALUES("1157","","TVRJek5EVTJLaW89","ds_code","268");

INSERT INTO tb_auditoria_itens VALUES("1158","","123456**","ds_senha","268");

INSERT INTO tb_auditoria_itens VALUES("1159","","181","co_imagem","268");

INSERT INTO tb_auditoria_itens VALUES("1160","","178","co_pessoa","268");

INSERT INTO tb_auditoria_itens VALUES("1161","","2018-04-04 17:14:19","dt_cadastro","268");

INSERT INTO tb_auditoria_itens VALUES("1162","","23","co_usuario","269");

INSERT INTO tb_auditoria_itens VALUES("1163","","3","co_perfil","269");

INSERT INTO tb_auditoria_itens VALUES("1164","15","","co_perfil_agenda","270");

INSERT INTO tb_auditoria_itens VALUES("1165","5","","co_agenda","270");

INSERT INTO tb_auditoria_itens VALUES("1166","3","","co_perfil","270");

INSERT INTO tb_auditoria_itens VALUES("1167","247","","co_endereco","271");

INSERT INTO tb_auditoria_itens VALUES("1168","Casa das Irmãs","Casa das Irmãs","ds_endereco","271");

INSERT INTO tb_auditoria_itens VALUES("1169","AO lado da paróquia","AO lado da paróquia","ds_complemento","271");

INSERT INTO tb_auditoria_itens VALUES("1170","Samambaia Norte","Samambaia Norte","ds_bairro","271");

INSERT INTO tb_auditoria_itens VALUES("1171","","","nu_cep","271");

INSERT INTO tb_auditoria_itens VALUES("1172","Brasília","Brasília","no_cidade","271");

INSERT INTO tb_auditoria_itens VALUES("1173","DF","DF","sg_uf","271");

INSERT INTO tb_auditoria_itens VALUES("1174","5","","co_agenda","272");

INSERT INTO tb_auditoria_itens VALUES("1175","Nosso encontro vai ser top","<p>Nosso encontro vai ser top</p>\n","ds_descricao","272");

INSERT INTO tb_auditoria_itens VALUES("1176","2018-03-23 17:11:49","","dt_cadastro","272");

INSERT INTO tb_auditoria_itens VALUES("1177","N","","st_dia_todo","272");

INSERT INTO tb_auditoria_itens VALUES("1178","2018-03-24 16:00:00","2018-03-24 16:00:00","dt_inicio","272");

INSERT INTO tb_auditoria_itens VALUES("1179","","","dt_fim","272");

INSERT INTO tb_auditoria_itens VALUES("1180","Nossa super encontro","Nosso super encontro","ds_titulo","272");

INSERT INTO tb_auditoria_itens VALUES("1181","1","1","co_usuario","272");

INSERT INTO tb_auditoria_itens VALUES("1182","3","3","co_categoria_agenda","272");

INSERT INTO tb_auditoria_itens VALUES("1183","0","","co_evento","272");

INSERT INTO tb_auditoria_itens VALUES("1184","247","1","co_endereco","272");

INSERT INTO tb_auditoria_itens VALUES("1185","","5","co_agenda","273");

INSERT INTO tb_auditoria_itens VALUES("1186","","3","co_perfil","273");

INSERT INTO tb_auditoria_itens VALUES("1222","","Eventos/CapaEventos/bazar-5ac649674235f.jpg","ds_caminho","281");

INSERT INTO tb_auditoria_itens VALUES("1223","","240","co_imagem","282");

INSERT INTO tb_auditoria_itens VALUES("1224","","2018-04-05 13:05:59","dt_cadastro","282");

INSERT INTO tb_auditoria_itens VALUES("1225","","Array","co_categoria_evento","282");

INSERT INTO tb_auditoria_itens VALUES("1226","","Eventos/Evento-3/bazar-5ac649676aaa0.jpg","ds_caminho","283");

INSERT INTO tb_auditoria_itens VALUES("1227","","3","co_evento","284");

INSERT INTO tb_auditoria_itens VALUES("1228","","241","co_imagem","284");

INSERT INTO tb_auditoria_itens VALUES("1229","","Eventos/Evento-3/bazar-5ac64967a2080.jpg","ds_caminho","285");

INSERT INTO tb_auditoria_itens VALUES("1230","","3","co_evento","286");

INSERT INTO tb_auditoria_itens VALUES("1231","","242","co_imagem","286");

INSERT INTO tb_auditoria_itens VALUES("1232","","Eventos/Evento-3/bazar-5ac64967ce27d.jpg","ds_caminho","287");

INSERT INTO tb_auditoria_itens VALUES("1233","","3","co_evento","288");

INSERT INTO tb_auditoria_itens VALUES("1234","","243","co_imagem","288");

INSERT INTO tb_auditoria_itens VALUES("1235","","Eventos/Evento-3/bazar-5ac649680e5fc.jpg","ds_caminho","289");

INSERT INTO tb_auditoria_itens VALUES("1236","","3","co_evento","290");

INSERT INTO tb_auditoria_itens VALUES("1237","","244","co_imagem","290");

INSERT INTO tb_auditoria_itens VALUES("1238","","Eventos/Evento-3/bazar-5ac64968401c0.jpg","ds_caminho","291");

INSERT INTO tb_auditoria_itens VALUES("1239","","3","co_evento","292");

INSERT INTO tb_auditoria_itens VALUES("1240","","245","co_imagem","292");

INSERT INTO tb_auditoria_itens VALUES("1241","","Eventos/Evento-3/bazar-5ac64968725dd.jpg","ds_caminho","293");

INSERT INTO tb_auditoria_itens VALUES("1242","","3","co_evento","294");

INSERT INTO tb_auditoria_itens VALUES("1243","","246","co_imagem","294");

INSERT INTO tb_auditoria_itens VALUES("1244","","Eventos/Evento-3/bazar-5ac6496896937.jpg","ds_caminho","295");

INSERT INTO tb_auditoria_itens VALUES("1245","","3","co_evento","296");

INSERT INTO tb_auditoria_itens VALUES("1246","","247","co_imagem","296");

INSERT INTO tb_auditoria_itens VALUES("1247","","Eventos/Evento-3/bazar-5ac64968b8bf2.jpg","ds_caminho","297");

INSERT INTO tb_auditoria_itens VALUES("1248","","3","co_evento","298");

INSERT INTO tb_auditoria_itens VALUES("1249","","248","co_imagem","298");

INSERT INTO tb_auditoria_itens VALUES("1250","","Eventos/Evento-3/bazar-5ac64968dc453.jpg","ds_caminho","299");

INSERT INTO tb_auditoria_itens VALUES("1251","","3","co_evento","300");

INSERT INTO tb_auditoria_itens VALUES("1252","","249","co_imagem","300");

INSERT INTO tb_auditoria_itens VALUES("1253","","Eventos/Evento-3/bazar-5ac649690ca51.jpg","ds_caminho","301");

INSERT INTO tb_auditoria_itens VALUES("1254","","3","co_evento","302");

INSERT INTO tb_auditoria_itens VALUES("1255","","250","co_imagem","302");

INSERT INTO tb_auditoria_itens VALUES("1256","","Eventos/Evento-3/bazar-5ac649692927c.jpg","ds_caminho","303");

INSERT INTO tb_auditoria_itens VALUES("1257","","3","co_evento","304");

INSERT INTO tb_auditoria_itens VALUES("1258","","251","co_imagem","304");

INSERT INTO tb_auditoria_itens VALUES("1259","","Feira da 313","ds_endereco","305");

INSERT INTO tb_auditoria_itens VALUES("1260","","","ds_complemento","305");

INSERT INTO tb_auditoria_itens VALUES("1261","","","ds_bairro","305");

INSERT INTO tb_auditoria_itens VALUES("1262","","","nu_cep","305");

INSERT INTO tb_auditoria_itens VALUES("1263","","","no_cidade","305");

INSERT INTO tb_auditoria_itens VALUES("1264","","DF","sg_uf","305");

INSERT INTO tb_auditoria_itens VALUES("1265","","<p>&nbsp;t5 t t43tzg reger</p>\n","ds_descricao","306");

INSERT INTO tb_auditoria_itens VALUES("1266","","1","co_usuario","306");

INSERT INTO tb_auditoria_itens VALUES("1267","","2018-04-07 06:00:00","dt_inicio","306");

INSERT INTO tb_auditoria_itens VALUES("1268","","","dt_fim","306");

INSERT INTO tb_auditoria_itens VALUES("1269","","Bazar","ds_titulo","306");

INSERT INTO tb_auditoria_itens VALUES("1270","","5","co_categoria_agenda","306");

INSERT INTO tb_auditoria_itens VALUES("1271","","0","co_evento","306");

INSERT INTO tb_auditoria_itens VALUES("1272","","251","co_endereco","306");

INSERT INTO tb_auditoria_itens VALUES("1273","","2018-04-05 13:06:01","dt_cadastro","306");

INSERT INTO tb_auditoria_itens VALUES("1274","","N","st_dia_todo","306");

INSERT INTO tb_auditoria_itens VALUES("1275","","10","co_agenda","307");

INSERT INTO tb_auditoria_itens VALUES("1276","","25","co_perfil","307");

INSERT INTO tb_auditoria_itens VALUES("1277","","10","co_agenda","308");

INSERT INTO tb_auditoria_itens VALUES("1278","","23","co_perfil","308");

INSERT INTO tb_auditoria_itens VALUES("1279","","Na casa das irmãs","ds_endereco","309");

INSERT INTO tb_auditoria_itens VALUES("1280","","","ds_complemento","309");

INSERT INTO tb_auditoria_itens VALUES("1281","","","ds_bairro","309");

INSERT INTO tb_auditoria_itens VALUES("1282","","","nu_cep","309");

INSERT INTO tb_auditoria_itens VALUES("1283","","","no_cidade","309");

INSERT INTO tb_auditoria_itens VALUES("1284","","DF","sg_uf","309");

INSERT INTO tb_auditoria_itens VALUES("1285","","<p>fewf ewfew</p>\n","ds_descricao","310");

INSERT INTO tb_auditoria_itens VALUES("1286","","1","co_usuario","310");

INSERT INTO tb_auditoria_itens VALUES("1287","","2018-04-07 15:30:00","dt_inicio","310");

INSERT INTO tb_auditoria_itens VALUES("1288","","","dt_fim","310");

INSERT INTO tb_auditoria_itens VALUES("1289","","Nosso super encontro","ds_titulo","310");

INSERT INTO tb_auditoria_itens VALUES("1290","","3","co_categoria_agenda","310");

INSERT INTO tb_auditoria_itens VALUES("1291","","252","co_endereco","310");

INSERT INTO tb_auditoria_itens VALUES("1292","","2018-04-06 11:16:11","dt_cadastro","310");

INSERT INTO tb_auditoria_itens VALUES("1293","","N","st_dia_todo","310");

INSERT INTO tb_auditoria_itens VALUES("1294","","1","co_agenda","311");

INSERT INTO tb_auditoria_itens VALUES("1295","","3","co_perfil","311");

INSERT INTO tb_auditoria_itens VALUES("1296","","Chacara Santa cruz","ds_endereco","312");

INSERT INTO tb_auditoria_itens VALUES("1297","","","ds_complemento","312");

INSERT INTO tb_auditoria_itens VALUES("1298","","Incra 08","ds_bairro","312");

INSERT INTO tb_auditoria_itens VALUES("1299","","","nu_cep","312");

INSERT INTO tb_auditoria_itens VALUES("1300","","Celandia","no_cidade","312");

INSERT INTO tb_auditoria_itens VALUES("1301","","DF","sg_uf","312");

INSERT INTO tb_auditoria_itens VALUES("1302","","<p>fwe we few f foi um super retiro</p>\n","ds_descricao","313");

INSERT INTO tb_auditoria_itens VALUES("1303","","1","co_usuario","313");

INSERT INTO tb_auditoria_itens VALUES("1304","","2018-02-10 06:00:00","dt_inicio","313");

INSERT INTO tb_auditoria_itens VALUES("1305","","2018-02-13 21:00:00","dt_fim","313");

INSERT INTO tb_auditoria_itens VALUES("1306","","VI Retiro de carnaval Santifique-se","ds_titulo","313");

INSERT INTO tb_auditoria_itens VALUES("1307","","5","co_categoria_agenda","313");

INSERT INTO tb_auditoria_itens VALUES("1308","","253","co_endereco","313");

INSERT INTO tb_auditoria_itens VALUES("1309","","2018-04-06 11:30:02","dt_cadastro","313");

INSERT INTO tb_auditoria_itens VALUES("1310","","N","st_dia_todo","313");

INSERT INTO tb_auditoria_itens VALUES("1311","","Eventos/CapaEventos/vi-retiro-de-carnaval-santifique-se-5ac7846b0d064.jpg","ds_caminho","314");

INSERT INTO tb_auditoria_itens VALUES("1312","","252","co_imagem","315");

INSERT INTO tb_auditoria_itens VALUES("1313","","2018-04-06 11:30:03","dt_cadastro","315");

INSERT INTO tb_auditoria_itens VALUES("1314","","Array","co_categoria_evento","315");

INSERT INTO tb_auditoria_itens VALUES("1315","","2","co_agenda","315");

INSERT INTO tb_auditoria_itens VALUES("1316","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b3da82.jpg","ds_caminho","316");

INSERT INTO tb_auditoria_itens VALUES("1317","","1","co_evento","317");

INSERT INTO tb_auditoria_itens VALUES("1318","","253","co_imagem","317");

INSERT INTO tb_auditoria_itens VALUES("1319","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b6e427.jpg","ds_caminho","318");

INSERT INTO tb_auditoria_itens VALUES("1320","","1","co_evento","319");

INSERT INTO tb_auditoria_itens VALUES("1321","","254","co_imagem","319");

INSERT INTO tb_auditoria_itens VALUES("1322","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b9a84b.jpg","ds_caminho","320");

INSERT INTO tb_auditoria_itens VALUES("1323","","1","co_evento","321");

INSERT INTO tb_auditoria_itens VALUES("1324","","255","co_imagem","321");

INSERT INTO tb_auditoria_itens VALUES("1325","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846bd1169.jpg","ds_caminho","322");

INSERT INTO tb_auditoria_itens VALUES("1326","","1","co_evento","323");

INSERT INTO tb_auditoria_itens VALUES("1327","","256","co_imagem","323");

INSERT INTO tb_auditoria_itens VALUES("1328","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c0f226.jpg","ds_caminho","324");

INSERT INTO tb_auditoria_itens VALUES("1329","","1","co_evento","325");

INSERT INTO tb_auditoria_itens VALUES("1330","","257","co_imagem","325");

INSERT INTO tb_auditoria_itens VALUES("1331","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c3ee95.jpg","ds_caminho","326");

INSERT INTO tb_auditoria_itens VALUES("1332","","1","co_evento","327");

INSERT INTO tb_auditoria_itens VALUES("1333","","258","co_imagem","327");

INSERT INTO tb_auditoria_itens VALUES("1334","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c6233e.jpg","ds_caminho","328");

INSERT INTO tb_auditoria_itens VALUES("1335","","1","co_evento","329");

INSERT INTO tb_auditoria_itens VALUES("1336","","259","co_imagem","329");

INSERT INTO tb_auditoria_itens VALUES("1337","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c82b77.jpg","ds_caminho","330");

INSERT INTO tb_auditoria_itens VALUES("1338","","1","co_evento","331");

INSERT INTO tb_auditoria_itens VALUES("1339","","260","co_imagem","331");

INSERT INTO tb_auditoria_itens VALUES("1340","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846ca56db.jpg","ds_caminho","332");

INSERT INTO tb_auditoria_itens VALUES("1341","","1","co_evento","333");

INSERT INTO tb_auditoria_itens VALUES("1342","","261","co_imagem","333");

INSERT INTO tb_auditoria_itens VALUES("1343","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846cc8e99.jpg","ds_caminho","334");

INSERT INTO tb_auditoria_itens VALUES("1344","","1","co_evento","335");

INSERT INTO tb_auditoria_itens VALUES("1345","","262","co_imagem","335");

INSERT INTO tb_auditoria_itens VALUES("1346","","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846ce3aa9.jpg","ds_caminho","336");

INSERT INTO tb_auditoria_itens VALUES("1347","","1","co_evento","337");

INSERT INTO tb_auditoria_itens VALUES("1348","","263","co_imagem","337");

INSERT INTO tb_auditoria_itens VALUES("1349","","2","co_agenda","338");

INSERT INTO tb_auditoria_itens VALUES("1350","","3","co_perfil","338");

INSERT INTO tb_auditoria_itens VALUES("1351","","casa do Elielf","ds_endereco","339");

INSERT INTO tb_auditoria_itens VALUES("1352","","","ds_complemento","339");

INSERT INTO tb_auditoria_itens VALUES("1353","","","ds_bairro","339");

INSERT INTO tb_auditoria_itens VALUES("1354","","","nu_cep","339");

INSERT INTO tb_auditoria_itens VALUES("1355","","","no_cidade","339");

INSERT INTO tb_auditoria_itens VALUES("1356","","DF","sg_uf","339");

INSERT INTO tb_auditoria_itens VALUES("1357","","<p>ew f ewf</p>\n","ds_descricao","340");

INSERT INTO tb_auditoria_itens VALUES("1358","","1","co_usuario","340");

INSERT INTO tb_auditoria_itens VALUES("1359","","2018-04-14 20:00:00","dt_inicio","340");

INSERT INTO tb_auditoria_itens VALUES("1360","","","dt_fim","340");

INSERT INTO tb_auditoria_itens VALUES("1361","","Ensaio da Música","ds_titulo","340");

INSERT INTO tb_auditoria_itens VALUES("1362","","2","co_categoria_agenda","340");

INSERT INTO tb_auditoria_itens VALUES("1363","","254","co_endereco","340");

INSERT INTO tb_auditoria_itens VALUES("1364","","2018-04-06 11:44:06","dt_cadastro","340");

INSERT INTO tb_auditoria_itens VALUES("1365","","N","st_dia_todo","340");

INSERT INTO tb_auditoria_itens VALUES("1366","","1","co_evento","341");

INSERT INTO tb_auditoria_itens VALUES("1367","","3","co_agenda","342");

INSERT INTO tb_auditoria_itens VALUES("1368","","12","co_perfil","342");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Informações da tabela da auditotia',
  `no_tabela` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tp_operacao` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'I - Insert / U - Update / D - Delete',
  `co_registro` int(11) DEFAULT NULL COMMENT 'Código da chave primária da tabela de origem',
  `co_auditoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tb_auditoria_tabela VALUES("1","TB_AGENDA","I","1","1");

INSERT INTO tb_auditoria_tabela VALUES("2","TB_PERFIL_AGENDA","I","1","1");

INSERT INTO tb_auditoria_tabela VALUES("3","TB_PERFIL_AGENDA","I","2","1");

INSERT INTO tb_auditoria_tabela VALUES("4","TB_AGENDA","I","2","2");

INSERT INTO tb_auditoria_tabela VALUES("5","TB_PERFIL_AGENDA","I","3","2");

INSERT INTO tb_auditoria_tabela VALUES("6","TB_PERFIL_AGENDA","I","4","2");

INSERT INTO tb_auditoria_tabela VALUES("7","TB_AGENDA","D","1","3");

INSERT INTO tb_auditoria_tabela VALUES("8","TB_AGENDA","I","3","4");

INSERT INTO tb_auditoria_tabela VALUES("9","TB_PERFIL_AGENDA","I","5","4");

INSERT INTO tb_auditoria_tabela VALUES("10","TB_PERFIL_AGENDA","I","6","4");

INSERT INTO tb_auditoria_tabela VALUES("11","TB_PERFIL_AGENDA","D","","5");

INSERT INTO tb_auditoria_tabela VALUES("12","TB_AGENDA","U","3","5");

INSERT INTO tb_auditoria_tabela VALUES("13","TB_PERFIL_AGENDA","I","7","5");

INSERT INTO tb_auditoria_tabela VALUES("14","TB_PERFIL_AGENDA","I","8","5");

INSERT INTO tb_auditoria_tabela VALUES("15","TB_PERFIL_AGENDA","D","","6");

INSERT INTO tb_auditoria_tabela VALUES("16","TB_AGENDA","U","3","6");

INSERT INTO tb_auditoria_tabela VALUES("17","TB_PERFIL_AGENDA","I","9","6");

INSERT INTO tb_auditoria_tabela VALUES("18","TB_PERFIL_AGENDA","I","10","6");

INSERT INTO tb_auditoria_tabela VALUES("19","TB_PERFIL","U","2","7");

INSERT INTO tb_auditoria_tabela VALUES("20","TB_PERFIL_FUNCIONALIDADE","D","","7");

INSERT INTO tb_auditoria_tabela VALUES("21","TB_PERFIL_FUNCIONALIDADE","I","34","7");

INSERT INTO tb_auditoria_tabela VALUES("22","TB_PERFIL_FUNCIONALIDADE","I","35","7");

INSERT INTO tb_auditoria_tabela VALUES("23","TB_PERFIL_FUNCIONALIDADE","I","36","7");

INSERT INTO tb_auditoria_tabela VALUES("24","TB_PERFIL_FUNCIONALIDADE","I","37","7");

INSERT INTO tb_auditoria_tabela VALUES("25","TB_PERFIL_FUNCIONALIDADE","I","38","7");

INSERT INTO tb_auditoria_tabela VALUES("26","TB_PERFIL_FUNCIONALIDADE","I","39","7");

INSERT INTO tb_auditoria_tabela VALUES("27","TB_PERFIL_FUNCIONALIDADE","I","40","7");

INSERT INTO tb_auditoria_tabela VALUES("28","TB_PERFIL_FUNCIONALIDADE","I","41","7");

INSERT INTO tb_auditoria_tabela VALUES("29","TB_PERFIL_FUNCIONALIDADE","I","42","7");

INSERT INTO tb_auditoria_tabela VALUES("30","TB_PERFIL_FUNCIONALIDADE","I","43","7");

INSERT INTO tb_auditoria_tabela VALUES("31","TB_PERFIL","I","6","8");

INSERT INTO tb_auditoria_tabela VALUES("32","TB_PERFIL_FUNCIONALIDADE","I","44","8");

INSERT INTO tb_auditoria_tabela VALUES("33","TB_PERFIL_FUNCIONALIDADE","I","45","8");

INSERT INTO tb_auditoria_tabela VALUES("34","TB_PERFIL_FUNCIONALIDADE","I","46","8");

INSERT INTO tb_auditoria_tabela VALUES("35","TB_PERFIL_FUNCIONALIDADE","I","47","8");

INSERT INTO tb_auditoria_tabela VALUES("36","TB_PERFIL_FUNCIONALIDADE","I","48","8");

INSERT INTO tb_auditoria_tabela VALUES("37","TB_PERFIL_FUNCIONALIDADE","I","49","8");

INSERT INTO tb_auditoria_tabela VALUES("38","TB_PERFIL_FUNCIONALIDADE","I","50","8");

INSERT INTO tb_auditoria_tabela VALUES("39","TB_PERFIL_FUNCIONALIDADE","I","51","8");

INSERT INTO tb_auditoria_tabela VALUES("40","TB_PERFIL_FUNCIONALIDADE","I","52","8");

INSERT INTO tb_auditoria_tabela VALUES("41","TB_PERFIL_FUNCIONALIDADE","I","53","8");

INSERT INTO tb_auditoria_tabela VALUES("42","TB_PERFIL_FUNCIONALIDADE","I","54","8");

INSERT INTO tb_auditoria_tabela VALUES("43","TB_PERFIL_FUNCIONALIDADE","I","55","8");

INSERT INTO tb_auditoria_tabela VALUES("44","TB_PERFIL","I","7","9");

INSERT INTO tb_auditoria_tabela VALUES("45","TB_PERFIL_FUNCIONALIDADE","I","56","9");

INSERT INTO tb_auditoria_tabela VALUES("46","TB_PERFIL_FUNCIONALIDADE","I","57","9");

INSERT INTO tb_auditoria_tabela VALUES("47","TB_PERFIL_FUNCIONALIDADE","I","58","9");

INSERT INTO tb_auditoria_tabela VALUES("48","TB_PERFIL_FUNCIONALIDADE","I","59","9");

INSERT INTO tb_auditoria_tabela VALUES("49","TB_PERFIL_FUNCIONALIDADE","I","60","9");

INSERT INTO tb_auditoria_tabela VALUES("50","TB_PERFIL_FUNCIONALIDADE","I","61","9");

INSERT INTO tb_auditoria_tabela VALUES("51","TB_PERFIL","I","8","10");

INSERT INTO tb_auditoria_tabela VALUES("52","TB_PERFIL_FUNCIONALIDADE","I","62","10");

INSERT INTO tb_auditoria_tabela VALUES("53","TB_PERFIL_FUNCIONALIDADE","I","63","10");

INSERT INTO tb_auditoria_tabela VALUES("54","TB_PERFIL","I","9","11");

INSERT INTO tb_auditoria_tabela VALUES("55","TB_PERFIL_FUNCIONALIDADE","I","64","11");

INSERT INTO tb_auditoria_tabela VALUES("56","TB_PERFIL_FUNCIONALIDADE","I","65","11");

INSERT INTO tb_auditoria_tabela VALUES("57","TB_PERFIL","I","10","12");

INSERT INTO tb_auditoria_tabela VALUES("58","TB_PERFIL_FUNCIONALIDADE","I","66","12");

INSERT INTO tb_auditoria_tabela VALUES("59","TB_PERFIL_FUNCIONALIDADE","I","67","12");

INSERT INTO tb_auditoria_tabela VALUES("60","TB_PERFIL","I","11","13");

INSERT INTO tb_auditoria_tabela VALUES("61","TB_PERFIL_FUNCIONALIDADE","I","68","13");

INSERT INTO tb_auditoria_tabela VALUES("62","TB_PERFIL_FUNCIONALIDADE","I","69","13");

INSERT INTO tb_auditoria_tabela VALUES("63","TB_PERFIL","I","12","14");

INSERT INTO tb_auditoria_tabela VALUES("64","TB_PERFIL_FUNCIONALIDADE","I","70","14");

INSERT INTO tb_auditoria_tabela VALUES("65","TB_PERFIL_FUNCIONALIDADE","I","71","14");

INSERT INTO tb_auditoria_tabela VALUES("66","TB_PERFIL","I","13","15");

INSERT INTO tb_auditoria_tabela VALUES("67","TB_PERFIL_FUNCIONALIDADE","I","72","15");

INSERT INTO tb_auditoria_tabela VALUES("68","TB_PERFIL_FUNCIONALIDADE","I","73","15");

INSERT INTO tb_auditoria_tabela VALUES("69","TB_PERFIL","I","14","16");

INSERT INTO tb_auditoria_tabela VALUES("70","TB_PERFIL_FUNCIONALIDADE","I","74","16");

INSERT INTO tb_auditoria_tabela VALUES("71","TB_PERFIL_FUNCIONALIDADE","I","75","16");

INSERT INTO tb_auditoria_tabela VALUES("72","TB_PERFIL","I","15","17");

INSERT INTO tb_auditoria_tabela VALUES("73","TB_PERFIL_FUNCIONALIDADE","I","76","17");

INSERT INTO tb_auditoria_tabela VALUES("74","TB_PERFIL_FUNCIONALIDADE","I","77","17");

INSERT INTO tb_auditoria_tabela VALUES("75","TB_PERFIL","I","16","18");

INSERT INTO tb_auditoria_tabela VALUES("76","TB_PERFIL_FUNCIONALIDADE","I","78","18");

INSERT INTO tb_auditoria_tabela VALUES("77","TB_PERFIL_FUNCIONALIDADE","I","79","18");

INSERT INTO tb_auditoria_tabela VALUES("78","TB_PERFIL","I","17","19");

INSERT INTO tb_auditoria_tabela VALUES("79","TB_PERFIL_FUNCIONALIDADE","I","80","19");

INSERT INTO tb_auditoria_tabela VALUES("80","TB_PERFIL_FUNCIONALIDADE","I","81","19");

INSERT INTO tb_auditoria_tabela VALUES("81","TB_PERFIL","I","18","20");

INSERT INTO tb_auditoria_tabela VALUES("82","TB_PERFIL_FUNCIONALIDADE","I","82","20");

INSERT INTO tb_auditoria_tabela VALUES("83","TB_PERFIL_FUNCIONALIDADE","I","83","20");

INSERT INTO tb_auditoria_tabela VALUES("84","TB_PERFIL","I","19","21");

INSERT INTO tb_auditoria_tabela VALUES("85","TB_PERFIL_FUNCIONALIDADE","I","84","21");

INSERT INTO tb_auditoria_tabela VALUES("86","TB_PERFIL_FUNCIONALIDADE","I","85","21");

INSERT INTO tb_auditoria_tabela VALUES("87","TB_PERFIL","I","20","22");

INSERT INTO tb_auditoria_tabela VALUES("88","TB_PERFIL_FUNCIONALIDADE","I","86","22");

INSERT INTO tb_auditoria_tabela VALUES("89","TB_PERFIL_FUNCIONALIDADE","I","87","22");

INSERT INTO tb_auditoria_tabela VALUES("90","TB_PERFIL","I","21","23");

INSERT INTO tb_auditoria_tabela VALUES("91","TB_PERFIL_FUNCIONALIDADE","I","88","23");

INSERT INTO tb_auditoria_tabela VALUES("92","TB_PERFIL_FUNCIONALIDADE","I","89","23");

INSERT INTO tb_auditoria_tabela VALUES("93","TB_PERFIL","I","22","24");

INSERT INTO tb_auditoria_tabela VALUES("94","TB_PERFIL_FUNCIONALIDADE","I","90","24");

INSERT INTO tb_auditoria_tabela VALUES("95","TB_PERFIL_FUNCIONALIDADE","I","91","24");

INSERT INTO tb_auditoria_tabela VALUES("96","TB_PERFIL","I","23","25");

INSERT INTO tb_auditoria_tabela VALUES("97","TB_PERFIL_FUNCIONALIDADE","I","92","25");

INSERT INTO tb_auditoria_tabela VALUES("98","TB_PERFIL_FUNCIONALIDADE","I","93","25");

INSERT INTO tb_auditoria_tabela VALUES("99","TB_PERFIL","I","24","26");

INSERT INTO tb_auditoria_tabela VALUES("100","TB_PERFIL_FUNCIONALIDADE","I","94","26");

INSERT INTO tb_auditoria_tabela VALUES("101","TB_PERFIL_FUNCIONALIDADE","I","95","26");

INSERT INTO tb_auditoria_tabela VALUES("102","TB_PERFIL","I","25","27");

INSERT INTO tb_auditoria_tabela VALUES("103","TB_PERFIL_FUNCIONALIDADE","I","96","27");

INSERT INTO tb_auditoria_tabela VALUES("104","TB_PERFIL_FUNCIONALIDADE","I","97","27");

INSERT INTO tb_auditoria_tabela VALUES("105","TB_PERFIL","I","26","28");

INSERT INTO tb_auditoria_tabela VALUES("106","TB_PERFIL_FUNCIONALIDADE","I","98","28");

INSERT INTO tb_auditoria_tabela VALUES("107","TB_PERFIL_FUNCIONALIDADE","I","99","28");

INSERT INTO tb_auditoria_tabela VALUES("108","TB_PERFIL","I","27","29");

INSERT INTO tb_auditoria_tabela VALUES("109","TB_PERFIL_FUNCIONALIDADE","I","100","29");

INSERT INTO tb_auditoria_tabela VALUES("110","TB_PERFIL_FUNCIONALIDADE","I","101","29");

INSERT INTO tb_auditoria_tabela VALUES("111","TB_PERFIL","U","5","30");

INSERT INTO tb_auditoria_tabela VALUES("112","TB_PERFIL_FUNCIONALIDADE","D","","30");

INSERT INTO tb_auditoria_tabela VALUES("113","TB_PERFIL_FUNCIONALIDADE","I","102","30");

INSERT INTO tb_auditoria_tabela VALUES("114","TB_PERFIL_FUNCIONALIDADE","I","103","30");

INSERT INTO tb_auditoria_tabela VALUES("115","TB_PERFIL_FUNCIONALIDADE","I","104","30");

INSERT INTO tb_auditoria_tabela VALUES("116","TB_PERFIL_FUNCIONALIDADE","I","105","30");

INSERT INTO tb_auditoria_tabela VALUES("117","TB_PERFIL","U","3","31");

INSERT INTO tb_auditoria_tabela VALUES("118","TB_PERFIL_FUNCIONALIDADE","D","","31");

INSERT INTO tb_auditoria_tabela VALUES("119","TB_PERFIL_FUNCIONALIDADE","I","106","31");

INSERT INTO tb_auditoria_tabela VALUES("120","TB_PERFIL_FUNCIONALIDADE","I","107","31");

INSERT INTO tb_auditoria_tabela VALUES("121","TB_PERFIL","U","2","32");

INSERT INTO tb_auditoria_tabela VALUES("122","TB_PERFIL_FUNCIONALIDADE","D","","32");

INSERT INTO tb_auditoria_tabela VALUES("123","TB_PERFIL_FUNCIONALIDADE","I","108","32");

INSERT INTO tb_auditoria_tabela VALUES("124","TB_PERFIL_FUNCIONALIDADE","I","109","32");

INSERT INTO tb_auditoria_tabela VALUES("125","TB_PERFIL_FUNCIONALIDADE","I","110","32");

INSERT INTO tb_auditoria_tabela VALUES("126","TB_PERFIL_FUNCIONALIDADE","I","111","32");

INSERT INTO tb_auditoria_tabela VALUES("127","TB_PERFIL_FUNCIONALIDADE","I","112","32");

INSERT INTO tb_auditoria_tabela VALUES("128","TB_PERFIL_FUNCIONALIDADE","I","113","32");

INSERT INTO tb_auditoria_tabela VALUES("129","TB_PERFIL_FUNCIONALIDADE","I","114","32");

INSERT INTO tb_auditoria_tabela VALUES("130","TB_PERFIL_FUNCIONALIDADE","I","115","32");

INSERT INTO tb_auditoria_tabela VALUES("131","TB_PERFIL_FUNCIONALIDADE","I","116","32");

INSERT INTO tb_auditoria_tabela VALUES("132","TB_PERFIL_FUNCIONALIDADE","I","117","32");

INSERT INTO tb_auditoria_tabela VALUES("133","TB_FUNCIONALIDADE","U","18","33");

INSERT INTO tb_auditoria_tabela VALUES("134","TB_PERFIL_FUNCIONALIDADE","D","","33");

INSERT INTO tb_auditoria_tabela VALUES("135","TB_PERFIL_FUNCIONALIDADE","I","118","33");

INSERT INTO tb_auditoria_tabela VALUES("136","TB_FUNCIONALIDADE","U","6","34");

INSERT INTO tb_auditoria_tabela VALUES("137","TB_PERFIL_FUNCIONALIDADE","D","","34");

INSERT INTO tb_auditoria_tabela VALUES("138","TB_PERFIL_FUNCIONALIDADE","I","119","34");

INSERT INTO tb_auditoria_tabela VALUES("139","TB_CONTATO","U","74","35");

INSERT INTO tb_auditoria_tabela VALUES("140","TB_ENDERECO","U","72","35");

INSERT INTO tb_auditoria_tabela VALUES("141","TB_PESSOA","U","72","35");

INSERT INTO tb_auditoria_tabela VALUES("142","TB_USUARIO","U","8","35");

INSERT INTO tb_auditoria_tabela VALUES("143","TB_USUARIO_PERFIL","D","","35");

INSERT INTO tb_auditoria_tabela VALUES("144","TB_USUARIO_PERFIL","I","39","35");

INSERT INTO tb_auditoria_tabela VALUES("145","TB_USUARIO_PERFIL","I","40","35");

INSERT INTO tb_auditoria_tabela VALUES("146","TB_USUARIO_PERFIL","I","41","35");

INSERT INTO tb_auditoria_tabela VALUES("147","TB_USUARIO_PERFIL","I","42","35");

INSERT INTO tb_auditoria_tabela VALUES("148","TB_USUARIO_PERFIL","I","43","35");

INSERT INTO tb_auditoria_tabela VALUES("149","TB_CONTATO","U","36","36");

INSERT INTO tb_auditoria_tabela VALUES("150","TB_ENDERECO","U","36","36");

INSERT INTO tb_auditoria_tabela VALUES("151","TB_PESSOA","U","36","36");

INSERT INTO tb_auditoria_tabela VALUES("152","TB_USUARIO","U","4","36");

INSERT INTO tb_auditoria_tabela VALUES("153","TB_USUARIO_PERFIL","D","","36");

INSERT INTO tb_auditoria_tabela VALUES("154","TB_USUARIO_PERFIL","I","44","36");

INSERT INTO tb_auditoria_tabela VALUES("155","TB_USUARIO_PERFIL","I","45","36");

INSERT INTO tb_auditoria_tabela VALUES("156","TB_USUARIO_PERFIL","I","46","36");

INSERT INTO tb_auditoria_tabela VALUES("157","TB_USUARIO_PERFIL","I","47","36");

INSERT INTO tb_auditoria_tabela VALUES("158","TB_CONTATO","U","62","37");

INSERT INTO tb_auditoria_tabela VALUES("159","TB_ENDERECO","U","61","37");

INSERT INTO tb_auditoria_tabela VALUES("160","TB_PESSOA","U","61","37");

INSERT INTO tb_auditoria_tabela VALUES("161","TB_USUARIO","U","7","37");

INSERT INTO tb_auditoria_tabela VALUES("162","TB_USUARIO_PERFIL","D","","37");

INSERT INTO tb_auditoria_tabela VALUES("163","TB_USUARIO_PERFIL","I","48","37");

INSERT INTO tb_auditoria_tabela VALUES("164","TB_USUARIO_PERFIL","I","49","37");

INSERT INTO tb_auditoria_tabela VALUES("165","TB_USUARIO_PERFIL","I","50","37");

INSERT INTO tb_auditoria_tabela VALUES("166","TB_USUARIO_PERFIL","I","51","37");

INSERT INTO tb_auditoria_tabela VALUES("167","TB_IMAGEM","U","37","38");

INSERT INTO tb_auditoria_tabela VALUES("168","TB_CONTATO","U","37","38");

INSERT INTO tb_auditoria_tabela VALUES("169","TB_ENDERECO","U","37","38");

INSERT INTO tb_auditoria_tabela VALUES("170","TB_PESSOA","U","37","38");

INSERT INTO tb_auditoria_tabela VALUES("171","TB_USUARIO","U","5","38");

INSERT INTO tb_auditoria_tabela VALUES("172","TB_USUARIO_PERFIL","D","","38");

INSERT INTO tb_auditoria_tabela VALUES("173","TB_USUARIO_PERFIL","I","52","38");

INSERT INTO tb_auditoria_tabela VALUES("174","TB_USUARIO_PERFIL","I","53","38");

INSERT INTO tb_auditoria_tabela VALUES("175","TB_USUARIO_PERFIL","I","54","38");

INSERT INTO tb_auditoria_tabela VALUES("176","TB_USUARIO_PERFIL","I","55","38");

INSERT INTO tb_auditoria_tabela VALUES("177","TB_CONTATO","U","1","39");

INSERT INTO tb_auditoria_tabela VALUES("178","TB_ENDERECO","U","1","39");

INSERT INTO tb_auditoria_tabela VALUES("179","TB_PESSOA","U","1","39");

INSERT INTO tb_auditoria_tabela VALUES("180","TB_USUARIO","U","1","39");

INSERT INTO tb_auditoria_tabela VALUES("181","TB_USUARIO_PERFIL","D","","39");

INSERT INTO tb_auditoria_tabela VALUES("182","TB_USUARIO_PERFIL","I","56","39");

INSERT INTO tb_auditoria_tabela VALUES("183","TB_USUARIO_PERFIL","I","57","39");

INSERT INTO tb_auditoria_tabela VALUES("184","TB_USUARIO_PERFIL","I","58","39");

INSERT INTO tb_auditoria_tabela VALUES("185","TB_PERFIL_AGENDA","D","","40");

INSERT INTO tb_auditoria_tabela VALUES("186","TB_AGENDA","U","3","40");

INSERT INTO tb_auditoria_tabela VALUES("187","TB_PERFIL_AGENDA","I","11","40");

INSERT INTO tb_auditoria_tabela VALUES("188","TB_PERFIL_AGENDA","I","12","40");

INSERT INTO tb_auditoria_tabela VALUES("189","TB_AGENDA","I","4","41");

INSERT INTO tb_auditoria_tabela VALUES("190","TB_PERFIL_AGENDA","I","13","41");

INSERT INTO tb_auditoria_tabela VALUES("191","TB_PERFIL_AGENDA","I","14","41");

INSERT INTO tb_auditoria_tabela VALUES("192","TB_AGENDA","I","5","42");

INSERT INTO tb_auditoria_tabela VALUES("193","TB_PERFIL_AGENDA","I","15","42");

INSERT INTO tb_auditoria_tabela VALUES("194","TB_AGENDA","I","6","43");

INSERT INTO tb_auditoria_tabela VALUES("195","TB_PERFIL_AGENDA","I","16","43");

INSERT INTO tb_auditoria_tabela VALUES("196","TB_AGENDA","I","7","44");

INSERT INTO tb_auditoria_tabela VALUES("197","TB_PERFIL_AGENDA","I","17","44");

INSERT INTO tb_auditoria_tabela VALUES("198","TB_ENDERECO","I","233","45");

INSERT INTO tb_auditoria_tabela VALUES("199","TB_CONTATO","U","6","45");

INSERT INTO tb_auditoria_tabela VALUES("200","TB_IMAGEM","U","6","45");

INSERT INTO tb_auditoria_tabela VALUES("201","TB_PESSOA","U","6","45");

INSERT INTO tb_auditoria_tabela VALUES("202","TB_USUARIO","I","15","45");

INSERT INTO tb_auditoria_tabela VALUES("203","TB_USUARIO_PERFIL","I","60","45");

INSERT INTO tb_auditoria_tabela VALUES("204","TB_ENDERECO","I","234","46");

INSERT INTO tb_auditoria_tabela VALUES("205","TB_CONTATO","U","6","46");

INSERT INTO tb_auditoria_tabela VALUES("206","TB_IMAGEM","U","6","46");

INSERT INTO tb_auditoria_tabela VALUES("207","TB_PESSOA","U","6","46");

INSERT INTO tb_auditoria_tabela VALUES("208","TB_USUARIO","I","16","46");

INSERT INTO tb_auditoria_tabela VALUES("209","TB_USUARIO_PERFIL","I","61","46");

INSERT INTO tb_auditoria_tabela VALUES("236","TB_ENDERECO","I","242","54");

INSERT INTO tb_auditoria_tabela VALUES("237","TB_CONTATO","U","6","54");

INSERT INTO tb_auditoria_tabela VALUES("238","TB_IMAGEM","U","6","54");

INSERT INTO tb_auditoria_tabela VALUES("239","TB_PESSOA","U","6","54");

INSERT INTO tb_auditoria_tabela VALUES("240","TB_USUARIO","I","21","54");

INSERT INTO tb_auditoria_tabela VALUES("241","TB_USUARIO_PERFIL","I","62","54");

INSERT INTO tb_auditoria_tabela VALUES("242","TB_IMAGEM","U","6","55");

INSERT INTO tb_auditoria_tabela VALUES("243","TB_CONTATO","U","6","55");

INSERT INTO tb_auditoria_tabela VALUES("244","TB_ENDERECO","U","242","55");

INSERT INTO tb_auditoria_tabela VALUES("245","TB_PESSOA","U","6","55");

INSERT INTO tb_auditoria_tabela VALUES("246","TB_USUARIO","U","21","55");

INSERT INTO tb_auditoria_tabela VALUES("247","TB_USUARIO_PERFIL","D","","55");

INSERT INTO tb_auditoria_tabela VALUES("248","TB_USUARIO_PERFIL","I","63","55");

INSERT INTO tb_auditoria_tabela VALUES("249","TB_USUARIO_PERFIL","I","64","55");

INSERT INTO tb_auditoria_tabela VALUES("250","TB_USUARIO_PERFIL","I","65","55");

INSERT INTO tb_auditoria_tabela VALUES("251","TB_ENDERECO","I","243","56");

INSERT INTO tb_auditoria_tabela VALUES("252","TB_CONTATO","I","236","56");

INSERT INTO tb_auditoria_tabela VALUES("253","TB_IMAGEM","I","236","56");

INSERT INTO tb_auditoria_tabela VALUES("254","TB_PESSOA","I","233","56");

INSERT INTO tb_auditoria_tabela VALUES("255","TB_USUARIO","I","22","56");

INSERT INTO tb_auditoria_tabela VALUES("256","TB_USUARIO_PERFIL","I","66","56");

INSERT INTO tb_auditoria_tabela VALUES("257","TB_CONTATO","U","236","57");

INSERT INTO tb_auditoria_tabela VALUES("258","TB_ENDERECO","U","243","57");

INSERT INTO tb_auditoria_tabela VALUES("259","TB_PESSOA","U","233","57");

INSERT INTO tb_auditoria_tabela VALUES("260","TB_USUARIO","U","22","57");

INSERT INTO tb_auditoria_tabela VALUES("261","TB_USUARIO_PERFIL","D","","57");

INSERT INTO tb_auditoria_tabela VALUES("262","TB_USUARIO_PERFIL","I","67","57");

INSERT INTO tb_auditoria_tabela VALUES("263","TB_USUARIO_PERFIL","I","68","57");

INSERT INTO tb_auditoria_tabela VALUES("264","TB_ENDERECO","I","244","58");

INSERT INTO tb_auditoria_tabela VALUES("265","TB_CONTATO","U","181","58");

INSERT INTO tb_auditoria_tabela VALUES("266","TB_IMAGEM","U","181","58");

INSERT INTO tb_auditoria_tabela VALUES("267","TB_PESSOA","U","178","58");

INSERT INTO tb_auditoria_tabela VALUES("268","TB_USUARIO","I","23","58");

INSERT INTO tb_auditoria_tabela VALUES("269","TB_USUARIO_PERFIL","I","69","58");

INSERT INTO tb_auditoria_tabela VALUES("270","TB_PERFIL_AGENDA","D","","59");

INSERT INTO tb_auditoria_tabela VALUES("271","TB_ENDERECO","U","247","59");

INSERT INTO tb_auditoria_tabela VALUES("272","TB_AGENDA","U","5","59");

INSERT INTO tb_auditoria_tabela VALUES("273","TB_PERFIL_AGENDA","I","18","59");

INSERT INTO tb_auditoria_tabela VALUES("281","TB_IMAGEM","I","240","65");

INSERT INTO tb_auditoria_tabela VALUES("282","TB_EVENTO","I","3","65");

INSERT INTO tb_auditoria_tabela VALUES("283","TB_IMAGEM","I","241","65");

INSERT INTO tb_auditoria_tabela VALUES("284","TB_IMAGEM_EVENTO","I","1","65");

INSERT INTO tb_auditoria_tabela VALUES("285","TB_IMAGEM","I","242","65");

INSERT INTO tb_auditoria_tabela VALUES("286","TB_IMAGEM_EVENTO","I","2","65");

INSERT INTO tb_auditoria_tabela VALUES("287","TB_IMAGEM","I","243","65");

INSERT INTO tb_auditoria_tabela VALUES("288","TB_IMAGEM_EVENTO","I","3","65");

INSERT INTO tb_auditoria_tabela VALUES("289","TB_IMAGEM","I","244","65");

INSERT INTO tb_auditoria_tabela VALUES("290","TB_IMAGEM_EVENTO","I","4","65");

INSERT INTO tb_auditoria_tabela VALUES("291","TB_IMAGEM","I","245","65");

INSERT INTO tb_auditoria_tabela VALUES("292","TB_IMAGEM_EVENTO","I","5","65");

INSERT INTO tb_auditoria_tabela VALUES("293","TB_IMAGEM","I","246","65");

INSERT INTO tb_auditoria_tabela VALUES("294","TB_IMAGEM_EVENTO","I","6","65");

INSERT INTO tb_auditoria_tabela VALUES("295","TB_IMAGEM","I","247","65");

INSERT INTO tb_auditoria_tabela VALUES("296","TB_IMAGEM_EVENTO","I","7","65");

INSERT INTO tb_auditoria_tabela VALUES("297","TB_IMAGEM","I","248","65");

INSERT INTO tb_auditoria_tabela VALUES("298","TB_IMAGEM_EVENTO","I","8","65");

INSERT INTO tb_auditoria_tabela VALUES("299","TB_IMAGEM","I","249","65");

INSERT INTO tb_auditoria_tabela VALUES("300","TB_IMAGEM_EVENTO","I","9","65");

INSERT INTO tb_auditoria_tabela VALUES("301","TB_IMAGEM","I","250","65");

INSERT INTO tb_auditoria_tabela VALUES("302","TB_IMAGEM_EVENTO","I","10","65");

INSERT INTO tb_auditoria_tabela VALUES("303","TB_IMAGEM","I","251","65");

INSERT INTO tb_auditoria_tabela VALUES("304","TB_IMAGEM_EVENTO","I","11","65");

INSERT INTO tb_auditoria_tabela VALUES("305","TB_ENDERECO","I","251","65");

INSERT INTO tb_auditoria_tabela VALUES("306","TB_AGENDA","I","10","65");

INSERT INTO tb_auditoria_tabela VALUES("307","TB_PERFIL_AGENDA","I","19","65");

INSERT INTO tb_auditoria_tabela VALUES("308","TB_PERFIL_AGENDA","I","20","65");

INSERT INTO tb_auditoria_tabela VALUES("309","TB_ENDERECO","I","252","66");

INSERT INTO tb_auditoria_tabela VALUES("310","TB_AGENDA","I","1","66");

INSERT INTO tb_auditoria_tabela VALUES("311","TB_PERFIL_AGENDA","I","21","66");

INSERT INTO tb_auditoria_tabela VALUES("312","TB_ENDERECO","I","253","67");

INSERT INTO tb_auditoria_tabela VALUES("313","TB_AGENDA","I","2","67");

INSERT INTO tb_auditoria_tabela VALUES("314","TB_IMAGEM","I","252","67");

INSERT INTO tb_auditoria_tabela VALUES("315","TB_EVENTO","I","1","67");

INSERT INTO tb_auditoria_tabela VALUES("316","TB_IMAGEM","I","253","67");

INSERT INTO tb_auditoria_tabela VALUES("317","TB_IMAGEM_EVENTO","I","12","67");

INSERT INTO tb_auditoria_tabela VALUES("318","TB_IMAGEM","I","254","67");

INSERT INTO tb_auditoria_tabela VALUES("319","TB_IMAGEM_EVENTO","I","13","67");

INSERT INTO tb_auditoria_tabela VALUES("320","TB_IMAGEM","I","255","67");

INSERT INTO tb_auditoria_tabela VALUES("321","TB_IMAGEM_EVENTO","I","14","67");

INSERT INTO tb_auditoria_tabela VALUES("322","TB_IMAGEM","I","256","67");

INSERT INTO tb_auditoria_tabela VALUES("323","TB_IMAGEM_EVENTO","I","15","67");

INSERT INTO tb_auditoria_tabela VALUES("324","TB_IMAGEM","I","257","67");

INSERT INTO tb_auditoria_tabela VALUES("325","TB_IMAGEM_EVENTO","I","16","67");

INSERT INTO tb_auditoria_tabela VALUES("326","TB_IMAGEM","I","258","67");

INSERT INTO tb_auditoria_tabela VALUES("327","TB_IMAGEM_EVENTO","I","17","67");

INSERT INTO tb_auditoria_tabela VALUES("328","TB_IMAGEM","I","259","67");

INSERT INTO tb_auditoria_tabela VALUES("329","TB_IMAGEM_EVENTO","I","18","67");

INSERT INTO tb_auditoria_tabela VALUES("330","TB_IMAGEM","I","260","67");

INSERT INTO tb_auditoria_tabela VALUES("331","TB_IMAGEM_EVENTO","I","19","67");

INSERT INTO tb_auditoria_tabela VALUES("332","TB_IMAGEM","I","261","67");

INSERT INTO tb_auditoria_tabela VALUES("333","TB_IMAGEM_EVENTO","I","20","67");

INSERT INTO tb_auditoria_tabela VALUES("334","TB_IMAGEM","I","262","67");

INSERT INTO tb_auditoria_tabela VALUES("335","TB_IMAGEM_EVENTO","I","21","67");

INSERT INTO tb_auditoria_tabela VALUES("336","TB_IMAGEM","I","263","67");

INSERT INTO tb_auditoria_tabela VALUES("337","TB_IMAGEM_EVENTO","I","22","67");

INSERT INTO tb_auditoria_tabela VALUES("338","TB_PERFIL_AGENDA","I","22","67");

INSERT INTO tb_auditoria_tabela VALUES("339","TB_ENDERECO","I","254","68");

INSERT INTO tb_auditoria_tabela VALUES("340","TB_AGENDA","I","3","68");

INSERT INTO tb_auditoria_tabela VALUES("341","TB_AGENDA_EVENTO","I","1","68");

INSERT INTO tb_auditoria_tabela VALUES("342","TB_PERFIL_AGENDA","I","23","68");




DROP TABLE IF EXISTS tb_categoria_agenda;


CREATE TABLE `tb_categoria_agenda` (
  `co_categoria_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_agenda` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_cor` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`co_categoria_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tb_categoria_agenda VALUES("1","Reunião","green");

INSERT INTO tb_categoria_agenda VALUES("2","Ensaio","default");

INSERT INTO tb_categoria_agenda VALUES("3","Encontro","purple");

INSERT INTO tb_categoria_agenda VALUES("4","Formação","orange");

INSERT INTO tb_categoria_agenda VALUES("5","Evento","beige");

INSERT INTO tb_categoria_agenda VALUES("6","Intercessão","black");

INSERT INTO tb_categoria_agenda VALUES("7","Outros","warning");




DROP TABLE IF EXISTS tb_categoria_evento;


CREATE TABLE `tb_categoria_evento` (
  `co_categoria_evento` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_evento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`co_categoria_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;





DROP TABLE IF EXISTS tb_contato;


CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;


INSERT INTO tb_contato VALUES("1","61993274991","6130826060","","leonardomcbessa@gmail.com");

INSERT INTO tb_contato VALUES("2","61995022920","61982512602","","amandatominaginha@gmail.com");

INSERT INTO tb_contato VALUES("3","6134588070","6134588070","","igoor20boorges25@gmail.com");

INSERT INTO tb_contato VALUES("4","61984800492","","","nayane.duda11@gmail.com");

INSERT INTO tb_contato VALUES("6","62982163027","___________","","henriquecarvalhohca@outlook.com");

INSERT INTO tb_contato VALUES("7","61998216342","61982610934","","amandasliima@hotmail.com");

INSERT INTO tb_contato VALUES("8","61993898324","61994186538","","jerlanesilva06@gmail.com");

INSERT INTO tb_contato VALUES("9","61982361967","61993077479","","Joaopereira407@hotmail.com");

INSERT INTO tb_contato VALUES("10","61992850286","61995282513","","karenn.geovanna@gmail.com");

INSERT INTO tb_contato VALUES("11","61996330428","","","lilirtais@gmail.com");

INSERT INTO tb_contato VALUES("13","6192198414","6182701888","","frabriceras15@gmail.com");

INSERT INTO tb_contato VALUES("14","61982609125","61981214179","","sirlei_arq@hotmail.com");

INSERT INTO tb_contato VALUES("16","61995637226","61993166755","","lucaslcr33@gmail.com");

INSERT INTO tb_contato VALUES("17","61984390834","6132086444","","wallissonirvans@gmail.com");

INSERT INTO tb_contato VALUES("18","61992775753","","","manuela@marangoni.adm.br");

INSERT INTO tb_contato VALUES("19","61933593574","61933593574","","priscilamartins213@gmail.com");

INSERT INTO tb_contato VALUES("20","61995753532","61991157538","","mercia.batista@hotmail.com");

INSERT INTO tb_contato VALUES("21","61984269119","","","v.cristinabsb.vc@gmail.com");

INSERT INTO tb_contato VALUES("23","61991869697","","","alunodiogoetb@gmail.com");

INSERT INTO tb_contato VALUES("24","61992458959","6133778341","","cassiorodriguescastro08@gmail.com");

INSERT INTO tb_contato VALUES("25","61986725701","61986521612","","mendescatherine44@gmail.com");

INSERT INTO tb_contato VALUES("26","61995021840","","","tominagaiv@gmail.com");

INSERT INTO tb_contato VALUES("27","61999567013","61999567013","","thaynaratonhaz@gmail.com");

INSERT INTO tb_contato VALUES("29","61984640608","61992953159","","Ericastephanie2015@gmail.com");

INSERT INTO tb_contato VALUES("31","61993151297","","","lucrece.neri@hotmail.com");

INSERT INTO tb_contato VALUES("32","61985667861","61999043516","","pedroaugustopacheco12@gmail.com");

INSERT INTO tb_contato VALUES("33","61996979071","6135972532","","Gsouzat28@gmail.com");

INSERT INTO tb_contato VALUES("34","6195121814","","","Rauldmc52@gmail.com");

INSERT INTO tb_contato VALUES("36","61991984370","___________","","lukka_bessa@hotmail.com");

INSERT INTO tb_contato VALUES("37","61991058681","___________","","lele.403@hotmail.com");

INSERT INTO tb_contato VALUES("39","61994129510","","","vicclima123@hotmail.com");

INSERT INTO tb_contato VALUES("41","61985548484","6134586918","","gabimsouza_@hotmail.com");

INSERT INTO tb_contato VALUES("42","61985548484","61986090912","","gabimsouza_@hotmail.con");

INSERT INTO tb_contato VALUES("44","61993872602","61930814590","","vitorhbarroso@hotmail.com");

INSERT INTO tb_contato VALUES("47","61992563934","61992563934","","carlos.lima.18@hotmai.com");

INSERT INTO tb_contato VALUES("48","61991893526","","","larissamesquita98@gmail.com");

INSERT INTO tb_contato VALUES("49","61995801026","","","carloschristian03@gmail.com");

INSERT INTO tb_contato VALUES("50","61986194836","61985671063","","Pcdanielle12@gmail.com");

INSERT INTO tb_contato VALUES("51","61930395165","61999800644","","Babynhalindinha_@hotmail.com");

INSERT INTO tb_contato VALUES("52","61993288306","6191621818","","paulin_adt@hotmail.com");

INSERT INTO tb_contato VALUES("53","61992516402","61933596361","","Karollina@live.com");

INSERT INTO tb_contato VALUES("54","","","","");

INSERT INTO tb_contato VALUES("55","61984727547","","","Gabiribas746@gmail.com");

INSERT INTO tb_contato VALUES("56","61993935517","61981975822","","monique.vieira999@gmail.com");

INSERT INTO tb_contato VALUES("57","61992660496","","","Leazevedob@gmail.com");

INSERT INTO tb_contato VALUES("58","61992971837","","","thaisksm23@gmail.com");

INSERT INTO tb_contato VALUES("59","61991426490","61999661640","","leticia.martinsousa@hotmail.com");

INSERT INTO tb_contato VALUES("60","61991839164","","","keitermaia@hotmail.com");

INSERT INTO tb_contato VALUES("61","61980748329","61991124059","","ronielrodrigues.96@hotmail.com");

INSERT INTO tb_contato VALUES("62","6191066240","6191066240_","","lililasp@gmail.com");

INSERT INTO tb_contato VALUES("63","61991981891","61992240268","","Thamiires369@gmail.com");

INSERT INTO tb_contato VALUES("64","61984199148","61992225838","","annacarolinyr46@gmail.com");

INSERT INTO tb_contato VALUES("65","61985376731","","","clarissevitoriafranca@gmail.com");

INSERT INTO tb_contato VALUES("66","","","","");

INSERT INTO tb_contato VALUES("67","6193826548","6192641163","","Joycefe.lopes@gmail.com");

INSERT INTO tb_contato VALUES("68","61992030663","61991698705","","sabreu192@gmail.com");

INSERT INTO tb_contato VALUES("69","61985784112","61985175039","","Kaasilva0720@gmail.com");

INSERT INTO tb_contato VALUES("70","61992771024","","","leticiapsilva03@gmail.com");

INSERT INTO tb_contato VALUES("71","61982057541","","","Evelynk039@gmail.com");

INSERT INTO tb_contato VALUES("72","61986519709","61985390854","","taynararibeirodelima@gmail.com");

INSERT INTO tb_contato VALUES("73","61985548484","61934586918","","adriel_eas22k@live.com");

INSERT INTO tb_contato VALUES("74","61993259985","","","Linnekerlima@hotmail.com");

INSERT INTO tb_contato VALUES("75","61985539668","","","kamilaf.silva@hotmail.com");

INSERT INTO tb_contato VALUES("76","61983049879","","","tayanne734@gmail.com");

INSERT INTO tb_contato VALUES("77","996657709","992263829","","Luamar305@gmail.com");

INSERT INTO tb_contato VALUES("78","6133598986","6133598986","","carolinadossantoscfds@outlook.com");

INSERT INTO tb_contato VALUES("79","62998583534","6185548484","","garciamendesisabella@gmail.com");

INSERT INTO tb_contato VALUES("81","61982892125","61981173673","","Labussolo@gmail.com");

INSERT INTO tb_contato VALUES("82","61999620997","61999620997","","Mayllasbalzani@gmail.com");

INSERT INTO tb_contato VALUES("83","61996489605","61996489605","","jessikalayanerocha@gmail.com");

INSERT INTO tb_contato VALUES("84","61993896214","61992563934","","brena.kga.03@gmail.com");

INSERT INTO tb_contato VALUES("85","61985664072","61985315392","","jdarc.foliveira@gmail.com");

INSERT INTO tb_contato VALUES("86","61998762818","6135418425","","deivsonef@gmail.com");

INSERT INTO tb_contato VALUES("87","61992847325","","","victtoria.leal@trf1.jus.br");

INSERT INTO tb_contato VALUES("88","61985032230","","","Gustavinho.rgs@hotmail.com");

INSERT INTO tb_contato VALUES("89","61986785106","61985494269","","edylenedacruzsilvalene@hotmail.com");

INSERT INTO tb_contato VALUES("90","61982999300","","","gleice.izazavedo@gmail.com");

INSERT INTO tb_contato VALUES("92","61983701441","61985494269","","barbosagabrieldasilva9@gmail.com");

INSERT INTO tb_contato VALUES("93","61982377985","61982207943","","Palomaferreira710@gmail.com");

INSERT INTO tb_contato VALUES("94","6199446855","6193240068","","Marialeticiaestrela2011@hotmail.com");

INSERT INTO tb_contato VALUES("95","66995622616","61986061761","","danielsalmeidacontato@gmail.com");

INSERT INTO tb_contato VALUES("97","61995250255","61992240268","","thaynara.mkt@gmail.com");

INSERT INTO tb_contato VALUES("98","61992023817","61996520935","","Jbiancapsdf@hotmail.com");

INSERT INTO tb_contato VALUES("99","61991546230","61998066851","","diego46ziinho@gmail.com");

INSERT INTO tb_contato VALUES("100","61996681204","","","maysapd@hotmail.com");

INSERT INTO tb_contato VALUES("102","61985547353","61981392235","","nandasc2000@gmail.com");

INSERT INTO tb_contato VALUES("103","61998812820","61996834444","","orlinda_bizerra@hotmail.com");

INSERT INTO tb_contato VALUES("105","61995438917","","","patttynevesaa@hotmail.com");

INSERT INTO tb_contato VALUES("106","","","","");

INSERT INTO tb_contato VALUES("107","61984995380","","","fehs2gomes@hotmail.com");

INSERT INTO tb_contato VALUES("108","61992797426","6133770288","","pires.h.pedro@gmail.com");

INSERT INTO tb_contato VALUES("109","61984352161","","","ronnytominaga@gmail.com");

INSERT INTO tb_contato VALUES("110","61999350611","61996528144","","Biancaceci.vieira02@gmail.com");

INSERT INTO tb_contato VALUES("111","61991683338","61995326987","","Victorhuugo1@outlook.com");

INSERT INTO tb_contato VALUES("112","61998590100","61993259985","","tayane.moreira16@gmail.com");

INSERT INTO tb_contato VALUES("113","6199457429","6191389257","","martinhakarina1980@gmail.com");

INSERT INTO tb_contato VALUES("114","61993836591","6133793695","","anasantos17021997@gmail.com");

INSERT INTO tb_contato VALUES("115","61991901852","","","brunolsouza20@gmail.com");

INSERT INTO tb_contato VALUES("116","6181006608","6181006608","","Sonmurillo@gmail.com");

INSERT INTO tb_contato VALUES("117","61991827340","","","Nathalyapimentel.np@gmail.com");

INSERT INTO tb_contato VALUES("118","61991031121","","","Pedrogt20@gmail.com");

INSERT INTO tb_contato VALUES("119","61991535796","","","dentistajoaocarlos@gmail.com");

INSERT INTO tb_contato VALUES("120","61992357123","61983379759","","jcamila92@gmail.com");

INSERT INTO tb_contato VALUES("121","61996289579","61995941255","","laradesousaalmeida@gmail.com");

INSERT INTO tb_contato VALUES("122","6186466962","61982515049","","larissanobrelnc@gmail.com");

INSERT INTO tb_contato VALUES("124","6185749300","6132575264","","abruna268@gmail.com");

INSERT INTO tb_contato VALUES("125","61998727815","","","honoriodebora1@gmail.com");

INSERT INTO tb_contato VALUES("126","61999646727","61999376262","","mariaclaudia11@gmail.com");

INSERT INTO tb_contato VALUES("127","61986084526","61993836591","","Yaraanjinha2011@gmail.com");

INSERT INTO tb_contato VALUES("128","61992626767","","","baraunaelton9@gmail.com");

INSERT INTO tb_contato VALUES("129","61983104193","6191660308","","Vitorribeirogatao37@gmail.com");

INSERT INTO tb_contato VALUES("130","61992231152","61992703294","","Taynararoodriguess@gmail.com");

INSERT INTO tb_contato VALUES("132","61984692820","","","romulomiran@hotmail.com");

INSERT INTO tb_contato VALUES("133","61985101194","61993615001","","dory193@gmail.com");

INSERT INTO tb_contato VALUES("134","61998581287","","","thaisxavieraraujo@gmail.com");

INSERT INTO tb_contato VALUES("135","61982512602","61992203000","","Leila.tominaga@gmail.com");

INSERT INTO tb_contato VALUES("136","61982608328","61982484443","","maquiagem.mari@gmail.com");

INSERT INTO tb_contato VALUES("137","61993700259","6134598623","","lidianeadm2010@gmail.com");

INSERT INTO tb_contato VALUES("138","6130131416","","","kamilaf.silvac@gmail.com");

INSERT INTO tb_contato VALUES("139","6186339292","61984131001","","Brunnsalvatora@gmail.com");

INSERT INTO tb_contato VALUES("140","61998458464","61999910092","","Jhonyferreirafsa@hotmail.com");

INSERT INTO tb_contato VALUES("142","61985948276","","","Jeffersonfillipe7@gmail.com");

INSERT INTO tb_contato VALUES("143","61991479934","61992001998","","Yankalive@hotmail.com");

INSERT INTO tb_contato VALUES("144","61993308785","61992623343","","Gabrielle-dailu@hotmail.com");

INSERT INTO tb_contato VALUES("145","61998785437","61985739058","","Simone.2lima@hotmail.com");

INSERT INTO tb_contato VALUES("146","61985739058","61985785437","","Wesley@evolucaoauditoria.com.br");

INSERT INTO tb_contato VALUES("147","61999709770","","","smyjapa@gmail.com");

INSERT INTO tb_contato VALUES("148","61992687554","61984235595","","larissacharcon@gmail.com");

INSERT INTO tb_contato VALUES("149","61984466993","61986380391","","dudaaaahfreitas@hotmal.com");

INSERT INTO tb_contato VALUES("150","61993055454","","","Karlenerlima@gmail.com");

INSERT INTO tb_contato VALUES("160","61984453926","","","ceci.rns123@gmail.com");

INSERT INTO tb_contato VALUES("161","61995904410","61992829568","","Beatrizjbfly@gmail.com");

INSERT INTO tb_contato VALUES("162","61985489302","","","Mathkurama27@gmail.com");

INSERT INTO tb_contato VALUES("163","61983478390","","","wesley418418@gmail.com");

INSERT INTO tb_contato VALUES("164","61986379360","","","Victorsamueel@hotmail.com");

INSERT INTO tb_contato VALUES("165","61995726439","","","sicahow.sc@gmail.com");

INSERT INTO tb_contato VALUES("166","61996430509","","","mineirob15@gmail.com");

INSERT INTO tb_contato VALUES("167","61996140871","6185545695","","Josebarros100@hotmail.com");

INSERT INTO tb_contato VALUES("168","61999884614","","","Guilherme123@hotmail.com");

INSERT INTO tb_contato VALUES("169","61992859045","","","guilherme.gato401@gmail.com");

INSERT INTO tb_contato VALUES("170","61982998075","61981054652","","marindemaria@gmail.com");

INSERT INTO tb_contato VALUES("171","61993116666","","","Beatriizfd14@gmail.com");

INSERT INTO tb_contato VALUES("172","61982263494","61982830710","","letipereira16.ls@gmail.com");

INSERT INTO tb_contato VALUES("173","61983622499","61982830710","","Joselmadecacia@yahoo.com.br");

INSERT INTO tb_contato VALUES("174","61998174233","61998174233","","samaradesconzi@gmail.com");

INSERT INTO tb_contato VALUES("175","61986066824","","","wesley102002@gmail.com");

INSERT INTO tb_contato VALUES("176","61992108927","6130131416","","ludimilavoadora88@gmail.com");

INSERT INTO tb_contato VALUES("177","61996776286","61936423002","","deisefsa22@hotmail.com");

INSERT INTO tb_contato VALUES("178","61985732593","61935591097","","fernanda.karla.15@hotmail.com");

INSERT INTO tb_contato VALUES("179","61999096307","","","nãotem@gmail.com");

INSERT INTO tb_contato VALUES("180","61985175039","61984449230","","Kamillysilva05122001@gmail.com");

INSERT INTO tb_contato VALUES("181","61986174379","61999422906","","Sonmurillo@hotmail.com");

INSERT INTO tb_contato VALUES("182","61981006608","","","Kartetguy@hotmail.com");

INSERT INTO tb_contato VALUES("183","61199637881","61999290418","","Lidianemarine@hotmail.com");

INSERT INTO tb_contato VALUES("184","61981486412","","","lukinhasa123@hotmail.com");

INSERT INTO tb_contato VALUES("185","61981795422","","","fernanda_bsb_96@hotmail.com");

INSERT INTO tb_contato VALUES("186","61996632002","","","monikenardi18@gmail.com");

INSERT INTO tb_contato VALUES("187","6186642107","","","Arlan615s@gmail.com");

INSERT INTO tb_contato VALUES("188","61981706212","61981285244","","leonara98@gmail.com");

INSERT INTO tb_contato VALUES("189","61984256270","","","keysongabriel2@gmail.com");

INSERT INTO tb_contato VALUES("190","61984256270","","","Bethrodriques27@gmail.com");

INSERT INTO tb_contato VALUES("191","61983816948","","","Amandapimentel1103@gmail.com");

INSERT INTO tb_contato VALUES("192","61984624670","6191774916","","amaury.ritchenzoo@gmail.com");

INSERT INTO tb_contato VALUES("193","61995462963","61985546595","","luiz.m.barros211@gmail.cm");

INSERT INTO tb_contato VALUES("194","62994952349","62991235044","","jose2311@bol.com.br");

INSERT INTO tb_contato VALUES("195","61985771820","61986096929","","Luybrennosantosdesouza@gmail.com");

INSERT INTO tb_contato VALUES("196","61996714127","61982915499","","xavihernandopitt@gmail.com");

INSERT INTO tb_contato VALUES("197","61992687082","6133596768","","higorodrigues.78o@hotmail.com");

INSERT INTO tb_contato VALUES("199","61994141290","61992687082","","hellenthaisd@hotmail.com");

INSERT INTO tb_contato VALUES("200","61991098481","61985310904","","diegorsilva211@gmail.com");

INSERT INTO tb_contato VALUES("201","61998205779","","","soniaramaia@gmail.com");

INSERT INTO tb_contato VALUES("202","61981917532","61981917532","","Raquelcosta2223@gmail.com");

INSERT INTO tb_contato VALUES("203","61981767001","","","julia.farajb@gmail.com");

INSERT INTO tb_contato VALUES("204","61982751500","","","matheusmartinsdacosta21@gmail.com");

INSERT INTO tb_contato VALUES("205","61982059124","61992999241","","Sempremense2009@hotmail.com");

INSERT INTO tb_contato VALUES("206","6198152345","","","karenmialichii@gmail.com");

INSERT INTO tb_contato VALUES("207","61986171345","6134591017","","nãotememail@gmail.com");

INSERT INTO tb_contato VALUES("208","6198182882","","","poly.lima270@gmail.com");

INSERT INTO tb_contato VALUES("209","6184890286","6130814590","","jonas_fradique@hotmail.com");

INSERT INTO tb_contato VALUES("210","6183262286","6195706299","","Laisfofa13@gmail.com");

INSERT INTO tb_contato VALUES("211","61986153155","61981220563","","analidiaholanda2@gmail.com");

INSERT INTO tb_contato VALUES("212","61996260189","61996771042","","Alexgehlhaar33@gmail.com");

INSERT INTO tb_contato VALUES("213","61996585605","61999910092","","Joyce.sbpromotora@gmail.com");

INSERT INTO tb_contato VALUES("214","55613358491","61996252678","","Joycemarquessantana@gmail.com");

INSERT INTO tb_contato VALUES("215","61994400275","","","tiagomorera1@gmail.com");

INSERT INTO tb_contato VALUES("216","61992473325","61996532057","","bibikathleen.ak18@gmail.com");

INSERT INTO tb_contato VALUES("217","6198271871","6199584033","","marialuizacrm5@gmail.com");

INSERT INTO tb_contato VALUES("218","61993618785","","","ellielgoodboy@hotmail.com");

INSERT INTO tb_contato VALUES("219","6185864901","6192804665","","dannegreirotv@gmail.com");

INSERT INTO tb_contato VALUES("220","61993849880","","","carlos.clonic@gmail.com");

INSERT INTO tb_contato VALUES("221","61995174376","","","naotememail@gmail.com.br");

INSERT INTO tb_contato VALUES("222","61993347240","","","naotenhoemail@home.com");

INSERT INTO tb_contato VALUES("223","61992723686","61992070798","","Guilhermeryukaii@gmail.com");

INSERT INTO tb_contato VALUES("224","6195752955","61996744435","","Erikapradoestudos@hotmail.com");

INSERT INTO tb_contato VALUES("225","61985254241","","","Rafaelfontenele123@gmail.com");

INSERT INTO tb_contato VALUES("226","6185970132","6181043721","","neuzaferreirabrito@gmail.com");

INSERT INTO tb_contato VALUES("227","61985774596","61984366157","","adilsoarques@gmail.com");

INSERT INTO tb_contato VALUES("228","61985215677","61991710919","","brunna.trabalhos@gmail.com");

INSERT INTO tb_contato VALUES("229","61985864901","61985105244","","Jcqm21@yahoo.com");

INSERT INTO tb_contato VALUES("230","61983086107","61981215733","","joaovictorcoelho042@gmail.com");

INSERT INTO tb_contato VALUES("231","61986155790","61985767206","","Camilagabrieldf@gmail.com");

INSERT INTO tb_contato VALUES("232","61996117709","","","vitorvalentinbenetti@gmail.com");

INSERT INTO tb_contato VALUES("233","61981574990","61992956576","","emyminile@gmail.com");

INSERT INTO tb_contato VALUES("234","61998360693","","","alexsandramaiberg@hotmail.com");

INSERT INTO tb_contato VALUES("235","61981215733","61981046496","","Ribamar.ph@gmail.com");

INSERT INTO tb_contato VALUES("236","65464654564","","","grefdffg@tghtrhrjytj.com.br");




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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;


INSERT INTO tb_endereco VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("2","Shps 602 chac. 97-A","Setor P.Sul","P.Sul","72236608","Brasília ","DF");

INSERT INTO tb_endereco VALUES("3","QR 210 Conjunto 21 Casa 19 Samambaia Norte","Casa","Samambaia Norte","72316219","Brasília","DF");

INSERT INTO tb_endereco VALUES("4","QR 208 Conjunto 05 Casa 01","","Samambaia Norte","","Samambaia","DF");

INSERT INTO tb_endereco VALUES("6","Qs 403 , conj. 10 casa 27","","Samambaia norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("7","QR 405 Conj 10 Casa 04","","Samambaia Norte","72319210","Brasília","DF");

INSERT INTO tb_endereco VALUES("8","QR 211 conj 03 casa 13","","","72343000","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("9","Qr 405 Conj 02 Casa 09","Casa 09","Samambaia","72319202","samambaia norte","DF");

INSERT INTO tb_endereco VALUES("10","Qr 423 Conjunto 03 Casa 24","24","Samambaia Norte","72325203","Brasília","DF");

INSERT INTO tb_endereco VALUES("11","cln 314 bloco d apt 210","210","asa norte","70773060","Brasília ","DF");

INSERT INTO tb_endereco VALUES("13","Qr 421 conjunto 16 casa 03","Casa 03","Samambaia Norte","72325119","Samambaia","DF");

INSERT INTO tb_endereco VALUES("14","Qr 603 chácara 39 cadáveres 30 B","Rua 03 Condomínio Vida Nova","Samambaia Norte","72331100","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("16","Quadra: 425, Conjunto:26","Casa:14","Samambaia Norte","72327027","Brasília","DF");

INSERT INTO tb_endereco VALUES("17","Qnp 32 conj C casa 19","","P sul","72236203","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("18","Rua 16 sul","Lote 06 apartamento 801","Águas Claras","","","DF");

INSERT INTO tb_endereco VALUES("19","Qr 213 conjunto 05 casa 09","09","Samambaia","72343105","Brasilía","DF");

INSERT INTO tb_endereco VALUES("20","Qr 310 conjunto 16 casa 18","samambaia sul","samambaia df","72306817","Brasilia ","DF");

INSERT INTO tb_endereco VALUES("21","Qne 2 casa 27","","Taguatinga","72125020","Taguatinga Norte","DF");

INSERT INTO tb_endereco VALUES("23","Quadra 315 conjunto 13","casa 12","Samambaia","72307613","Brasília","DF");

INSERT INTO tb_endereco VALUES("24","Qnp 32 conj S casa","01","Psul","72236219","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("25","QR 407 conj 11 casa 20","","","","","DF");

INSERT INTO tb_endereco VALUES("26","QNP 36 Conjunto H","Casa 39","Setor P.Sul","72236608","Ceilândia-DF","DF");

INSERT INTO tb_endereco VALUES("27","qr 210","24 cs 17","","72316225","Brasilia","DF");

INSERT INTO tb_endereco VALUES("29","Qr205 conjunto 2 casa 18","Próximo ao batalhão","Norte","72341202","Samambaia","DF");

INSERT INTO tb_endereco VALUES("31","Qr 403 conjunto 16","Casa 17","Samambaia Norte","72319911","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("32","QUADRA QNP 15 CONJUNTO S","33","P.norte","72241619","BRASÍLIA","DF");

INSERT INTO tb_endereco VALUES("33","Rua 4c chácara 2 lote 23A","","Vicente pires","72001605","Brasilia","DF");

INSERT INTO tb_endereco VALUES("34","Qn 211 conjunto 01 casa 35","","Samambaia","72343051","Brasilia","DF");

INSERT INTO tb_endereco VALUES("36","QR 405 Conjunto 21 Casa 26","","Samambaia Norte","72319221","Brasília","DF");

INSERT INTO tb_endereco VALUES("37","QR 403 conj 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("39","Qr 421 conjunto 09","casa 11","Samambaia Norte","72325110","Samambaia","DF");

INSERT INTO tb_endereco VALUES("41","Qr 118 conjunto 06 lote 09","","Samambaia Sul","72302807","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("42","Qr 118 conjunto 6 lote 9","","Samambaia Sul","72302807","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("44","QR 403 conjunto 09","Casa 18","Samambaia norte","72319110","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("47","Quadra 46 lote 14 santa lucia","Águas lindas 2","Santa lucia","72927535","Águas lindas ","GO");

INSERT INTO tb_endereco VALUES("48","QI 03 Lote 23","","Setor de Industrias","72265030","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("49","Qi 416 conjunto lote 03","Apartamento 101","Samambaia norte","72320317","Brasília ","DF");

INSERT INTO tb_endereco VALUES("50","Shps 602 chácara 97 A","Setor p.sul","P.sul","72236608","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("51","QR 414 Conjunto 13 casa 17","Casa 17","Samambaia Norte","72320218","Brasília Df","DF");

INSERT INTO tb_endereco VALUES("52","Qnf 8 lote 35 casa 4","","","72125530","Taguatinga Norte","DF");

INSERT INTO tb_endereco VALUES("53","QR 209 conjunto 5 casa 27","Samambaia morte","Norte","","Brasília","DF");

INSERT INTO tb_endereco VALUES("54","Qnd 16 lote 11 ap 103","","","","","DF");

INSERT INTO tb_endereco VALUES("55","Ceilândia sul","SHSN  lote 29 qd 28 ch 58/123 A","Cond. Pinheiro","72236800","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("56","QNF 8 casa 32","Taguatinga","Taguatinga norte","72125580","Brasília ","DF");

INSERT INTO tb_endereco VALUES("57","Qr 212 conj 14 casa 15","","Samambaia Norte","72316314","Samambaia","DF");

INSERT INTO tb_endereco VALUES("58","Quadra 02 lote 16 apto. 201","","Águas Bonitas I","72926002","Águas Lindas GO","DF");

INSERT INTO tb_endereco VALUES("59","Qr 212 conj 14 casa 15","","Samambaia","72316314","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("60","QR 603 conj. 05 casa 05","","SAMAMBAIA NORTE","72331105","Brasília ","DF");

INSERT INTO tb_endereco VALUES("61","QR 403 CONJUNTO 10 CASA 2I","28","Samambaia","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("62","Qs 406 conjunto G lote 01 ap 01","","Samambaia norte","72318570","Brasília ","DF");

INSERT INTO tb_endereco VALUES("63","QNP 32 CONJUNTO","Em frente a escola classe 52","P.sul","72236214","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("64","Qr 603 Chácara 39 Rua 05 Casa 68B","68B","Samambaia","72331150","Brasília","DF");

INSERT INTO tb_endereco VALUES("65","QR 609 conj 01 casa 02","","","","","DF");

INSERT INTO tb_endereco VALUES("66","Quadra 2 Conjunto 1 lote 1","Bloco L AP 402","Paranoá Parque","","Paranoá ","DF");

INSERT INTO tb_endereco VALUES("67","Qr603 chácara 39 rua 4 casa 52A","Condomínio vida nova","Samambaia","72331100","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("68","QD 301 Cj 07 bloco A Apt 1005","Cond. Via Tropical","Samambaia Sul","72300543","Samambaia","DF");

INSERT INTO tb_endereco VALUES("69","Shsps 103 conjunto A casa 31","","Por do sol","","Ceilândia sul","DF");

INSERT INTO tb_endereco VALUES("70","Qnf 06 Lote 03 Casa 04","","Qnf","","Taguatinga norte","DF");

INSERT INTO tb_endereco VALUES("71","Qr 118 conjunto 06 casa 09","","","72302807","","DF");

INSERT INTO tb_endereco VALUES("72","Qr 405 13 13","13","Samambaia norte","72319213","Brasília ","DF");

INSERT INTO tb_endereco VALUES("73","qr 405 conjunto 25, casa 05","","samambaia","72319225","Brasilia","DF");

INSERT INTO tb_endereco VALUES("74","QE 01 CONJ M CASA 115","Guarã","Guará","","Distrito Federal","DF");

INSERT INTO tb_endereco VALUES("75","Qr 407 conjunto 09 casa 33","","Samambaia Norte","72321009","Brasilia","DF");

INSERT INTO tb_endereco VALUES("76","Quadra QR 413 Conjunto 06","23","","72321306","samambaia norte","DF");

INSERT INTO tb_endereco VALUES("77","QR 118 CJ 06 LT 09 CS 01","","","72307807","Samambaia DF","DF");

INSERT INTO tb_endereco VALUES("79","Avenida Rabelo","Casa 12 A","Vila Planalto","70804020","Brasília- DF","DF");

INSERT INTO tb_endereco VALUES("80","QR 320 Conjunto 7","13","Sul","72310107","Brasília","DF");

INSERT INTO tb_endereco VALUES("81","Qse 05 Lote 27","Casa","","72025050","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("82","Q:46 L: 14 santa lucia","Aguas lindas","Santa lucia","72927535","Aguas lindas _go ","GO");

INSERT INTO tb_endereco VALUES("83","QR 603 Chac 9 Rua 5 CASA 68B","","Samambaia Norte","72331150","Sambaia","DF");

INSERT INTO tb_endereco VALUES("84","Quadra 11 Conjunto E Lote 37 Casa 02","Salão Ziza Lisboa","Morro Azul","71691205","São Sebastião","DF");

INSERT INTO tb_endereco VALUES("85","QN 403 Conjunto A Lotes 3 e 4","Apartamento 505","Samambaia","72319541","Brasília","DF");

INSERT INTO tb_endereco VALUES("86","Qnm 10 Conj F Casa 20","","","","","DF");

INSERT INTO tb_endereco VALUES("87","Qr 405 cj 12 cs11","","Samambaia Norte","71928720","Brasília","DF");

INSERT INTO tb_endereco VALUES("88","QR 403 conjunto 12","Casa 09","Samambaia Norte","72319113","Brasília ","DF");

INSERT INTO tb_endereco VALUES("90","Qr 405 cj 12 cs16","","Samambaia Norte","72319212","Brasília","DF");

INSERT INTO tb_endereco VALUES("91","Qr 212 conjunto 10 casa 07","","","","Samambaia norte","DF");

INSERT INTO tb_endereco VALUES("92","Qr 401 conjunto 29 casa 05","","Samambaia norte","","Brasília ","DF");

INSERT INTO tb_endereco VALUES("93","Qr 202 conjunto 04 casa 06","Metro Terminal Samambaia","Samambaia Norte","72316054","Brasília ","DF");

INSERT INTO tb_endereco VALUES("95","QN 209 conjunto 01 lote 28","","Norte","72341001","Samambaia","DF");

INSERT INTO tb_endereco VALUES("96","Qnl 24 via ln 30 casa 63","","L Norte","","Taguatinga ","DF");

INSERT INTO tb_endereco VALUES("97","QR 210 conjunto 24 Casa 17","","Samambaia Norte","72316225","Brasília ","DF");

INSERT INTO tb_endereco VALUES("98","Qr 407 conjunto 02 casa 06","","Samambaia Norte","72321002","Brasília","DF");

INSERT INTO tb_endereco VALUES("100","Qs 11 conj. I casa 8","Residência","Areal","71980000","Águas Claras","DF");

INSERT INTO tb_endereco VALUES("101","qr 209 conjunto 5 casa 29","casa 29","samambaia norte","72341405","samambaia ","DF");

INSERT INTO tb_endereco VALUES("103","QNO 07 Conjunto E Casa 11","","Setor o","72251705","Basilia","DF");

INSERT INTO tb_endereco VALUES("104","Qr 405 conjunto 8","Casa 15","Samambaia Norte","72319208","Brasília","DF");

INSERT INTO tb_endereco VALUES("105","Shps 503 Chácara 97 A","A","Por do sol","72235290","Brasília","DF");

INSERT INTO tb_endereco VALUES("106","Shps 602 chácara 97A","Condomínio pôr do sol","P Sul","","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("107","Rua G","28","Parque da colina","","Formosa Go","GO");

INSERT INTO tb_endereco VALUES("108","QNG 06 casa 05","","Taguatinga norte","72130060","Brasília ","DF");

INSERT INTO tb_endereco VALUES("109","QS 06 CONJUNTO 420 B LOTE 20 AP 102","102","ÁGUAS CLARAS","71965725","BRASILIA","DF");

INSERT INTO tb_endereco VALUES("110","Qr 207 conjunto 5 casa 1","01","Samambaia Norte","72341305","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("111","qno 20 conjunto 39 casa 35","","","","","DF");

INSERT INTO tb_endereco VALUES("112","Qno 16 Conjunto 75 Casa 11","","","","","DF");

INSERT INTO tb_endereco VALUES("113","Quadra 13 Conjuto F Casa 24 Setor sul","Casa 24","Setor sul","72410706","Gama","DF");

INSERT INTO tb_endereco VALUES("114","Quadra 12 conjunto k casa 16 setor sul Gama","","Setor Sul","72415611","Gama","DF");

INSERT INTO tb_endereco VALUES("115","Quadra 4 conjunto H casa 11","","Setor sul","72415208","Gama-DF","DF");

INSERT INTO tb_endereco VALUES("116","Praça 3 bloco C loja 03","Gama DF - 03 setor sul","Setor sul","72410236","Gama","DF");

INSERT INTO tb_endereco VALUES("117","Quadra O Lote 31 Parque Esplanada 1","","Esplanada 1","","Valparaíso","GO");

INSERT INTO tb_endereco VALUES("118","SHSN chácara 36 conjunto 09 casa 06","Casa","P. Sul","72236800","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("119","Rua 17 chácara 178","09","Vicente Pires","07200739","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("121","QNP 28 CONJUNTO P CASA 4","","Psul","72335816","CEILÂNDIA","DF");

INSERT INTO tb_endereco VALUES("122","Qnd 10","Casa 13","Norte","72120100","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("123","QR 209 CONJ 07 CASA 06","","Norte","","Samambaia","DF");

INSERT INTO tb_endereco VALUES("124","QR 423 CONJUNTO 03 CASA 24","QR 423 CONJUNTO 03 CASA 24","Samambaia","72325203","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("125","QN  209  conjunto  2","21","Samambaia Norte","72341452","BRASILIA","DF");

INSERT INTO tb_endereco VALUES("126","Casa 6","Conjunto h","Por do sol","72238310","Ceilandia ","DF");

INSERT INTO tb_endereco VALUES("127","Qr 415 conj 10 casa 17","Qr 415 conjunto 13 casa 17","Samambaia norte","72323010","Brasília ","DF");

INSERT INTO tb_endereco VALUES("129","Qn 211 conjunto 01 casa 35","","Samambaia Norte","72343051","Brasilia","DF");

INSERT INTO tb_endereco VALUES("130","quadra 04 casa 125A setor norte","setor norte","","72710040","Brazlandia","DF");

INSERT INTO tb_endereco VALUES("131","Rua Mangabas 180","","Primavera","38610000","Unaí","DF");

INSERT INTO tb_endereco VALUES("132","SHPS 602 CHAC 97-A","Por do Sol  (ao lado da capela Nossa Senhora Aparecida)","P. Sul/Ceilândia","72236608","Brasília ","DF");

INSERT INTO tb_endereco VALUES("133","RUA 35 SUL LOTE 17 APT. 1212","RESIDENCIAL SEVILHA","ÁGUAS CLARAS","71931180","BRASIL ","DF");

INSERT INTO tb_endereco VALUES("134","Qr 405 conjunto 04 casa 16","","samambaia norte","72319204","Brasilia","DF");

INSERT INTO tb_endereco VALUES("135","Qr 407 conj 3 casa 8","","Samambaia Norte","","Brasilia ","DF");

INSERT INTO tb_endereco VALUES("136","Shsn chácara 136a condomínio beija flor lote 7a","Sol nascente","Ceilândia","72215000","Brasília","DF");

INSERT INTO tb_endereco VALUES("137","Rua maestro joaquim de Abreu setor nordeste","","Setor.nordeste","73008001","Formosa ","GO");

INSERT INTO tb_endereco VALUES("139","Quadra 12 Conjunto i","Casa 21","Setor Sul","","Gama","DF");

INSERT INTO tb_endereco VALUES("140","Qr 403 conjunto 09 casa 06","Qr 403 conjunto 09 casa 06","Samambaia","72319110","Brasilia ","DF");

INSERT INTO tb_endereco VALUES("141","Qn 211 conjunto 02 casa 04","26° delegacia de polícia","Samambaia norte","72343052","Brasília","DF");

INSERT INTO tb_endereco VALUES("142","Shsn chácara 127 A cj A cs 18","Casa 18","Sol nascente","72236800","Ceilândia Sul","DF");

INSERT INTO tb_endereco VALUES("143","shsn ch 127a conjunto a lote 18","","Sol nascente","72236800","BRASILIA","DF");

INSERT INTO tb_endereco VALUES("144","RUA 01 CHACARA 105A LOTE 01 LOTE 01","COLONIA AGRICOLA SAMAMBAIA","","72110600","TAGUATINGA NORTE","DF");

INSERT INTO tb_endereco VALUES("145","QR 103 Conjunto 6","Casa 09","Samambaia Sul","72301006","Brasília","DF");

INSERT INTO tb_endereco VALUES("146","SHPS 401 CONJ A CASA 08","","Ceilândia","","Brasília ","DF");

INSERT INTO tb_endereco VALUES("147","Condomínio Vila Paraíso Bl A Apt 103","","Vila Paraíso","72879282","Valparaíso Goiás ","GO");

INSERT INTO tb_endereco VALUES("157","QR 401 conjunto 15 casa 05","","Samambaia Norte","72319015","Brasília ","DF");

INSERT INTO tb_endereco VALUES("158","Qnj 8","Casa 11","Taguatinga norte","","Brasília-df","DF");

INSERT INTO tb_endereco VALUES("159","Shps quadra 501 conjunto  H casa 17a","H","Ceilandia","72238550","Ceilandia ","DF");

INSERT INTO tb_endereco VALUES("160","SHPS quadra 501 conj H casa 17A","quadra 501","PSul","72238250","CEILANDIA","DF");

INSERT INTO tb_endereco VALUES("161","Shps quadra 501 conjunto  H casa 17a","","","","","DF");

INSERT INTO tb_endereco VALUES("162","QUAD 604 CONJUNTO 26","CASA 01","","72640426","RECANTO DAS EMAS","DF");

INSERT INTO tb_endereco VALUES("163","Qnn 23 conjunto m casa 34","Ceilândia norte","Brasília DF","","Brasília DF","DF");

INSERT INTO tb_endereco VALUES("164","Qr211 conj 7 casa 14","Perto da 26° dp","Samambaia","72343007","Samambaia","DF");

INSERT INTO tb_endereco VALUES("165","Rua Maestro Joaquim de Abreu","N 736","Setor Nordeste","73808100","Formosa","GO");

INSERT INTO tb_endereco VALUES("166","Qr 204 Conjunto 12 Lote 01","perto da quadra.","Norte","72316092","Samambaia","DF");

INSERT INTO tb_endereco VALUES("167","Qr 625 conjunto 07","Casa 04","","72333409","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("168","Qnp 36 conjunto J casa 22","Perto do posto policial","Psul","72236610","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("169","Qr 402 Conjunto 26 Casa 08","","Samambaia Norte","72318027","Brasília","DF");

INSERT INTO tb_endereco VALUES("170","Quadra 402 conj 26 casa 08","Samambaia Norte","Samambaia Norte","72318027","Brasília ","DF");

INSERT INTO tb_endereco VALUES("171","Ave. Maestro João Luis do Espírito Santo","988","Califórnia","73807745","Formosa","GO");

INSERT INTO tb_endereco VALUES("172","SHPS 502 CONJ A CASA 47","Por do sol","P sul","72238273","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("173","Qr 407 conjunto 03 casa 08","","Samambaia Norte","72321003","Brasília ","DF");

INSERT INTO tb_endereco VALUES("174","Av A casa 1 lote 1","casa","Bela Vista","73808795","Formosa","GO");

INSERT INTO tb_endereco VALUES("175","Qn 211 conjunto 02 lote 51 casa 02","51","Samambaia Norte","72343052","Brasília","DF");

INSERT INTO tb_endereco VALUES("176","Qr 405 conjunto 28 cosa 22","","Samambaia","72319228","Brasília","DF");

INSERT INTO tb_endereco VALUES("177","Qr603 chacara 39 rua 4 casa 52A","Condomínio vida nova","","72331100","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("178","Qnb 18 casa 08","com.norte","","72115180","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("179","Qnb 18 casa 08","","","72115180","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("180","Rua G Lote 12","Quadra 70","Parque da colina","73808076","Formosa","GO");

INSERT INTO tb_endereco VALUES("181","Qn 211 conjunto 1 casa 16","","Samambaia","72325110","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("182","Qnp 36 conjunto D casa 39","","P sul","72236604","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("183","Rua Benedito Galvão","Número 136 apt: 201","Formosinha","73813040","Formosa GO","GO");

INSERT INTO tb_endereco VALUES("184","Qr 615 conjunto 10 casa 16","","Samambaia norte","71215902","Brasília ","DF");

INSERT INTO tb_endereco VALUES("185","Qnj 02","Casa 18","Taguatinga norte","72140020","Brasília","DF");

INSERT INTO tb_endereco VALUES("186","Qr 213 conjunto 3 casa 31","","","72343103","","DF");

INSERT INTO tb_endereco VALUES("187","Qr 213 conjunto3 casa 31","","samambaia","72343103","Brasília","DF");

INSERT INTO tb_endereco VALUES("188","Quadra 12 conjunto k","Casa 16","Setor sul","72415611","Gama","DF");

INSERT INTO tb_endereco VALUES("189","Qr. 204 Conjunto 12 Lote 16","Kit 02","Norte","72316092","Brasília ","DF");

INSERT INTO tb_endereco VALUES("190","Qr 211 Conjunto 07 Casa 14","","Samambaia Norte","72343000","Brasília","DF");

INSERT INTO tb_endereco VALUES("191","Av. Contorno Qd 01 A Lt 05 A","","São João","75133205","Anápolis","GO");

INSERT INTO tb_endereco VALUES("192","Qnp 32 Conjunto D","Casa 34A","P.sul","72236204","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("193","SGAN 902/904 S/N.","","ASA NORTE","70790020","BRASLIA-DF","DF");

INSERT INTO tb_endereco VALUES("194","Qr 523 Conjunto 5 Casa 18","Samambaia-Sul","","72317105","Samambaia sul ","DF");

INSERT INTO tb_endereco VALUES("196","Qr 523 Conjunto 05 Casa 18","Samambaia","sul","72317105","Samambaia-Sul","DF");

INSERT INTO tb_endereco VALUES("197","Qr 211","02 casa 26","Norte","72300000","Brasília","DF");

INSERT INTO tb_endereco VALUES("198","Qe 40 conjunto F lote 19 apt 202","","","","","DF");

INSERT INTO tb_endereco VALUES("199","area especial 2A modulo H lote 4 ap 309","apartamento 309","setor de oficinas","71070638","Gaua ll df","DF");

INSERT INTO tb_endereco VALUES("200","Qe 40 conjunto F lote 19 apt 202","","","","","DF");

INSERT INTO tb_endereco VALUES("201","Qs06 conjunto 01 casa 20 Riacho Fundo 1","Riacho fundo 1","Riacho fundo 1","71820601","Riacho fundo 1","DF");

INSERT INTO tb_endereco VALUES("202","Qr 414 conjunto 2 casa 16","Casa","Samambaia norte","72320202","Brasília ","DF");

INSERT INTO tb_endereco VALUES("203","Qr 212 conjunto 14 casa 15","Casa 15","Samambaia","72316314","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("204","Qr 605 conjunto 2 chácara 47","","Samambaia Norte","72331202","Brasília ","DF");

INSERT INTO tb_endereco VALUES("205","Colonia Agrícola Sucupira ch 08 lt 12A","","sucupira","","Riacho Fundo 1","DF");

INSERT INTO tb_endereco VALUES("206","QR 403 CONJUNTO 09","Casa 18","403","72319110","Samambaia norte","DF");

INSERT INTO tb_endereco VALUES("207","Shps quadra 108. Conjunto \'B\'. Casa 20","Perto do supermercado Leão","P.Sul","72238100","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("208","Qi 19 lote 13 Bloco:C AP:2002","Residencial Vivace","","","Taguatinga norte","DF");

INSERT INTO tb_endereco VALUES("209","Avenida k quadra 29 casa 01","Ao lado do nova Formosa","Bela vista","73800000","Formosa ","GO");

INSERT INTO tb_endereco VALUES("210","Rua maestro Joaquim de Abreu n°735","Perto do carinho do pão de queijo.","Setor nordeste","73807100","Formosa-Go","GO");

INSERT INTO tb_endereco VALUES("211","QR 203 CONJ 03","Casa 05","Norte","72341103","SAMAMBAIA​","DF");

INSERT INTO tb_endereco VALUES("212","Qi 24 lote 1/13 Taguatinga Norte-Df","Residencial Top Life Miami Beach bloco B apto 1506","Taguatinga Norte-Df","72135240","Brasília ","DF");

INSERT INTO tb_endereco VALUES("213","QR 212 Conjunto Q Casa","12","Santa Maria","72542417","Brasília","DF");

INSERT INTO tb_endereco VALUES("214","QR 401 conjunto 20 casa 1","","Samambaia Norte","72319020","Brasilia","DF");

INSERT INTO tb_endereco VALUES("215","Qr 209 conjunto 02 17","","Samambaia Norte","72341402","Brasília ","DF");

INSERT INTO tb_endereco VALUES("216","Qr 205 Conjunto 03 Casa 34","34","Norte","72341203","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("217","Colônia Agrícola Sucupira Chácara 06 Lote 37L","","Sucupira","","Riacho Fundo I","DF");

INSERT INTO tb_endereco VALUES("218","Qr 405 conjunto 07 casa 07","","Samambaia","","Brasília","DF");

INSERT INTO tb_endereco VALUES("219","qr 211 conjunto 02 casa 29","","Samambaia","","Brasília","DF");

INSERT INTO tb_endereco VALUES("220","Qnp 30 conjunto M","Casa 21","Setor P sul","72236013","Ceilandia ","DF");

INSERT INTO tb_endereco VALUES("221","Qr 512 conjunto 06","Casa 04","Samambaia sul","72312806","Brasília ","DF");

INSERT INTO tb_endereco VALUES("222","Qno 11 cj m casa 39","Casa","Setor o","72255113","Ceilandia","DF");

INSERT INTO tb_endereco VALUES("223","SHPS 603 CONJ B CASA 08","Na rua da padaria santos","Por Do Sol","","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("224","Shps 602 conj B casa 3","Perto da capela nossa senhora aparecida","Por do sol","72238350","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("225","QNP 36 conjunto A lote 17A","A","Psul","72236601","Ceilandia ","DF");

INSERT INTO tb_endereco VALUES("226","Qr 205 conjunto 3 casa 34","","","","","DF");

INSERT INTO tb_endereco VALUES("227","Qnp 30 conjunto J casa 38","","Psul","72236010","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("228","Quadra SHPS Quadra 501 Conju  Horas Casa","7","Psul","72238250","Brasília","DF");

INSERT INTO tb_endereco VALUES("229","Avenida João Gebrin, n 2623","","Formosinha","73813210","Formosa","GO");

INSERT INTO tb_endereco VALUES("230","Shps quadra 108 conjunto D casa 04","Condomínio Canaã","Por do sol","72238100","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("231","QR 419 CJ 4 casa 14","","Samambaia Norte","72325005","Brasília","DF");

INSERT INTO tb_endereco VALUES("232","QNP 30 CONJUNTO J CASA 38","","P Sul","72236010","Ceilândia ","DF");

INSERT INTO tb_endereco VALUES("233","Qs 403 , conj. 10 casa 27","complemento 55","Samambaia norte 55","72319111","Brasília 55","DF");

INSERT INTO tb_endereco VALUES("234","Qs 403 , conj. 10 casa 27","","Samambaia norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("242","Qs 403 , conj. 10 casa 27","","Samambaia norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("243","Casa da Lili Bessa","","","","","DF");

INSERT INTO tb_endereco VALUES("244","Qnb 18 casa 08","com.norte","","72115180","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("245","chácara Santa Cruz","","Incra","","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("246","Chácara do Retiro do EAC","","Incra 9","","Ceilândia","DF");

INSERT INTO tb_endereco VALUES("247","Casa das Irmãs","AO lado da paróquia","Samambaia Norte","","Brasília","DF");

INSERT INTO tb_endereco VALUES("248","QR 403 cj 10 casa 28","Casa dos Bessas","Samambaia Norte","","Brasília","DF");

INSERT INTO tb_endereco VALUES("251","Feira da 313","","","","","DF");

INSERT INTO tb_endereco VALUES("252","Na casa das irmãs","","","","","DF");

INSERT INTO tb_endereco VALUES("253","Chacara Santa cruz","","Incra 08","","Celandia","DF");

INSERT INTO tb_endereco VALUES("254","casa do Elielf","","","","","DF");




DROP TABLE IF EXISTS tb_evento;


CREATE TABLE `tb_evento` (
  `co_evento` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL COMMENT 'Data do cadastro',
  `co_categoria_evento` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL COMMENT 'Capa do Evento',
  `co_agenda` int(11) NOT NULL,
  PRIMARY KEY (`co_evento`,`co_categoria_evento`,`co_imagem`,`co_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tb_evento VALUES("1","2018-04-06 11:30:03","2","252","2");




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

INSERT INTO tb_funcionalidade VALUES("12","Listar Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("13","Editar Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("14","Detalhar Pagamento Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("15","Editar Parcela Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("16","Sobre Vc Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("17","Detalhes Inscrição","I");

INSERT INTO tb_funcionalidade VALUES("18","Calendário","I");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;


INSERT INTO tb_imagem VALUES("1","leonardo-m-c-bessa-56e8920c23ab6.jpg");

INSERT INTO tb_imagem VALUES("2","amanda-tominaga-5a255cea199ad.jpg");

INSERT INTO tb_imagem VALUES("3","igor-borges-leite-5a255f7c41f75.jpg");

INSERT INTO tb_imagem VALUES("4","brenda-nayane-duda-moreira-5a25807eb2270.jpg");

INSERT INTO tb_imagem VALUES("5","amaury-costa-silva-ramos-5a2586f59c0e0.jpg");

INSERT INTO tb_imagem VALUES("6","henrique-carvalho-assuncao-5ac4edaf0fe46.jpg");

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

INSERT INTO tb_imagem VALUES("37","leticia-machado-carvalho-bessa-5ab55d4314234.jpg");

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

INSERT INTO tb_imagem VALUES("105","amanda-neves-de-carvalho-5a5221db076b0.jpg");

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

INSERT INTO tb_imagem VALUES("160","cecilia-rubia-nascimento-silva-5a66296c1d456.jpeg");

INSERT INTO tb_imagem VALUES("161","beatriz-silva-de-sousa-5a662a218b5c4.PNG");

INSERT INTO tb_imagem VALUES("162","matheus-salvino-azevedo-5a6677c7a5dc3.jpg");

INSERT INTO tb_imagem VALUES("163","wesley-salvino-de-farias-5a6679ff23e7f.jpg");

INSERT INTO tb_imagem VALUES("164","victor-samuel-azevedo-de-oliveira-5a667cb497129.jpg");

INSERT INTO tb_imagem VALUES("165","sinara-caroline-queiroz-simas-5a6756c392e4e.jpg");

INSERT INTO tb_imagem VALUES("166","luiz-antonio-bizerra-de-oliveira-5a6757e72178a.jpg");

INSERT INTO tb_imagem VALUES("167","jose-eduardo-barbosa-barros-5a67bbd53bca0.jpeg");

INSERT INTO tb_imagem VALUES("168","guilherme-moreira-ferreira-5a67d988eaac8.jpg");

INSERT INTO tb_imagem VALUES("169","guilherme-balbino-da-silva-5a67edecee754.jpg");

INSERT INTO tb_imagem VALUES("170","marina-lopes-rodrigues-5a687ed11609e.jpeg");

INSERT INTO tb_imagem VALUES("171","beatriz-feitosa-dias-5a688ad89bd30.jpg");

INSERT INTO tb_imagem VALUES("172","leticia-da-silva-pereira-5a68a6b7315ec.jpg");

INSERT INTO tb_imagem VALUES("173","rivelino-nunes-pereira-filho-5a68a90ff1d17.jpg");

INSERT INTO tb_imagem VALUES("174","samara-desconzi-5a6a09716beec.JPG");

INSERT INTO tb_imagem VALUES("175","wesley-alves-de-castro-5a6a41c6e91dc.jpeg");

INSERT INTO tb_imagem VALUES("176","ludimila-carvalho-da-silva-5a6b06bb33e0a.jpg");

INSERT INTO tb_imagem VALUES("177","deise-mendes-5a6b12fdd39e4.jpg");

INSERT INTO tb_imagem VALUES("178","fernanda-karla-rodrigues-lima-5a6b4f7c2bf35.jpg");

INSERT INTO tb_imagem VALUES("179","laiane-de-oliveira-slva-5a6bc8ba5ee8f.jpg");

INSERT INTO tb_imagem VALUES("180","kamilly-victoria-oliveira-da-silva-5a6ca5a5b6ac6.jpg");

INSERT INTO tb_imagem VALUES("181","guilherme-vale-silva-matos-5ac5321b7144b.jpg");

INSERT INTO tb_imagem VALUES("182","gabriella-vale-silva-matos-5a6cb675aec83.jpg");

INSERT INTO tb_imagem VALUES("183","izabella-vaz-bandeira-5a6ce54b1fcea.jpg");

INSERT INTO tb_imagem VALUES("184","dion-lucas-serafim-bispo-5a6d290d4981f.jpg");

INSERT INTO tb_imagem VALUES("185","fernanda-coelho-do-nascimento-5a6e6edb9c5a7.jpg");

INSERT INTO tb_imagem VALUES("186","monike-nardi-5a6ef0fee0e5d.jpg");

INSERT INTO tb_imagem VALUES("187","arlan-santos-coimbra-5a6faf2f314a5.jpg");

INSERT INTO tb_imagem VALUES("188","leonara-almeida-5a6fc8eb1cf05.jpg");

INSERT INTO tb_imagem VALUES("189","keyson-gabriel-rodriques-de-sousa-5a710ca2b711b.jpeg");

INSERT INTO tb_imagem VALUES("190","jonas-rodriques-de-sousa-5a710ee2062d3.jpeg");

INSERT INTO tb_imagem VALUES("191","joao-victor-oliveira-barros-5a711ba466122.jpg");

INSERT INTO tb_imagem VALUES("192","amaury-costa-silva-ramos-5a71aca4a839a.jpg");

INSERT INTO tb_imagem VALUES("193","luiz-miguel-barbosa-barros-5a7335ba3e198.jpg");

INSERT INTO tb_imagem VALUES("194","jose-ferreira-dos-santos-5a73a2fbc17c5.JPG");

INSERT INTO tb_imagem VALUES("195","luy-brenno-santos-de-souza-5a73b22a5eef9.JPG");

INSERT INTO tb_imagem VALUES("196","ernando-souza-de-paula-5a74620d7b044.jpg");

INSERT INTO tb_imagem VALUES("197","higor-rodrigues-dias-5a749fff17f9c.jpg");

INSERT INTO tb_imagem VALUES("198","higor-dias-5a74a3361fb57.jpg");

INSERT INTO tb_imagem VALUES("199","hellen-thais-dias-rodrigues-5a74a5ec9d873.JPG");

INSERT INTO tb_imagem VALUES("200","diego-rocha-da-silva-5a75c7bbc0efe.jpg");

INSERT INTO tb_imagem VALUES("201","soniara-aparecida-mendes-maia-5a7656b2d944f.jpg");

INSERT INTO tb_imagem VALUES("202","raquel-da-costa-silva-5a76578390c81.jpg");

INSERT INTO tb_imagem VALUES("203","julia-faraj-benn-5a7658b5172e5.jpg");

INSERT INTO tb_imagem VALUES("204","matheus-martins-da-costa-5a772563a5ab3.jpg");

INSERT INTO tb_imagem VALUES("205","wemerson-andrade-messias-santos-5a775f6c18744.jpeg");

INSERT INTO tb_imagem VALUES("206","karen-mialichi-da-silva-maia-5a777ae0f2eb8.jpg");

INSERT INTO tb_imagem VALUES("207","gabriel-de-souza-lima-5a77a4afd9f8e.jpg");

INSERT INTO tb_imagem VALUES("208","polyanna-da-costa-lima-5a77d82edb9d1.jpg");

INSERT INTO tb_imagem VALUES("209","jonatas-fradique-barroso-5a78a5ca5bcd1.jpg");

INSERT INTO tb_imagem VALUES("210","lais-vieira-sousa-5a78baf8ede37.jpg");

INSERT INTO tb_imagem VALUES("211","ana-lidia-de-holanda-nunes-5a78dc4b32aa8.jpg");

INSERT INTO tb_imagem VALUES("212","alex-gehlhaar-5a78f4083f8d6.jpg");

INSERT INTO tb_imagem VALUES("213","joyce-ferreira-gomes-5a78f8fb2f1be.jpg");

INSERT INTO tb_imagem VALUES("214","joyce-marques-santana-5a796f5e41800.jpg");

INSERT INTO tb_imagem VALUES("215","tiago-moreira-gomes-5a7ace45ce896.jpg");

INSERT INTO tb_imagem VALUES("216","abigayl-kathleen-costa-da-penha-5a7ae5d5c4f65.jpg");

INSERT INTO tb_imagem VALUES("217","maria-luiza-camargo-raposo-de-melo-5a7b043773170.jpg");

INSERT INTO tb_imagem VALUES("218","elliel-kassio-5a7b16ed16f84.jpg");

INSERT INTO tb_imagem VALUES("219","daniel-negreiro-marciel-5a7b1e1083b80.jpg");

INSERT INTO tb_imagem VALUES("220","carlos-augusto-silva-damacena-5a7b8079eacf4.png");

INSERT INTO tb_imagem VALUES("221","maria-luiza-de-sousa-campos-braga-5a7b8bf3add76.jpeg");

INSERT INTO tb_imagem VALUES("222","marcos-gabriel-vasco-da-silva-5a7b8d8c9b47a.jpg");

INSERT INTO tb_imagem VALUES("223","guilherme-henrique-da-silva-costa-5a7c64f9e1878.jpg");

INSERT INTO tb_imagem VALUES("224","erika-pereira-do-prado-5a7c7201c7f63.jpeg");

INSERT INTO tb_imagem VALUES("225","rafael-fontenele-5a7c75f873d32.jpeg");

INSERT INTO tb_imagem VALUES("226","leticia-coelho-brito-5a7cb81c1cdac.jpg");

INSERT INTO tb_imagem VALUES("227","tamires-ferreira-barbosa-felix-5a7cc40160e82.jpg");

INSERT INTO tb_imagem VALUES("228","brunna-adryah-guimaraes-mourao-5a7cf2fe8366f.jpg");

INSERT INTO tb_imagem VALUES("229","julia-vitoria-negreiro-marciel-5a7cf60c686a8.jpg");

INSERT INTO tb_imagem VALUES("230","joao-victor-alves-coelho-5a7d010f44bf1.jpg");

INSERT INTO tb_imagem VALUES("231","camila-santos-gabriel-5a7d06cdba13d.png");

INSERT INTO tb_imagem VALUES("232","vitor-valentin-benetti-5a7db1742d733.jpg");

INSERT INTO tb_imagem VALUES("233","geovanna-emily-araujo-silva-5a7dbc9d11742.jpg");

INSERT INTO tb_imagem VALUES("234","alexsandra-maiberg-hausser-5a7dbe93ee582.jpg");

INSERT INTO tb_imagem VALUES("235","pedro-paulo-alves-coelho-5a7e204a3a794.jpg");

INSERT INTO tb_imagem VALUES("236","gg-novato-5ac502c9df378.PNG");

INSERT INTO tb_imagem VALUES("240","Eventos/CapaEventos/bazar-5ac649674235f.jpg");

INSERT INTO tb_imagem VALUES("241","Eventos/Evento-3/bazar-5ac649676aaa0.jpg");

INSERT INTO tb_imagem VALUES("242","Eventos/Evento-3/bazar-5ac64967a2080.jpg");

INSERT INTO tb_imagem VALUES("243","Eventos/Evento-3/bazar-5ac64967ce27d.jpg");

INSERT INTO tb_imagem VALUES("244","Eventos/Evento-3/bazar-5ac649680e5fc.jpg");

INSERT INTO tb_imagem VALUES("245","Eventos/Evento-3/bazar-5ac64968401c0.jpg");

INSERT INTO tb_imagem VALUES("246","Eventos/Evento-3/bazar-5ac64968725dd.jpg");

INSERT INTO tb_imagem VALUES("247","Eventos/Evento-3/bazar-5ac6496896937.jpg");

INSERT INTO tb_imagem VALUES("248","Eventos/Evento-3/bazar-5ac64968b8bf2.jpg");

INSERT INTO tb_imagem VALUES("249","Eventos/Evento-3/bazar-5ac64968dc453.jpg");

INSERT INTO tb_imagem VALUES("250","Eventos/Evento-3/bazar-5ac649690ca51.jpg");

INSERT INTO tb_imagem VALUES("251","Eventos/Evento-3/bazar-5ac649692927c.jpg");

INSERT INTO tb_imagem VALUES("252","Eventos/CapaEventos/vi-retiro-de-carnaval-santifique-se-5ac7846b0d064.jpg");

INSERT INTO tb_imagem VALUES("253","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b3da82.jpg");

INSERT INTO tb_imagem VALUES("254","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b6e427.jpg");

INSERT INTO tb_imagem VALUES("255","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846b9a84b.jpg");

INSERT INTO tb_imagem VALUES("256","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846bd1169.jpg");

INSERT INTO tb_imagem VALUES("257","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c0f226.jpg");

INSERT INTO tb_imagem VALUES("258","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c3ee95.jpg");

INSERT INTO tb_imagem VALUES("259","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c6233e.jpg");

INSERT INTO tb_imagem VALUES("260","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846c82b77.jpg");

INSERT INTO tb_imagem VALUES("261","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846ca56db.jpg");

INSERT INTO tb_imagem VALUES("262","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846cc8e99.jpg");

INSERT INTO tb_imagem VALUES("263","Eventos/Evento-1/vi-retiro-de-carnaval-santifique-se-5ac7846ce3aa9.jpg");




DROP TABLE IF EXISTS tb_imagem_evento;


CREATE TABLE `tb_imagem_evento` (
  `co_imagem_evento` int(11) NOT NULL AUTO_INCREMENT,
  `co_evento` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_imagem_evento`,`co_evento`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tb_imagem_evento VALUES("12","1","253");

INSERT INTO tb_imagem_evento VALUES("13","1","254");

INSERT INTO tb_imagem_evento VALUES("14","1","255");

INSERT INTO tb_imagem_evento VALUES("15","1","256");

INSERT INTO tb_imagem_evento VALUES("16","1","257");

INSERT INTO tb_imagem_evento VALUES("17","1","258");

INSERT INTO tb_imagem_evento VALUES("18","1","259");

INSERT INTO tb_imagem_evento VALUES("19","1","260");

INSERT INTO tb_imagem_evento VALUES("20","1","261");

INSERT INTO tb_imagem_evento VALUES("21","1","262");

INSERT INTO tb_imagem_evento VALUES("22","1","263");




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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;


INSERT INTO tb_inscricao VALUES("1","","N","2017-12-30 19:59:43","A","N","N","","4","LEILA TOMINAGA","61982522602","Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga","","Sou diabética.","2","2");

INSERT INTO tb_inscricao VALUES("2","","S","2017-12-04 12:45:16","D","N","N","","8","MãE","6134588070","Sou o Igor! ","","","3","3");

INSERT INTO tb_inscricao VALUES("3","Grupo Jovem Arcanjos e EJNS","S","2018-01-06 19:32:35","A","N","N","","2","MINHA MãE LúCIA","61986280131","Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.","","","4","4");

INSERT INTO tb_inscricao VALUES("4","GEJ Dom Bosco","S","2017-12-30 19:23:11","A","S","S","","8","MãE ","61991774916","Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !","","","189","5");

INSERT INTO tb_inscricao VALUES("5","Acólitos e coroinhas","N","2017-12-30 19:23:25","A","S","S","","7","MãE ","62999535024","Sou gente boa","","","6","6");

INSERT INTO tb_inscricao VALUES("6","","N","2018-01-08 10:30:31","A","S","S","","3","KêNIA ","61930825870","Amanda\n19 anos","","","7","7");

INSERT INTO tb_inscricao VALUES("7","Gej","N","2017-12-30 19:59:54","A","S","S","","2","MINHA MãE ","61994186538","Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas","","","8","8");

INSERT INTO tb_inscricao VALUES("8","","S","2018-01-18 19:44:51","A","N","N","","9","MARIA OZENITA PEREIRA","61982361967","Não tenho nenhum tipo de alergia","","","9","9");

INSERT INTO tb_inscricao VALUES("9","GEJ DOM BOSCO","S","2018-01-15 22:54:24","A","S","S","","3","DENISE","61934595330","Trago dentro de mim um pouco da alegria que vem de Deus! *-*","","","10","10");

INSERT INTO tb_inscricao VALUES("10","Renovaćao carismatica do Santuário Sao Francisco","S","2017-12-04 19:22:18","A","N","N","","1","ELIANE","61982257021","Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.","","","11","11");

INSERT INTO tb_inscricao VALUES("12","GEJ Dom Bosco","S","2017-12-04 22:16:26","A","S","N","","9","PAI ","6182701888","Carismático e desinibido.","","","13","13");

INSERT INTO tb_inscricao VALUES("13","GEJ Dom Bosco","S","2018-01-15 23:02:13","A","S","S","","3","MãE ","61981214179","Desinibida.","","","14","14");

INSERT INTO tb_inscricao VALUES("14","GEJ DOM BOSCO","S","2018-01-17 22:33:29","A","S","S","","4","PAI","61992197688","FELIZ POR SER DO GEJ DOM BOSCO","","","39","15");

INSERT INTO tb_inscricao VALUES("15","","N","2017-12-30 19:29:12","A","S","S","","7","MARIA JOSé","61933593245","Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.","","","16","16");

INSERT INTO tb_inscricao VALUES("16","","S","2017-12-05 09:49:57","A","N","N","","3","NEILDO","6132086444","Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .","","","17","17");

INSERT INTO tb_inscricao VALUES("17","EJNS","S","2017-12-05 11:06:05","D","N","N","","3","MINHA MãE CAROL","61992091401","Sou tímida, gosto de jogar futebol ou qualquer esporte.","","","18","18");

INSERT INTO tb_inscricao VALUES("18","GEJ-Dom bosco","S","2017-12-30 19:29:26","A","S","S","","2","RITA MARIA ","61933593574","Otima pessoa para se conviver.","","","19","19");

INSERT INTO tb_inscricao VALUES("19","grupo jovem luz e fogo","S","2017-12-05 13:38:18","D","N","N","","5","MARISA ","61991157598","bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .","","","20","20");

INSERT INTO tb_inscricao VALUES("20","","N","2017-12-06 00:39:45","D","N","N","","2","MARIO ROBERTO","61983261868","Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.","","","21","21");

INSERT INTO tb_inscricao VALUES("21","GEJ DOM BOSCO","S","2017-12-30 19:29:46","A","S","S","","6","MãE ","61986130447","oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.","","","73","22");

INSERT INTO tb_inscricao VALUES("22","Catequese, Cerimoniários e Música","N","2017-12-06 23:15:25","A","N","N","","6","MARIA DAS GRAçAS","61934593014","Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.","","","23","23");

INSERT INTO tb_inscricao VALUES("23","Assunção","S","2017-12-07 00:26:21","D","N","N","","6","BEATRIZ","61993116666","Sou bastante amigo e faço amizade rápido","","","24","24");

INSERT INTO tb_inscricao VALUES("24","Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC)","S","2017-12-07 17:42:39","A","N","N","","4","EDI ","61986521612","Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus","","","25","25");

INSERT INTO tb_inscricao VALUES("25","Grupo de Coroinhas, Grupo Jovem Adonai","S","2017-12-07 20:21:09","A","N","N","","7","LEILA TOMINAGA","61982512602","Filho dos Tios Tominaga, Irmão da Tominaga. \n##########  Saúde ###########\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\n- Sangue tipo B+","","","26","26");

INSERT INTO tb_inscricao VALUES("26","","N","2017-12-08 09:28:35","D","N","N","","7","ANDERSON JOAQUIM DE SANTANA","61932018084","Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.","","","27","27");

INSERT INTO tb_inscricao VALUES("27","Gej","S","2018-01-05 17:32:01","A","S","S","","7","MãE ","61933598257","Sou feliz!","","","34","28");

INSERT INTO tb_inscricao VALUES("28","Gej dom Bosco","S","2017-12-08 23:24:28","D","S","N","","3","MãE","6133571919","Sou tranquila,eu gosto de fazer as minhas coisas na hora certa","","","29","29");

INSERT INTO tb_inscricao VALUES("29","","N","2018-01-16 23:27:31","A","S","S","","4","LUCILENE AGUIAR","61995990533","\"Sou apenas um lápis na mão de Deus É ele quem me escreve.\" \nMadre Teresa de Calcutá","","","31","30");

INSERT INTO tb_inscricao VALUES("30","","N","2017-12-09 15:40:18","D","N","N","","4","GESLâNIA ","6199043516","Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo","","","32","32");

INSERT INTO tb_inscricao VALUES("31","Guardiãs","S","2017-12-09 16:52:51","D","N","N","","5","LUCIENE ","61996979071","Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades","","","33","33");

INSERT INTO tb_inscricao VALUES("32","GEJ Dom Bosco","S","2018-01-15 22:37:51","A","S","S","","4","LEDA","61992724933","Ser aquilo que Deus quer fazer de mim!","","","36","35");

INSERT INTO tb_inscricao VALUES("33","","S","2017-12-11 19:17:46","A","N","N","","3","ROSANGELA ALVES MENDES ","61985548484","Sou uma universitária e frenquento a igreja Católica.","Não","Não","41","41");

INSERT INTO tb_inscricao VALUES("34","","S","2017-12-11 19:23:37","A","N","N","","4","ROSANGELA ALVES MENDES ","61985548484","Sou estudante e frenquento a igreja Católica.","Não","Não","42","42");

INSERT INTO tb_inscricao VALUES("35","","S","2017-12-12 13:46:24","A","N","N","","7","ELIETE","61986325346","Não","Não","Não","44","44");

INSERT INTO tb_inscricao VALUES("36","","S","2017-12-14 12:21:53","A","N","N","","7","BRENA KESSIA","61992563934","Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .","Nao","Nao","47","47");

INSERT INTO tb_inscricao VALUES("37","","S","2017-12-16 14:24:06","A","N","N","","3","JOSé EVARISTO","61981019362","Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida","Não","Não","48","48");

INSERT INTO tb_inscricao VALUES("38","","S","2018-01-06 19:49:15","A","S","S","","7","MAE ","61995905439","Uma pessoa super tranquila, alegre e que ama ajuda o próximo na medida possível","","","49","49");

INSERT INTO tb_inscricao VALUES("39","","N","2017-12-18 15:05:43","A","N","N","","7","TIOS TOMINAGA","61982512602","Sou consagrada a Santíssima Virgem a 2 anos. Tenho uma vida de intimidade e amor com Deus. Canto em um ministério, estou começando na intersecao, faço parte da coordenação do grupo jovem Adonaí. Tenho espírito adorador Eucarístico amante da Mãe de Deus ❤ Sou muito animada e pretendo louvar, adorar e confiar mais ainda naquele que É!","Não","Não","50","50");

INSERT INTO tb_inscricao VALUES("40","Nossa Senhora de Fátima","S","2017-12-30 19:31:06","A","S","S","","6","ANDRé FONSECA BORGES","61998783533","Eu sou uma pessoa gentil, e de bem com a vida hehe :)","Antialérgico - Loratamed","Boa","51","51");

INSERT INTO tb_inscricao VALUES("41","Grupo Jovem","S","2017-12-18 22:11:23","A","N","N","","7","MAE","6191621818","Participo do Grupo Jovem JEDI, tenho 4 anos de caminhada, sou consagrado a Virgem Maria. Nunca participei de um acampamento, sou um pouco tímido mas tenho facilidade de comunicação e pro ativo.","","","52","52");

INSERT INTO tb_inscricao VALUES("42","Gej","S","2017-12-30 19:31:22","A","S","S","","5","EDILEUSA","61992226161","Me chamo Karolina não tenho restrição de medicamentos , nem alimentação","","","53","53");

INSERT INTO tb_inscricao VALUES("43","","S","2017-12-18 22:16:45","D","N","N","","3","MãE","61985754119","Sou do grupo JEDI da paróquia São João Batista.","","Alérgica a corante , intolerante a lactose","54","55");

INSERT INTO tb_inscricao VALUES("44","Grupo Jovem","S","2017-12-30 19:31:55","A","N","N","","3","EDILEUZA MãE","61984946458","Não gosto de falar sobre mim \nRs rs :)","Omeprazol","Intolerância à lactose","55","56");

INSERT INTO tb_inscricao VALUES("45","Grupo JEDI","N","2018-01-21 21:56:12","A","N","N","","7","MARIA JOSé","61991340627","Bem humorado, paciente, verdadeiro legal","Não","Não","56","57");

INSERT INTO tb_inscricao VALUES("46","","S","2017-12-30 19:32:19","A","S","S","","4","IVANILDES MãE","61934586671","Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.","Não.","Não.","57","58");

INSERT INTO tb_inscricao VALUES("47","Gej Dom Bosco","S","2017-12-30 19:32:34","A","S","S","","3","MáRCIA REJANE ","61999661640","Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.","","","58","59");

INSERT INTO tb_inscricao VALUES("48","","S","2017-12-30 19:32:47","A","S","S","","7","IVANILDES MãE","61934586671","Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.","Não.","Não.","59","60");

INSERT INTO tb_inscricao VALUES("49","Gej Dom Bosco","N","2018-01-06 19:50:37","A","S","S","","7","LETíCIA MARTINS ","61991426490","Meu nome é Roniel, tenho 21 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.","","","60","61");

INSERT INTO tb_inscricao VALUES("50","Grupo de jovens gej dom bosco","S","2018-01-10 13:01:07","A","S","N","","4","THAYNARA ","61995250255","Sou feliz com o que tenho","Não","Não como carne vermelha","62","63");

INSERT INTO tb_inscricao VALUES("51","","S","2017-12-21 13:01:09","D","N","N","","4","JEFFERSON ","61992225838","Sou consagrada, 1,60 de altura","Dipirona 25 gotas","Abacaxi","63","64");

INSERT INTO tb_inscricao VALUES("52","","S","2017-12-21 16:01:28","D","N","N","","3","JOANA DARC","61985315391","Sou muito alegre","Não","Não","64","65");

INSERT INTO tb_inscricao VALUES("53","","S","2017-12-23 22:00:34","D","N","N","","4","MãE","6134593241","Sou a Joyce, tenho 19 anos. Não sei oq falar sobre mim, mas espero nesse retiro top, buscar uma reconciliação e mais intimidade com Jesus, tchau.","","","65","67");

INSERT INTO tb_inscricao VALUES("54","","S","2017-12-24 15:13:28","D","N","N","","2","SILVANA DE ABREU SILVA","61991837377","24 anos, natural de Brasília, tenho 3 irmãos e moro com minha mãe. Consagrada a Maria pelo metodo de São Luís Montfort, caseira, procuro sempre aprender mais sobre a Santa Igreja.","Faço uso de um antidepressivo, é o utilizo uma vez ao dia, depois do café da manhã.","","66","68");

INSERT INTO tb_inscricao VALUES("55","Gej dom Bosco","S","2017-12-26 11:17:29","D","S","S","","3","MáRCIA FRANCINA DE OLIVEIRA ","61985175039","Sou uma pessoa que e brincalhona, ama retiro e chora muito nos retiros, tenho um amor imenso por nossa senhora e o título que mais amo e nossa senhora aparecida","Quando tenho crise de enxaqueca eu tomo (ibuprofeno, dipirona e etc.)","Não tenho","67","69");

INSERT INTO tb_inscricao VALUES("56","","S","2017-12-26 11:34:19","D","N","N","","3","JOELMA  MãE","61992419993","Bom...\nEstou afastada da igreja no momento, estou querendo me reconciliar e voltar de vez.","Não","Não","68","70");

INSERT INTO tb_inscricao VALUES("57","Grupo de jovens Fillis Mater Dei","S","2017-12-26 13:34:49","D","N","N","","3","LúCIA","61984651243","18 anos, consagrada a Nossa Senhora de Fátima, Coordenadora do Grupo Jovem Fmd, frequente na Paróquia Nossa Senhora da Assunção.","","","69","71");

INSERT INTO tb_inscricao VALUES("58","Catequese e grupo de jovem","S","2017-12-26 13:35:08","D","N","N","","7","PAI","61985012045","Sou bem chorona kkk, sou bem tímida, porém crio amizades bem rápido. Gosto muito de dança kk","","","70","72");

INSERT INTO tb_inscricao VALUES("59","","S","2017-12-27 14:49:41","A","N","N","","6","ROSANGELA ALVES MENDES","61985548484","Sou uma pessoa tímida mas que gosta muito de diversão...","","","71","73");

INSERT INTO tb_inscricao VALUES("60","Jupes","S","2017-12-28 13:35:44","D","N","N","","7","LOURDES","61982478621","Paróquia São Paulo apóstolo \nCoordenadora 2018-2019 grupo de jovens\nSanta Terezinha s2","","","74","76");

INSERT INTO tb_inscricao VALUES("61","","S","2017-12-28 22:26:05","A","N","N","","6","PAI","992263829","Eu sou da paróquia São João Evangelista  da samambaia norte  e faço parte do grupo de oração.","Eu uso o remédio contra crise de ansiedade.Chama fluoxetina,todos os dias pela manhã.","Não","75","77");

INSERT INTO tb_inscricao VALUES("62","sao joao evangelista","S","2017-12-29 16:59:22","A","N","N","","4","NEIDE","61985609412","sou uma menina tímida, não gosto muito de fazer atividades em grupo pois me sinto um pouco desconfortável, gosto muito de escrever, sou catequista mas sinto que minha fé ainda esta muito abalada.","","","76","78");

INSERT INTO tb_inscricao VALUES("63","","S","2017-12-30 09:07:52","A","N","N","","3","ROSANGELA ","6185548484","18 anos, devota de Nossa Senhora ","Não","Não","77","79");

INSERT INTO tb_inscricao VALUES("64","","S","2017-12-30 19:22:55","A","S","S","","9","ELIENE","61934594937","———-","","","72","80");

INSERT INTO tb_inscricao VALUES("65","Grupo Servir, quadrilha e ministério de música da Verbo Divino, e tbm participo do grupo SIM e ministério de música da Paroquia Nossa senhora Rosario de Pompeia","S","2017-12-30 12:02:00","D","N","N","","5","OSVALDO BUSSOLO ","61981173673","Eu sou muito extrovertida, adoro cantar, dançar é comigo mesmo, amo teatro, e gosto muito de ajudar a igreja, pelo menos as q eu frequento, gosto muito de me divertir com meus amigos, e minha família tambem, sou aberta a opiniões sobre vários assuntos e sou bastante teimosa quando quero algo (e sempre consigo).","Não uso","Não tenho","79","81");

INSERT INTO tb_inscricao VALUES("66","Guardiã do Santissimo sacramento","S","2017-12-30 16:18:32","D","N","N","","5","NAMORADO ","6199620997","Estudante de Direito e pós graduanda em direito penal, investigação forense e perícia criminal","Clonazepan","Alergica a pimenta","80","82");

INSERT INTO tb_inscricao VALUES("67","Renascer com Maria","S","2018-01-01 17:15:10","D","N","N","","3","ELIDIA","61998397590","Sou estudante, e quero viver uma experiência nova de carnaval.","Não","Não","81","83");

INSERT INTO tb_inscricao VALUES("68","","N","2018-01-18 22:59:45","A","N","N","","6","KARLENE","61993055454","Sou uma pessoa calma gosto de ouvir conselhos , gosto de estar com minha família","Nao","Nao","82","84");

INSERT INTO tb_inscricao VALUES("69","Ministério de acólitos e coroinhas","S","2018-01-01 22:40:30","A","N","N","","3","JOANA DARC DE FRANçA OLIVEIRA","6134582228","tenho 15 anos, sou crismada, sou coroinha, faço parte do grupo jovem","Não","Não","83","85");

INSERT INTO tb_inscricao VALUES("70","EAC, EJC","S","2018-01-02 21:48:11","D","N","N","","7","ZILMA ","61992408401","Sou bem timido com pessoas novas, gosto de Cantar, dança, e rezar. Gosto de fazer teatro.","","","84","86");

INSERT INTO tb_inscricao VALUES("71","GEJ Dom Bosco","S","2018-01-03 10:18:02","A","S","S","","3","DELCIA APARECIDA","61986118724","Neste retiro de carnaval completará 1 ano que conheço o grupo. Faço parte da promessa que Deus tem pro GEJ de ser mais e de conquistar a juventude para Cristo pelo exemplo e intercessão de Dom Bosco. Sou católica apostólica romana, consagrada a 2 anos, pertencente a Virgem Maria, tenho a modéstia como meu \'estilo de vida\' e vocacionada a missão.","Não.","Não","85","87");

INSERT INTO tb_inscricao VALUES("72","","N","2018-01-03 15:48:20","D","N","N","","7","MILENA","61985761487","Um moleque que vive sempre em batalha espiritual.. Tende a crescer mais na fé e é isso","","","86","88");

INSERT INTO tb_inscricao VALUES("73","","S","2018-01-04 12:25:33","D","N","N","","6","SEBASTIANA DA CRUZ","61986449871","Sou a Edilene, uma menina alegre e sorridente que gosta de ajudar o próximo. Me interessei pelo retiro porque quero conhecer lugares e pessoas novas","Não","Não","87","89");

INSERT INTO tb_inscricao VALUES("74","Gej","S","2018-01-04 12:24:52","A","S","S","","3","MARIA NAZARE","61982999300","...","","","88","90");

INSERT INTO tb_inscricao VALUES("75","GEJ Dom Bosco","S","2018-01-06 16:02:02","A","S","S","","3","ARNALDO PAI","61986292805","“O que somos é presente de Deus; no que nos transformamos é o nosso presente a Ele.”","Sim\nAmato - diariamente antes de dormir.","Lactose","37","91");

INSERT INTO tb_inscricao VALUES("76","","N","2018-01-05 14:32:41","A","S","S","","10","MARIA VILANIR","61983232905","EU SOU LEGAL PÔ, QUERO GERAR JESUS PRAS PESSOAS NO RETIRO. VAMOS FAZER UMA BAGAÇA s2","NOT","NOT","90","92");

INSERT INTO tb_inscricao VALUES("77","Grupo jovem JUSLAC","S","2018-01-05 14:49:10","A","N","N","","3","MãE POLIANA ","61982207943","Olá, meu nome é Paloma, tenho 16 anos, sou um pouco tímida, sou de uma família toda católica. Participo de um grupo jovem chamado Juslac da Paróquia Nossa Senhora de Fátima, crismei a pouco tempo e pretendo ser catequista...","Não","","91","93");

INSERT INTO tb_inscricao VALUES("78","Grupo jovem JUSLAC","S","2018-01-05 15:24:15","A","N","N","","3","MARIA DE LURDES SILVA DE SOUZA ","6199950379","Oi, eu sou Maria Letícia, tenho 15 anos,venho de uma família católica, porém meu irmão não é praticante, meu pai se desviou e começou a frequentar centro espírita com minha tia,mas eu e minha mãe somos praticantes, meus pais são separados, sou apaixonada por nossa senhora, e sou alucinada por Jesus, participo de um grupo jovem chamado JUSLAC da capela nossa senhora da conceição,estou à procura da minha vocação e dons, sou crismada a pouco tempo e pretendo ser catequista.","Não, nenhuma.","Como de tudo.","92","94");

INSERT INTO tb_inscricao VALUES("79","Nossa senhora de Fátima","S","2018-01-05 16:11:53","D","N","N","","7","MARIA APARECIDA SILVA","61991891844","Jovem de 16 anos , participo de um grupo chamado Juslac na minha pastoral .","Não","Não","93","95");

INSERT INTO tb_inscricao VALUES("81","GEJ DOM BOSCO","S","2018-01-06 15:57:11","A","S","S","","3","MARIA DE JESUS","61933594933","Tenho 19 anos, sou membro desse grupo lindo e tomei a decisão de entregar toda minha vida para Jesus através da evangelização dos jovens e todos aqueles que necessitam, é isto !!","","","95","97");

INSERT INTO tb_inscricao VALUES("82","","N","2018-01-06 19:04:42","D","N","N","","3","SILVANIA PEREIRA DE SOUZA ","6134752840","Jennifer Bianca, estudo no cemtn e me enterrarei muito por causa de uma amiga que estuda na minha sala, e quero volta pra igreja","","","96","98");

INSERT INTO tb_inscricao VALUES("83","GEJ Dom Bosco","S","2018-01-08 10:29:58","A","S","S","","4","MARIA PEREIRA DOS SANTOS DIAS","61933593317","Tenho 20 anos, faço Direito na UnB, estou estagiando do Tribunal de Contas do DF. Amo chocolate, sorvete e amo ouvir música.","","","98","101");

INSERT INTO tb_inscricao VALUES("84","","N","2018-01-06 21:44:40","A","N","N","","5","ELIOMARA SOARES CONCEIçãO","61999898071","Bom, tenho 17 anos e sou estudante.\nO que eu mais gosto de fazer é nadar e ficar em casa, às vezes dou umas saídas mas nem sempre. \nSou alegre e um pouco sem paciência.","Não","Não","100","102");

INSERT INTO tb_inscricao VALUES("85","","N","2018-01-06 22:00:18","A","N","N","","3","MARIA ORLINDA B L GOMES","6134595379","já fiz vários retiros","","","101","103");

INSERT INTO tb_inscricao VALUES("86","","S","2018-01-07 11:12:24","A","N","N","","4","PATRíCIA NEVES","61995438917","Sou religiosa, mas no momento  estou um pouco ansiosa e depressiva","Nao","Não","103","104");

INSERT INTO tb_inscricao VALUES("87","","S","2018-01-07 19:03:38","A","N","N","","4","GENI GOMES ","61986719608","...","","","104","107");

INSERT INTO tb_inscricao VALUES("88","","S","2018-01-07 20:22:29","A","N","N","","8","LEILA TOMINAGA ","61984352161","Sou do grupo Adonai, tenho 18 anos sou o mais lindo do grupo kkkkk kkkkk mentira , sou palhaço","Chocolate de 1hr em 1hr","Pequi","105","108");

INSERT INTO tb_inscricao VALUES("89","Grupo Jovem Adonai","S","2018-01-15 18:29:58","A","N","S","","8","LEILA TOMINAGA","61982512602","Sou casado tenho 3 filhos e trabalho com jovens em minha comunidade","Não","Não","106","109");

INSERT INTO tb_inscricao VALUES("90","Música e grupo jovem","S","2018-01-07 20:42:07","A","N","N","","6","MãE","61996028107","Gosto de interagir com pessoas novas,adoro fazer novas amizades.","","","107","110");

INSERT INTO tb_inscricao VALUES("91","Juventude","S","2018-01-07 22:31:42","A","N","N","","8","CARMELINDA ","61993693578","Tenho 20 anos, sou coordenador do grupo jovens anunciantes de Cristo (JAC) e da pastoral da juventude, na paróquia nossa Senhora de Lourdes, lá também sou catequista e faço parte dos servos da liturgia paroquial. Sou uma pessoa tranquila, alegre. Procuro sempre ajudar quem precisa.","","","108","111");

INSERT INTO tb_inscricao VALUES("92","JACIM","S","2018-01-12 12:41:33","A","N","N","","5","DAYANE MOREIRA DA SILVA","61985615167","SOU BEM CARISMÁTICA","USO REMÉDIO TODOS OS DIAS AS 21 HORAS","SEM RESTRIÇÃO","109","112");

INSERT INTO tb_inscricao VALUES("93","","N","2018-01-08 18:18:17","A","N","N","","8","LETíCIA","6199457429","Meu nome é Laura, tenho 13 anos, vou fazer 14 anos dia 20/01, gosto de ouvir música principalmente indie e kpop, minhas comidas favoritas são hambúrguer e pizza e sou tímida.","","","110","113");

INSERT INTO tb_inscricao VALUES("94","","N","2018-01-08 19:49:01","D","N","N","","4","DENI","6133793695","Participava na renovação carismatica e me afastei tem uns 5 anos","sim, Depakene 2 de manha e 1 a noite, 1 fluoxetina","Intolerância a lactose","111","114");

INSERT INTO tb_inscricao VALUES("95","","N","2018-01-08 20:22:46","D","N","N","","7","AYLTON","61986621536","Sempre fui afastado de Deus, mais eu e minha namorada estamos buscando a Deus","não","não","112","115");

INSERT INTO tb_inscricao VALUES("96","","S","2018-01-08 21:54:56","A","N","N","","7","MãE","6133852979","Ministro de música do ministério pétalas de fogo, retiro para recarregar baterias e auto conhecimento","","","113","116");

INSERT INTO tb_inscricao VALUES("97","","N","2018-01-08 22:21:04","A","N","N","","4","ROSE MãE","61991999329","Eu sou a Nathalya faço parte do ministério de música Pétalas de Fogo,mora no Gama faço parte do segue-me da paróquia Imaculada Conceição do Gama .","Sim remédio para gastrite. Esomeprazol, tomo ele pela manhã.","","114","117");

INSERT INTO tb_inscricao VALUES("98","Música","S","2018-01-08 22:23:28","A","N","N","","7","NEUZA","6136293497","Faço parte de um ministério de música chamado Pétalas de Fogo, nós somos do Gama. Já participei de vários retiros e também já trabalhei em muitos.","Não","Não","115","118");

INSERT INTO tb_inscricao VALUES("99","Música","S","2018-01-08 22:47:13","A","N","N","","8","NIVIA APARECIDA ","06199988184","24 anos, católico, músico, namorando, membro do ministério de música pétalas de fogo, frequento as paróquias do Gama, normalmente a Imaculada","Não uso nenhuma medicação.","Nenhuma.","116","119");

INSERT INTO tb_inscricao VALUES("100","Grupo Jovem Por Amor","S","2018-01-09 11:32:23","A","N","N","","7","SELMéLIA","61991521943","Olá, sou carismática, alegre, risonha, amiga sempre e também meiga! E completamente louca por Jesus!","","","117","120");

INSERT INTO tb_inscricao VALUES("101","","N","2018-01-09 15:19:35","A","N","N","","3","MARIA APARECIDA FERREIRA DE SOUSA ","61992003034","Meu nome é Lara, tenho 16 anos e desejo ter maior intimidade com Cristo","","","118","121");

INSERT INTO tb_inscricao VALUES("102","","N","2018-01-09 22:06:43","A","N","N","","4","PATRíCIA ","6184600568","Sou da Área Pastoral São José em Vicente Pires, sou catequista da Crisma. Gosto de diversão, de conhecer pessoas, e principalmente  de adorar a Deus!","Não","Não","119","122");

INSERT INTO tb_inscricao VALUES("103","GEJ Dom Bosco","S","2018-01-11 10:35:38","A","S","S","","5","MãE ","61930826060","Sou feliz por ser Gejeriana","","","61","123");

INSERT INTO tb_inscricao VALUES("104","","N","2018-01-11 20:14:55","D","N","N","","3","TATIANA MãE","6184355868","sou uma pessoa tranquila, com boa comunicação porém tímida.","","","121","124");

INSERT INTO tb_inscricao VALUES("105","Jovem","S","2018-01-12 11:16:48","A","N","N","","5","AMILTON HONóRIO","61996859527","Participo do grupo jovem Jacim,  quero me aproximar cada vez mais de Deus e de Maria, sou quieta e calada","Sim, tomar todo dia às 14:00 horas","","122","125");

INSERT INTO tb_inscricao VALUES("106","","N","2018-01-12 11:45:37","A","N","N","","6","MARIZETE BISPO REIS","6130835505","Fui desde pequena evangelizada na igreja católica,sou uma pessoa muito religiosa,amorosa, extrovertida e participo do Ministério Jovem (MJ-RCC)","Não","Não","123","126");

INSERT INTO tb_inscricao VALUES("107","","S","2018-01-12 12:47:15","A","N","N","","3","DENNYSEH","61993836591","Tenho 15 anos,fui coroinha 4 anos,sou consagrada a Virgem Maria,estou no segundo ano,amo estudar,pretendo ser acolita.","Não.","Não.","124","127");

INSERT INTO tb_inscricao VALUES("108","GEJ","S","2018-01-13 11:31:01","D","S","N","","7","ADELICE","61992626767","Uma pessoa simples, não tenho frescura com nada e que só quer está na presença de Deus.","","","125","128");

INSERT INTO tb_inscricao VALUES("109","Adonai","N","2018-01-13 13:14:57","A","N","N","","7","MINHA MãE ","6191660308","Sou o Vitor sou transplantado","Sim uso de manhã e à tarde 6:50 e 18:50","Só carambola","126","129");

INSERT INTO tb_inscricao VALUES("110","Grupo jovem","S","2018-01-15 09:53:18","A","N","S","","4","ROSA ALEMIRA ","61934599984","Tenho 19 anos. Trabalho em uma creche e curso pedagogia.","Não","Não","127","130");

INSERT INTO tb_inscricao VALUES("111","","S","2018-01-15 09:52:58","A","S","S","","8","ANDERSON","61932018084","Sou uma pessoa simples","","","97","131");

INSERT INTO tb_inscricao VALUES("112","Gej","S","2018-01-16 09:35:37","A","S","S","","7","MãE","61933598257","Estudante de Relações Internacionais. Um grande sonhador, nascido no século errado.","","","129","132");

INSERT INTO tb_inscricao VALUES("113","ajuc","S","2018-01-18 20:01:59","A","N","N","","3","DORIMAR","61993615001","17 anos moro em Brazlandia sou crismada frequento o AJUC na QNJ SANTA TEREZINHA","","","130","133");

INSERT INTO tb_inscricao VALUES("114","","N","2018-01-16 12:00:04","A","N","N","","8","EDIVANIA FERNANDES DE ARAúJO XAVIER","38999024362","Não gosto das festas de carnaval,e procuro fazer novas amizades que somem na minha vida! Não tem lugar melhor para isso, do que este retiro.","","","131","134");

INSERT INTO tb_inscricao VALUES("115","Grupo Jovem Adonai","N","2018-01-16 22:24:36","A","N","S","","7","RONNY TOMINAGA","61984352161","-SOU A TIA TOMINAGA\n-DIABÉTICA \n-MÃE DO EDU E DA RIDICULA DA AMANDA KK\n-AMO O GEJ E AGRADEÇO O CONVITE DE TRABALHAR NO RETIRO \n-AMO DOM BOSCO \n-CASADA COM O TIO TOMINAGA","Mediformina \nDiamocron","Camarão","132","135");

INSERT INTO tb_inscricao VALUES("116","CATEQUISTA","S","2018-01-19 23:42:49","A","N","N","","8","DIONÍSIO DE OLIVEIRA LIMA JUNIOR ","61981990261","Tenho 29 anos... Gosto de fazer retiros, para buscar cada vez mais aprender. Estar sempre perto de Deus e buscar cada vez mais minha santidade. Sou tagarela, sorridente, faço amizades com facilidade e espero que Deus possa me mostrar algo diferente de todas que já vivenciei!","Sim, fica comigo e sei os horários.","Não","133","136");

INSERT INTO tb_inscricao VALUES("117","","N","2018-01-16 16:50:47","A","N","N","","9","AVó","61992232118","Sou uma jovem timida alegre, uma boa menina...","Não tomo nenhuma medicação analgésico pra dor quando é preciso","","134","137");

INSERT INTO tb_inscricao VALUES("118","","N","2018-01-16 19:03:11","A","N","N","","6","PAI","6192108927","Participa e frequenta a casa das irmãs missionárias da caridade","","","135","138");

INSERT INTO tb_inscricao VALUES("119","Filis Mater Dei","N","2018-01-16 22:53:21","D","N","N","","2","GENIVALDO VIEIRA DA SILVA","61985614318","Sou muito chorona","Uso dipirona para dor de cabeça e  ibupril 600mg para dor","Eu não como feijão e nem verduras rs","136","139");

INSERT INTO tb_inscricao VALUES("120","","S","2018-01-17 20:04:06","A","N","N","","7","GUI ","61999252609","Gente Boa kk","Nao","","137","140");

INSERT INTO tb_inscricao VALUES("121","Gej Dom Bosco","S","2018-01-17 21:10:23","A","S","S","","8","JOSE ARNALDO","61993003405","Sou garoto de programa e bem legal depois eu mesmo vou la e arrumo o textrino melhor","não","não","1","141");

INSERT INTO tb_inscricao VALUES("122","","S","2018-01-17 20:45:55","A","N","N","","8","ELZA","61985727536","Estudo integral pra passar menos tempo em casa e jogador de lol. Prazer. ","","","139","142");

INSERT INTO tb_inscricao VALUES("123","Pastoral Familiar","S","2018-01-17 21:03:18","A","N","N","","5","LUCIANO ","6136244679","...","Remédio para dor de cabeça e no estomago","Não","140","143");

INSERT INTO tb_inscricao VALUES("124","","S","2018-01-17 21:26:51","D","N","N","","6","MARIA DO SOCORRO RODRIGUES SANTOS","6133590378","Eu sou católica, consagrada a 2 anos, amo comer e dormir, amo a igreja e valorizo muito a família e minhas amizades.","","","141","144");

INSERT INTO tb_inscricao VALUES("125","","N","2018-01-18 10:04:17","A","N","N","","6","WESLEY ","61998739058","Sou uma pessoa bem legal, amavel, forte, a príncipio não sou muito comunicativa, tenho um pouco de dificuldade nisso, timidez, geralmente   tenho necessidade de ter uma certa intimidade, amizade. Também sou observadora que só e sou bastante família.","Para hipertensão. \nTomo pela manhã em jejum.","Até o momento, não.","142","145");

INSERT INTO tb_inscricao VALUES("126","","N","2018-01-18 13:13:12","A","N","N","","8","ANTONIA SIMONE ","61985785437","Não tenho nada para falar.","","Alergia leve com, Trigo, chocolate e derivados.","143","146");

INSERT INTO tb_inscricao VALUES("127","","N","2018-01-18 16:37:04","A","N","N","","3","HELENA","61999726518","sou catolica porem não frequento nenhuma igreja, sou um pouco tímida, mas gosto de fazer novas amizades e ajudar ao proximo","sim, colágeno as 09:00 e 21:30, ômega 3 depois do almoço e da janta e pílula anticoncepcional as 21:30","nenhuma","144","147");

INSERT INTO tb_inscricao VALUES("128","","S","2018-01-18 17:20:57","A","N","N","","4","GUTEMBERG ","61995131698","Sou persistente. Às vezes tímida. E dou risada por tudo!","","","145","148");

INSERT INTO tb_inscricao VALUES("129","Grupo Jovem Fillis Mater Dei","S","2018-01-18 21:26:11","A","N","N","","3","MARIA DAS GRAçAS FREITAS ","61986380391","Sou consagrada a Nossa Senhora de Fátima, sempre andei pelo caminho caminho Deus.","Não","Não","146","149");

INSERT INTO tb_inscricao VALUES("130","Gej Dom  Bosco","S","2018-01-18 22:51:06","A","S","S","","4","MARIA DOS MILAGRES ","61991822946","Sou realizada pelos sonhos conquistados, Apaixonada em crianças, Amooo minha familia, Grata a Deus por tudo que tenho, por isso quero  buscar a Deus cada vez mais... Consagrada a Santíssima Virgem Maria. TOTUS TUS.","Não","Não","147","150");

INSERT INTO tb_inscricao VALUES("131","","N","2018-01-22 16:11:54","A","N","N","","4","MARA RúBIA ARAúJO DO NASCIMENTO SILVA","61985683988","Eu acho que o retiro é uma oportunidade de vida, de conhecer outra forma de ficar perto de Deus","","","157","160");

INSERT INTO tb_inscricao VALUES("132","Ágape","S","2018-01-22 16:14:37","A","N","N","","3","EDILENE SILVA","61992829568","Tenho 16 anos, nasci em um berço \"católico\" só por falar. Conheci Jesus em 2014 e me apronfundei mais em 2015 quando entrei no grupo de jovens ágape da paróquia imaculada conceição.","Toragesic-cólica","","158","161");

INSERT INTO tb_inscricao VALUES("133","","S","2018-01-22 21:46:13","A","N","N","","9","MãE CIDA","61985528477","Me chamam de Salvino e tenho 16 anos, o pai é o pai","","","159","162");

INSERT INTO tb_inscricao VALUES("134","","S","2018-01-22 21:55:41","A","N","N","","8","CIDA","61998513075","SOU WESLEY, TENHO 16 ANOS","NAO","PROTEINA DO PORCO","160","163");

INSERT INTO tb_inscricao VALUES("135","","N","2018-01-22 22:07:15","A","N","N","","8","MãE ROSA","61986364435","Meu nome é Victor, tenho 17 anos e sou legal","","","161","164");

INSERT INTO tb_inscricao VALUES("136","CATEQUESE","S","2018-01-23 13:37:18","D","N","N","","7","SEBASTIANA ","61984327005","Então, não sei o que dizer sobre mim, mas eu venho de uma família bem grande e barulhenta, não me leve a mal eu amo isso, mas dentro de uma casa onde eu parece ter vindo de um outro universo é meio difícil de socializar, todos sempre compartilham das mesmas opiniões, gostos musicais, modo de se vestir e até mesmo apreciam as mesmas series de TV, mas acho que é bom para uma questão de equilíbrio ter tantas diferenças o problema é que eu os amo demais mas é difícil tentar fazer parte quando você é visto como uma total estranha. Não fico muito em casa, trabalho a semana toda e no final de semana tem as atividades da pastoral. Sinceramente não sei mais o que falar rsrs.... Estou ingressando na Fateo para cursar teologia e sinceramente isso me deixa muito animada. Quero um dia casar e constituir uma família conforme Deus sonhou, com todos os filhos que ele nos confiar. Ah, é claro tenho namorado e ele me ajuda muito na questão de caminhar com os olhos fitados para o céu, além do mais é meu melhor amigo. Enfim acho que me excedi nessas linhas mas foi o que saiu, estou ansiosa para o retiro pois já faz algum tempo que estou vivendo uma certa aridez espiritual e sei que de certa forma por mais difícil que seja isso é sinal de coisa boa vindo, afinal o amor dói e sei que mesmo na dor ou na alegria não tem outro lugar  que eu prefira estar do que com Jesus.","","","162","165");

INSERT INTO tb_inscricao VALUES("137","","N","2018-01-23 13:42:29","D","N","N","","9","PALOMA","61995632368","Sou um caraextrovertido gosto de fazer amizades e preciso me reconciliar com deus","Não","Não","163","166");

INSERT INTO tb_inscricao VALUES("138","","S","2018-01-23 20:48:51","A","N","N","","8","ANTôNIA BARBOSA DA SILVA ","6130814673","Sou um jovem consagrado a nossa senhora e espero que esse retiro seja muito mariano","Não","Não","164","167");

INSERT INTO tb_inscricao VALUES("139","","S","2018-01-23 22:55:35","A","N","N","","7","VITóRIA LIMA","61994129510","Apenas um pecador em busca da Salvação.","Não","Não","165","168");

INSERT INTO tb_inscricao VALUES("140","","S","2018-01-24 00:22:35","A","N","N","","8","CLODOALDO ","61992859045","...","Não","Não","166","169");

INSERT INTO tb_inscricao VALUES("141","Guardiãs do Santíssimo Sacramento","S","2018-01-24 10:40:47","A","N","S","","3","VANETE MINHA MãE ","61933594415","Tenho 18 anos, e o meu maior desejo é que Jesus cresça e eu desapareça.","","","167","170");

INSERT INTO tb_inscricao VALUES("142","Grupo de coroinhas, e grupo jovem","S","2018-01-24 11:32:07","A","N","N","","3","VANESSA","61982051087","Sou consagrada a Nossa Senhora Rosa Mística, sou uma das coordenadoras do grupo jovem da minha paróquia","","","168","171");

INSERT INTO tb_inscricao VALUES("143","","N","2018-01-24 13:31:01","A","N","N","","3","JOSELMA DE CACIA DA SILVA PEREIRA","6134581834","Sou uma pessoa tranquila, dedicada aos meus estudos e ideais, sempre coloco Deus e Nossa Senhora na frente de todas futuras conquistas, sou simpática e tímida.","","","169","172");

INSERT INTO tb_inscricao VALUES("144","","S","2018-01-24 13:41:02","A","N","N","","6","JOSELMA DE CACIA DA SILVA PEREIRA","61934581834","Sou uma pessoa tranquila, sou judoca profissional, carrego sempre Jesus e Nossa senhora na frente em todas as derrotas e vitórias da vida.","Não","","170","173");

INSERT INTO tb_inscricao VALUES("145","","N","2018-01-25 14:44:32","A","N","N","","6","MARGARETE DESCONZI","3836471034","23 anos","","","171","174");

INSERT INTO tb_inscricao VALUES("146","Grupo Jovem Adonai, Ministério Paraclitus","N","2018-01-25 18:44:53","A","N","N","","7","ANTôNIA ALVES DE OLIVEIRA ","61984880796","Sou namorado da Tominaga \nSou do Adonai \nSou tímido \nSou baixista \nSou da Paraclitus \nSou filho único \nAmo minha namorada♡. (Ps. nem é ela que ta preenchendo a inscrição)","Bomba de asma(em caso de crise asmática)","","172","175");

INSERT INTO tb_inscricao VALUES("147","","S","2018-01-26 08:45:13","A","N","N","","3","PAI ","61992108927",".","","","173","176");

INSERT INTO tb_inscricao VALUES("148","","S","2018-01-26 09:37:32","A","N","N","","7","MãE","61996959283","Formada em Direito, não sou casada, não tenho filhos, trabalho, tenho 30 anos. Extrovertida, gosto de ouvir música, praticar esportes e fazer amizades.","não","não","174","177");

INSERT INTO tb_inscricao VALUES("149","Juventude Missionária Salesiana","S","2018-01-26 13:55:38","A","N","S","","3","MãE ","61986565189","Bom eu me chamo Fernanda a (fernandinha do gej) kkk, já fui do gej mais hoje faço parte apenas da JMS ( juventude missionária salesiana).. e nesse retiro quero me doar de corpo e alma para todas as pessoas que Jesus nos confiou.","não","não","175","178");

INSERT INTO tb_inscricao VALUES("150","","N","2018-01-26 22:32:56","A","N","N","","4","MãE","61986680252",".","","","176","179");

INSERT INTO tb_inscricao VALUES("151","","S","2018-01-27 14:15:32","D","S","N","","2","MáRCIA FRANCINA","61985175039","Sou animada, brincalhona, amo criança","Nao","Nao","177","180");

INSERT INTO tb_inscricao VALUES("152","","N","2018-01-27 15:19:30","A","N","N","","7","MARIA MEDEIROS","61999701675","Moro em Taguatinga, família um pouco complicada","","","178","181");

INSERT INTO tb_inscricao VALUES("153","","N","2018-01-27 15:27:16","A","N","N","","6","MARIA MEDEIROS","61999701675","Garota de Taguatinga, ensino médio 17 anos.","","","179","182");

INSERT INTO tb_inscricao VALUES("154","","N","2018-01-27 18:47:05","A","N","N","","2","LIDIANE MARINE","61999290418","Um pouco tímida e insegura.","Não.","Não.","180","183");

INSERT INTO tb_inscricao VALUES("155","GEJ DOM BOSCO","S","2018-01-27 23:36:11","A","S","S","","7","TIA ZEZE","61930835505","Simpático e engraçado. Super amigo e Carismático.","Não","Não posso comer carne","181","184");

INSERT INTO tb_inscricao VALUES("156","Catequese e Coordenação de grupo de coroinhas","S","2018-01-28 22:46:17","A","N","N","","4","MARIA DE NAZARé","61983663811","Sou uma pessoa que gosta de ajudar as outras, é o que mais me dar prazer na vida. Sou bastante tímida, mas depois consigo me soltar com o tempo, estou com relacionamento fragilizado no que diz respeito a mim e Deus por causa de uma tentativa de suicídio, e espero de todo coração voltar a ter alegria e está novamente ao lado Dele.","Após o café da manhã : Exodus ( 1 comprimido), Sulfato Ferroso ( 1 cp), Cálcio (2 cps) e materna (1 cp).\nAntes de dormir: Donaren ( 1 cp) e Carbolitium ( 1 cp).","Gordura e açúcar.","182","185");

INSERT INTO tb_inscricao VALUES("157","","S","2018-01-29 08:01:33","A","N","N","","3","ROSANA ","61998129491","Eu sofro de crises convulsivas ( convulsão) e  tenho TDH ( déficit de atenção)","Tegretol tomar as 7hrs da manhã e as 7hrs da noite","","183","186");

INSERT INTO tb_inscricao VALUES("158","","N","2018-01-29 21:33:01","A","N","N","","7","DALVA ","6134591490","Tenho 22 anos. E como nunca fiz um retiro esse ano eu decidir saber como é .","","","184","187");

INSERT INTO tb_inscricao VALUES("159","","S","2018-01-29 23:22:49","A","N","S","","4","ROMANA ","61981122316","Eu sonho com o céu a todo tempo!","","","185","188");

INSERT INTO tb_inscricao VALUES("160","","N","2018-01-30 22:24:00","A","N","N","","8","PAI","61984827324","A eu sou muito estrofertido gosto de comer e brincar com a cara dos outros","","","186","189");

INSERT INTO tb_inscricao VALUES("161","","N","2018-01-30 22:33:36","A","N","N","","7","PAI","61984827324","Faço amizade muito fácil, gosto de rir.","","","187","190");

INSERT INTO tb_inscricao VALUES("162","RCC, coroinha","N","2018-01-30 23:28:02","A","N","N","","7","MãE","61984467627","Eu sou um jovem da renovação carismática católica,e coroinha","Não","Não","188","191");

INSERT INTO tb_inscricao VALUES("163","Equipe Jovem AJUC","S","2018-02-01 13:43:52","A","N","S","","8","ANTôNIA BARBOSA DA SILVA","61985545695","Sou mais conhecido como Eude Maria, tenho 17 anos, 2 anos que estou na caminhada á um que prego a Palavra de Deus. #DeusValeAPena","Não","Não","190","193");

INSERT INTO tb_inscricao VALUES("164","Dizimo / Liturgia","S","2018-02-01 21:30:00","D","N","N","","7","NARIO","62991895132","Sou Jovem e tenho desejo em ser Sacerdote.","","","191","194");

INSERT INTO tb_inscricao VALUES("165","Fillis Mater Dei","S","2018-02-01 22:34:48","D","N","N","","7","MARIA EUNICIE","61986096929","Jovem enteressado em seguir o caminho de Deus e poder converter o maximos de jovens que eu puder, estou em formação de catequista e cerimoniário.","Nao faço, nao tenho conhecimento profundo á esse ponto","Nenhuma","192","195");

INSERT INTO tb_inscricao VALUES("166","","N","2018-02-02 11:05:14","A","N","N","","6","MAILSON FERREIRA","6183381196","TRANQUÍLO.","NÃO.","NÃO.","193","196");

INSERT INTO tb_inscricao VALUES("167","Cerimoniário e GEJ","S","2018-02-02 15:29:32","A","S","N","","8","SOLANGE ","61992687082","Sou uma pessoa Top","","","194","197");

INSERT INTO tb_inscricao VALUES("168","","N","2018-02-02 15:54:49","A","N","N","","8","SOLANGE ","61992687082","Sou muito seria, porem legal ! não gosto de muitas brincadeiras...\nMas garanto que sou um amor de pessoa.","","","196","199");

INSERT INTO tb_inscricao VALUES("169","","S","2018-02-03 12:31:21","A","S","N","","7","EDILEUZA","61995264082","Sou o Diego kk","Não","Não","197","200");

INSERT INTO tb_inscricao VALUES("170","","S","2018-02-03 22:41:21","A","N","N","","7","EDNA","6195648386","Sou Soniara, tenho 28 anos, moro no Guará, sou estudante da UnB do curso de Serviço Social, gosto de música, não frequento nenhum grupo jovem, gosto de dormir e de ler.","Não.","Não.","198","201");

INSERT INTO tb_inscricao VALUES("171","","S","2018-02-03 22:44:49","A","N","N","","6","MAE","61998143543","Alguem em busca de seus objetivos, creio que na presença de Deus nada sera impossivel para quem nele cre.\nEstudo psicologia o que me ajuda cada vez mais a ter amor,compaixão e solidariedade com meu proximo.","sim.\npropanolol duas vezes ao dia 11:00 da manha e 23:00 da noite\npaara pressão.","nao.","199","202");

INSERT INTO tb_inscricao VALUES("172","","S","2018-02-03 22:49:55","A","N","N","","7","EDNA ","6195648386","Sou Júlia, tenho 20 anos, estudante de Pedagogia da UnB, apaixonada por escolarização de surdos, gosto de dormir, comer, ler e ser feliz! :)","Não.","Não.","200","203");

INSERT INTO tb_inscricao VALUES("173","","S","2018-02-04 13:23:13","D","N","N","","8","MARINALVA MARTINS","6184837287","Um jovem buscando voltar ao amor de Deus.","","Alergia a Camarão.","201","204");

INSERT INTO tb_inscricao VALUES("174","","N","2018-02-04 17:30:48","A","S","N","","6","PAI","61992999241","Sou uma pessoa tranquila e bacana","Não","","202","205");

INSERT INTO tb_inscricao VALUES("175","","S","2018-02-04 19:27:59","A","N","N","","3","IVANILDES","6134586671","Ex integrante do Gej.","Não.","Não.","203","206");

INSERT INTO tb_inscricao VALUES("176","","N","2018-02-04 22:26:21","A","N","N","","8","EDIVANIA","61985788495",".","","","204","207");

INSERT INTO tb_inscricao VALUES("177","Grupo Jovem","S","2018-02-05 02:06:05","A","N","N","","3","MARCUS VINICIUS GOMES CIRILO","61982886539","Estudante de Enfermagem, namoro, coordeno o Grupo Jovem Getsêmani na Paróquia São Domingos Sávio (R.Fundo1). Espero que o retiro possa fazer com que eu viva mais uma experiencia com Jesus e que isso fortaleça os chamados de Cristo pra mim.\nVAI SER UM PIPOCO!!!","","","205","208");

INSERT INTO tb_inscricao VALUES("178","","N","2018-02-05 16:43:17","A","N","N","","7","ELIETE APARECIDA BARROSO","6130814590","Sou de boa","Não","Não","206","209");

INSERT INTO tb_inscricao VALUES("179","Paróquia Nossa Senhora da Assunção","N","2018-02-05 18:13:42","A","N","N","","7","FRANCISCO WELLINGTON ","6195706299","Meio tímida","Não","","207","210");

INSERT INTO tb_inscricao VALUES("180","","S","2018-02-05 20:35:53","D","N","N","","2","CARLOS ROBERTO SOUSA NUNES","6133915510","....","","","208","211");

INSERT INTO tb_inscricao VALUES("181","Santa Luzia","N","2018-02-05 22:17:10","A","N","N","","8","JHONY","6199910092","Lindo espero nesse retiro muitas bênçãos","Nao","Como tudo","209","212");

INSERT INTO tb_inscricao VALUES("182","","N","2018-02-05 22:38:17","A","N","N","","1","MãE","61999252609","Emotiva, companheira, sincera, e com muitas falhas também!","Não","Não","210","213");

INSERT INTO tb_inscricao VALUES("183","","S","2018-02-06 07:03:24","A","N","N","","3","MáRCIA","61996252678","Sou bem amigável e alegre.","","","211","214");

INSERT INTO tb_inscricao VALUES("184","JMS","N","2018-02-07 08:00:35","D","N","N","","8","JOCILENE MãE ","61999763010","Super animado, crismado e deposto a ajudar","","","212","215");

INSERT INTO tb_inscricao VALUES("185","","N","2018-02-07 09:41:06","D","N","N","","6","TEREZA MARIA DA COSTA","61992764567","Sou tranquila educada fácil de fazer amizade","Não","Não posso comer salsicha","213","216");

INSERT INTO tb_inscricao VALUES("186","","N","2018-02-07 11:50:45","A","N","N","","2","ODINAIR CAMARGO","6133580426","Divertida, simpática, carismática...","Não","Não","214","217");

INSERT INTO tb_inscricao VALUES("187","Gej","S","2018-02-07 13:10:35","A","S","S","","8","IZABEL","6134599565","Sou um doce de pessoa","","Pouca comida","215","218");

INSERT INTO tb_inscricao VALUES("188","","S","2018-02-07 13:41:02","A","N","N","","4","CRISTINA","6185864901","Meu nome é Daniel","Não","Não","216","219");

INSERT INTO tb_inscricao VALUES("189","Cerimoniários","S","2018-02-07 20:40:54","A","N","N","","7","MARIA DE LOURDES LIMA SILVA","61993641140","Estudante de Direito, solteiro, cerimôniário há 5 anos, membro do Grupo Jovem Getsêmani da Paróquia São Domingos Sávio do Riacho Fundo I","","","217","220");

INSERT INTO tb_inscricao VALUES("190","","N","2018-02-07 21:29:52","A","N","N","","6","SOLIMAR","6134593974",".","","","218","221");

INSERT INTO tb_inscricao VALUES("191","","N","2018-02-07 21:36:42","A","N","N","","3","CASA ","6135591305",".","","","219","222");

INSERT INTO tb_inscricao VALUES("192","","S","2018-02-08 12:55:50","A","N","N","","7","GLACE CLEIA ","6132086243","Eu estou indo para o ensino médio, ou músico, toco violino, sou do grupo jovem adonai, tenho 16 anos","","","220","223");

INSERT INTO tb_inscricao VALUES("193","","S","2018-02-08 13:51:27","D","N","N","","2","ERIDAN OU EDER","6130226004","...","Não","Não","221","224");

INSERT INTO tb_inscricao VALUES("194","Escola de Evangelização Santo André","S","2018-02-08 14:08:22","A","N","N","","9","MãE ","61985254244","Gosto de comer hambúrguer","Não","Jamais amigos boca foi feita pra cumê","222","225");

INSERT INTO tb_inscricao VALUES("195","Coroinhas","N","2018-02-08 18:50:34","A","N","N","","4","PAI LICLAUDIO","61981043721","Meu nome é Letícia e meu primeiro retiro de 4 dias sou do grupo jovem ADONAI e quero ser santa","Um comprimido e um spray nasal anti alérgico","Não","223","226");

INSERT INTO tb_inscricao VALUES("196","","S","2018-02-08 19:41:19","A","N","N","","4","MãE","6133760781","Bom eu sou uma pessoa, legal (eu acho kkk),tenho asma porém,  não tenho crise quase nunca, é só isso","Não","Não","224","227");

INSERT INTO tb_inscricao VALUES("197","Coroinhas e grupo jovem Fillis Mater Dei","S","2018-02-08 23:01:47","A","N","N","","2","MãE ","61984887216","Sou timida, mas fui meio obrigada a ser extrovertida com o grupo jovem. Aaah não sei me descrever kk... Aaah gosto de colocar um sorriso no rosto das pessoas e sou aquela que todo mundo recorre para alguma ajuda. Digo o que as pessoas precisam ouvir e não o que querem.","Falho muito nisso","Nenhuma, só sou fresca kk","225","228");

INSERT INTO tb_inscricao VALUES("198","","S","2018-02-08 23:14:50","A","N","N","","3","MãE","61985864901","Sou de igreja desde sempre.","","","226","229");

INSERT INTO tb_inscricao VALUES("199","","S","2018-02-09 00:01:48","A","N","N","","8","JOSé RIBAMAR ","61981215733","Pessoa tranquila, bom humor.","","","227","230");

INSERT INTO tb_inscricao VALUES("200","","N","2018-02-09 00:26:19","A","N","N","","7","MãE","61986155796","Sou divertida, alegre e gosto muito de fazer amizades novas.","Não","Não","228","231");

INSERT INTO tb_inscricao VALUES("201","","N","2018-02-09 12:34:26","A","N","N","","7","MARIBEL","61999515144","Tenho 26 anos, formado em Agronomia e trabalho numa propriedade rural da familia.","Nunca pratiquei meditacao.","Nenhuma","229","232");

INSERT INTO tb_inscricao VALUES("202","","N","2018-02-09 13:22:02","A","N","N","","7","JOSEJA SOMBRA","61992952077","Bem, eu tenho fobia de lugar cheio. Porém achei que ir pro retiro ia me ajudar nisso","","","230","233");

INSERT INTO tb_inscricao VALUES("203","","S","2018-02-09 13:30:25","A","N","N","","2","ROSANGELA","93992049717","Meu nome é Alexsandra, tenho 22 anos, acabei de me formar em engenharia civil, e no meu último ano foi um pouco difícil conciliar faculdade com a igreja, o que fez me afastar um pouco, porém sempre entreguei meu sonho e minhas dificuldades nas mãos de Deus com a intercessão da Virgem Maria para que não desistisse.\nParticipei do Santifique-se em 2017 e foi uma experiência sensacional, e tenho certeza que será melhor ainda, porque hoje tenho mais a agradecer do que pedir.","Não","Não","231","234");

INSERT INTO tb_inscricao VALUES("204","","S","2018-02-09 20:27:20","A","N","N","","7","JOSé RIBAMAR COELHO DA SILVA ","61981215733","Tenho 14 anos, tenho vontade de crescer vivendo a juventude santa como Dom Bosco pregava","","","232","235");




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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;


INSERT INTO tb_pagamento VALUES("1","160.00","160.00","2","C","","1");

INSERT INTO tb_pagamento VALUES("2","150.00","","1","N","","2");

INSERT INTO tb_pagamento VALUES("3","150.00","60.00","2","I","","3");

INSERT INTO tb_pagamento VALUES("4","150.00","150.00","1","C","","4");

INSERT INTO tb_pagamento VALUES("5","150.00","150.00","1","C","","5");

INSERT INTO tb_pagamento VALUES("6","150.00","150.00","1","C","","6");

INSERT INTO tb_pagamento VALUES("7","150.00","150.00","1","C","","7");

INSERT INTO tb_pagamento VALUES("8","150.00","150.00","2","C","","8");

INSERT INTO tb_pagamento VALUES("9","150.00","80.00","2","I","","9");

INSERT INTO tb_pagamento VALUES("10","150.00","","1","N","","10");

INSERT INTO tb_pagamento VALUES("11","150.00","150.00","1","C","","12");

INSERT INTO tb_pagamento VALUES("12","150.00","150.00","2","C","","13");

INSERT INTO tb_pagamento VALUES("14","150.00","150.00","1","C","","14");

INSERT INTO tb_pagamento VALUES("15","150.00","150.00","1","C","","15");

INSERT INTO tb_pagamento VALUES("16","160.00","160.00","1","C","","16");

INSERT INTO tb_pagamento VALUES("17","150.00","","1","N","","17");

INSERT INTO tb_pagamento VALUES("18","150.00","150.00","1","C","","18");

INSERT INTO tb_pagamento VALUES("19","150.00","","1","N","","23");

INSERT INTO tb_pagamento VALUES("20","150.00","","1","N","","19");

INSERT INTO tb_pagamento VALUES("21","150.00","","1","N","","20");

INSERT INTO tb_pagamento VALUES("22","150.00","150.00","1","C","","21");

INSERT INTO tb_pagamento VALUES("23","150.00","100.00","2","I","","22");

INSERT INTO tb_pagamento VALUES("24","150.00","150.00","2","C","","25");

INSERT INTO tb_pagamento VALUES("25","150.00","150.00","1","C","","24");

INSERT INTO tb_pagamento VALUES("26","160.00","","1","N","","26");

INSERT INTO tb_pagamento VALUES("27","150.00","180.00","2","C","","27");

INSERT INTO tb_pagamento VALUES("28","150.00","","1","N","","28");

INSERT INTO tb_pagamento VALUES("29","150.00","150.00","2","C","","29");

INSERT INTO tb_pagamento VALUES("30","150.00","","1","N","","30");

INSERT INTO tb_pagamento VALUES("31","150.00","","1","N","","31");

INSERT INTO tb_pagamento VALUES("32","150.00","150.00","2","C","","32");

INSERT INTO tb_pagamento VALUES("34","150.00","150.00","1","C","","33");

INSERT INTO tb_pagamento VALUES("35","150.00","150.00","1","C","","34");

INSERT INTO tb_pagamento VALUES("37","150.00","15000.00","1","C","","35");

INSERT INTO tb_pagamento VALUES("42","160.00","150.00","1","C","","36");

INSERT INTO tb_pagamento VALUES("43","150.00","","1","N","","37");

INSERT INTO tb_pagamento VALUES("44","150.00","","1","N","","38");

INSERT INTO tb_pagamento VALUES("45","150.00","150.00","2","C","","39");

INSERT INTO tb_pagamento VALUES("46","150.00","150.00","1","C","","40");

INSERT INTO tb_pagamento VALUES("47","150.00","","1","N","","41");

INSERT INTO tb_pagamento VALUES("48","160.00","150.00","1","C","","42");

INSERT INTO tb_pagamento VALUES("49","160.00","","1","N","","43");

INSERT INTO tb_pagamento VALUES("50","150.00","150.00","1","C","","44");

INSERT INTO tb_pagamento VALUES("51","150.00","150.00","2","C","","45");

INSERT INTO tb_pagamento VALUES("52","150.00","160.00","1","C","","46");

INSERT INTO tb_pagamento VALUES("53","0.00","0.00","1","C","","47");

INSERT INTO tb_pagamento VALUES("54","150.00","160.00","1","C","","48");

INSERT INTO tb_pagamento VALUES("55","150.00","150.00","1","C","","49");

INSERT INTO tb_pagamento VALUES("56","150.00","50.00","2","I","","50");

INSERT INTO tb_pagamento VALUES("57","150.00","","1","N","","51");

INSERT INTO tb_pagamento VALUES("58","150.00","","1","N","","52");

INSERT INTO tb_pagamento VALUES("59","160.00","","1","N","","53");

INSERT INTO tb_pagamento VALUES("60","150.00","","1","N","","54");

INSERT INTO tb_pagamento VALUES("61","160.00","","1","N","","56");

INSERT INTO tb_pagamento VALUES("62","150.00","","1","N","","57");

INSERT INTO tb_pagamento VALUES("63","150.00","","1","N","","55");

INSERT INTO tb_pagamento VALUES("64","150.00","","1","N","","58");

INSERT INTO tb_pagamento VALUES("65","150.00","150.00","1","C","","59");

INSERT INTO tb_pagamento VALUES("66","150.00","","1","N","","60");

INSERT INTO tb_pagamento VALUES("67","150.00","150.00","1","C","","61");

INSERT INTO tb_pagamento VALUES("68","160.00","160.00","1","C","","62");

INSERT INTO tb_pagamento VALUES("69","160.00","160.00","1","C","","63");

INSERT INTO tb_pagamento VALUES("70","160.00","160.00","1","C","","64");

INSERT INTO tb_pagamento VALUES("71","150.00","","1","N","","65");

INSERT INTO tb_pagamento VALUES("72","150.00","","1","N","","66");

INSERT INTO tb_pagamento VALUES("73","150.00","","1","N","","67");

INSERT INTO tb_pagamento VALUES("74","150.00","150.00","1","C","","68");

INSERT INTO tb_pagamento VALUES("75","160.00","150.00","1","C","","69");

INSERT INTO tb_pagamento VALUES("76","150.00","","1","N","","70");

INSERT INTO tb_pagamento VALUES("77","150.00","150.00","1","C","","71");

INSERT INTO tb_pagamento VALUES("78","150.00","","1","N","","72");

INSERT INTO tb_pagamento VALUES("79","150.00","","1","N","","73");

INSERT INTO tb_pagamento VALUES("80","150.00","150.00","1","C","","74");

INSERT INTO tb_pagamento VALUES("81","150.00","150.00","1","C","","75");

INSERT INTO tb_pagamento VALUES("82","0.00","0.00","1","C","","76");

INSERT INTO tb_pagamento VALUES("83","150.00","","1","N","","77");

INSERT INTO tb_pagamento VALUES("84","160.00","160.00","1","C","","78");

INSERT INTO tb_pagamento VALUES("85","150.00","","1","N","","79");

INSERT INTO tb_pagamento VALUES("87","150.00","","2","N","","81");

INSERT INTO tb_pagamento VALUES("88","150.00","","1","N","","82");

INSERT INTO tb_pagamento VALUES("89","150.00","150.00","1","C","","83");

INSERT INTO tb_pagamento VALUES("90","160.00","160.00","1","C","","84");

INSERT INTO tb_pagamento VALUES("91","160.00","1500.00","1","C","","85");

INSERT INTO tb_pagamento VALUES("92","160.00","160.00","1","C","","86");

INSERT INTO tb_pagamento VALUES("93","160.00","160.00","1","C","","87");

INSERT INTO tb_pagamento VALUES("94","150.00","150.00","1","C","","88");

INSERT INTO tb_pagamento VALUES("95","0.00","0.00","1","C","","89");

INSERT INTO tb_pagamento VALUES("96","160.00","160.00","1","C","","90");

INSERT INTO tb_pagamento VALUES("97","160.00","150.00","1","C","","91");

INSERT INTO tb_pagamento VALUES("98","150.00","190.00","3","C","","92");

INSERT INTO tb_pagamento VALUES("99","160.00","","1","N","","93");

INSERT INTO tb_pagamento VALUES("100","150.00","","1","N","","94");

INSERT INTO tb_pagamento VALUES("101","160.00","","1","N","","95");

INSERT INTO tb_pagamento VALUES("102","150.00","150.00","1","C","","97");

INSERT INTO tb_pagamento VALUES("103","150.00","150.00","1","C","","96");

INSERT INTO tb_pagamento VALUES("104","150.00","150.00","1","C","","98");

INSERT INTO tb_pagamento VALUES("105","150.00","150.00","1","C","","99");

INSERT INTO tb_pagamento VALUES("106","160.00","160.00","1","C","","100");

INSERT INTO tb_pagamento VALUES("107","160.00","160.00","1","C","","101");

INSERT INTO tb_pagamento VALUES("108","150.00","160.00","1","C","","102");

INSERT INTO tb_pagamento VALUES("109","160.00","150.00","1","C","","103");

INSERT INTO tb_pagamento VALUES("110","160.00","","1","N","","104");

INSERT INTO tb_pagamento VALUES("111","150.00","160.00","1","C","","105");

INSERT INTO tb_pagamento VALUES("112","150.00","75.00","2","I","","106");

INSERT INTO tb_pagamento VALUES("113","150.00","150.00","1","C","","107");

INSERT INTO tb_pagamento VALUES("114","150.00","","1","N","","108");

INSERT INTO tb_pagamento VALUES("115","160.00","160.00","1","C","","109");

INSERT INTO tb_pagamento VALUES("116","150.00","150.00","1","C","","110");

INSERT INTO tb_pagamento VALUES("117","150.00","150.00","1","C","","111");

INSERT INTO tb_pagamento VALUES("118","150.00","180.00","2","C","","112");

INSERT INTO tb_pagamento VALUES("119","150.00","150.00","1","C","","113");

INSERT INTO tb_pagamento VALUES("120","160.00","160.00","1","C","","114");

INSERT INTO tb_pagamento VALUES("121","0.00","0.00","1","C","","115");

INSERT INTO tb_pagamento VALUES("122","150.00","150.00","2","C","","116");

INSERT INTO tb_pagamento VALUES("123","150.00","150.00","1","C","","117");

INSERT INTO tb_pagamento VALUES("124","150.00","150.00","1","C","","118");

INSERT INTO tb_pagamento VALUES("125","160.00","","1","N","","119");

INSERT INTO tb_pagamento VALUES("126","160.00","160.00","1","C","","121");

INSERT INTO tb_pagamento VALUES("127","150.00","150.00","1","C","","122");

INSERT INTO tb_pagamento VALUES("128","150.00","","1","N","","120");

INSERT INTO tb_pagamento VALUES("129","150.00","150.00","1","C","","123");

INSERT INTO tb_pagamento VALUES("131","150.00","","1","N","","124");

INSERT INTO tb_pagamento VALUES("132","160.00","160.00","1","C","","125");

INSERT INTO tb_pagamento VALUES("133","160.00","160.00","1","C","","126");

INSERT INTO tb_pagamento VALUES("134","150.00","","1","N","","127");

INSERT INTO tb_pagamento VALUES("135","150.00","150.00","1","C","","128");

INSERT INTO tb_pagamento VALUES("136","160.00","160.00","1","C","","129");

INSERT INTO tb_pagamento VALUES("137","160.00","160.00","1","C","","130");

INSERT INTO tb_pagamento VALUES("140","150.00","80.00","1","I","","131");

INSERT INTO tb_pagamento VALUES("141","160.00","160.00","1","C","","133");

INSERT INTO tb_pagamento VALUES("142","160.00","160.00","1","C","","134");

INSERT INTO tb_pagamento VALUES("143","150.00","150.00","1","C","","135");

INSERT INTO tb_pagamento VALUES("144","150.00","","1","N","","136");

INSERT INTO tb_pagamento VALUES("145","150.00","","1","N","","137");

INSERT INTO tb_pagamento VALUES("146","150.00","80.00","1","I","","132");

INSERT INTO tb_pagamento VALUES("147","160.00","160.00","1","C","","138");

INSERT INTO tb_pagamento VALUES("148","150.00","","1","N","","139");

INSERT INTO tb_pagamento VALUES("149","150.00","150.00","1","C","","140");

INSERT INTO tb_pagamento VALUES("150","150.00","150.00","1","C","","141");

INSERT INTO tb_pagamento VALUES("151","150.00","150.00","1","C","","142");

INSERT INTO tb_pagamento VALUES("152","160.00","160.00","1","C","","144");

INSERT INTO tb_pagamento VALUES("153","160.00","160.00","1","C","","143");

INSERT INTO tb_pagamento VALUES("154","130.00","130.00","1","C","","145");

INSERT INTO tb_pagamento VALUES("155","160.00","160.00","1","C","","146");

INSERT INTO tb_pagamento VALUES("156","150.00","150.00","1","C","","147");

INSERT INTO tb_pagamento VALUES("157","150.00","150.00","1","C","","148");

INSERT INTO tb_pagamento VALUES("158","150.00","150.00","1","C","","149");

INSERT INTO tb_pagamento VALUES("159","150.00","150.00","1","C","","150");

INSERT INTO tb_pagamento VALUES("160","150.00","150.00","1","C","","152");

INSERT INTO tb_pagamento VALUES("161","150.00","150.00","1","C","","153");

INSERT INTO tb_pagamento VALUES("162","150.00","","1","N","","151");

INSERT INTO tb_pagamento VALUES("163","150.00","150.00","1","C","","154");

INSERT INTO tb_pagamento VALUES("164","150.00","","1","N","","155");

INSERT INTO tb_pagamento VALUES("165","160.00","160.00","1","C","","156");

INSERT INTO tb_pagamento VALUES("166","130.00","130.00","1","C","","157");

INSERT INTO tb_pagamento VALUES("167","150.00","150.00","1","C","","158");

INSERT INTO tb_pagamento VALUES("168","150.00","150.00","1","C","","159");

INSERT INTO tb_pagamento VALUES("169","150.00","150.00","1","C","","160");

INSERT INTO tb_pagamento VALUES("170","160.00","150.00","1","C","","161");

INSERT INTO tb_pagamento VALUES("171","150.00","150.00","1","C","","162");

INSERT INTO tb_pagamento VALUES("172","0.00","0.00","1","C","","163");

INSERT INTO tb_pagamento VALUES("173","150.00","","1","N","","164");

INSERT INTO tb_pagamento VALUES("174","150.00","","1","N","","165");

INSERT INTO tb_pagamento VALUES("175","160.00","150.00","1","C","","166");

INSERT INTO tb_pagamento VALUES("176","150.00","150.00","1","C","","167");

INSERT INTO tb_pagamento VALUES("177","160.00","160.00","1","C","","168");

INSERT INTO tb_pagamento VALUES("178","150.00","15000.00","1","C","","169");

INSERT INTO tb_pagamento VALUES("179","150.00","160.00","1","C","","170");

INSERT INTO tb_pagamento VALUES("180","150.00","160.00","1","C","","171");

INSERT INTO tb_pagamento VALUES("181","160.00","160.00","1","C","","172");

INSERT INTO tb_pagamento VALUES("182","150.00","","1","N","","173");

INSERT INTO tb_pagamento VALUES("183","150.00","15000.00","1","C","","174");

INSERT INTO tb_pagamento VALUES("184","150.00","160.00","1","C","","175");

INSERT INTO tb_pagamento VALUES("185","150.00","150.00","1","C","","176");

INSERT INTO tb_pagamento VALUES("186","150.00","160.00","1","C","","177");

INSERT INTO tb_pagamento VALUES("187","150.00","15000.00","1","C","","178");

INSERT INTO tb_pagamento VALUES("188","150.00","150.00","1","C","","179");

INSERT INTO tb_pagamento VALUES("189","160.00","","1","N","","180");

INSERT INTO tb_pagamento VALUES("190","150.00","","1","N","","181");

INSERT INTO tb_pagamento VALUES("191","150.00","","1","N","","182");

INSERT INTO tb_pagamento VALUES("192","160.00","115.00","2","I","","183");

INSERT INTO tb_pagamento VALUES("193","160.00","","1","N","","184");

INSERT INTO tb_pagamento VALUES("194","150.00","","1","N","","185");

INSERT INTO tb_pagamento VALUES("195","160.00","","1","N","","186");

INSERT INTO tb_pagamento VALUES("196","160.00","0.00","1","C","","187");

INSERT INTO tb_pagamento VALUES("197","150.00","160.00","1","C","","188");

INSERT INTO tb_pagamento VALUES("198","150.00","","1","N","","189");

INSERT INTO tb_pagamento VALUES("199","150.00","","1","N","","190");

INSERT INTO tb_pagamento VALUES("200","150.00","","1","N","","191");

INSERT INTO tb_pagamento VALUES("201","150.00","15000.00","1","C","","192");

INSERT INTO tb_pagamento VALUES("202","150.00","","1","N","","193");

INSERT INTO tb_pagamento VALUES("203","150.00","150.00","1","C","","194");

INSERT INTO tb_pagamento VALUES("204","150.00","","1","N","","195");

INSERT INTO tb_pagamento VALUES("205","150.00","","1","N","","196");

INSERT INTO tb_pagamento VALUES("206","150.00","150.00","1","C","","197");

INSERT INTO tb_pagamento VALUES("207","150.00","","1","N","","198");

INSERT INTO tb_pagamento VALUES("208","160.00","15000.00","1","C","","199");

INSERT INTO tb_pagamento VALUES("209","150.00","","1","N","","200");

INSERT INTO tb_pagamento VALUES("210","160.00","15000.00","1","C","","201");

INSERT INTO tb_pagamento VALUES("211","150.00","15000.00","1","C","","202");

INSERT INTO tb_pagamento VALUES("212","160.00","","1","N","","203");

INSERT INTO tb_pagamento VALUES("213","150.00","","1","N","","204");




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
) ENGINE=InnoDB AUTO_INCREMENT=1284 DEFAULT CHARSET=utf8;


INSERT INTO tb_parcelamento VALUES("1032","1","160.00","160.00","2018-01-21","2018-01-25","","137","2");

INSERT INTO tb_parcelamento VALUES("1033","1","160.00","160.00","2018-01-21","2018-01-26","","136","2");

INSERT INTO tb_parcelamento VALUES("1034","1","150.00","150.00","2018-01-21","2018-01-31","","135","2");

INSERT INTO tb_parcelamento VALUES("1035","1","150.00","","2018-01-21","","","134","1");

INSERT INTO tb_parcelamento VALUES("1036","1","160.00","160.00","2018-01-21","2018-01-25","","133","2");

INSERT INTO tb_parcelamento VALUES("1037","1","160.00","160.00","2018-01-21","2018-01-25","","132","2");

INSERT INTO tb_parcelamento VALUES("1039","1","150.00","150.00","2018-01-21","2018-01-24","","129","1");

INSERT INTO tb_parcelamento VALUES("1040","1","150.00","150.00","2018-01-21","2018-01-26","","127","3");

INSERT INTO tb_parcelamento VALUES("1041","1","160.00","160.00","2018-01-21","2018-01-25","","126","2");

INSERT INTO tb_parcelamento VALUES("1042","1","150.00","","2018-01-21","","","128","1");

INSERT INTO tb_parcelamento VALUES("1043","1","160.00","","2018-01-21","","","125","1");

INSERT INTO tb_parcelamento VALUES("1044","1","150.00","150.00","2018-01-21","2018-01-10","","124","3");

INSERT INTO tb_parcelamento VALUES("1045","1","150.00","150.00","2018-01-21","2018-01-09","","123","3");

INSERT INTO tb_parcelamento VALUES("1046","1","50.00","50.00","2018-01-21","2018-01-21","","122","1");

INSERT INTO tb_parcelamento VALUES("1047","1","0.00","0.00","2018-01-21","2018-01-11","","121","1");

INSERT INTO tb_parcelamento VALUES("1048","1","160.00","160.00","2018-01-21","2018-01-25","","120","3");

INSERT INTO tb_parcelamento VALUES("1049","1","150.00","150.00","2018-01-21","2018-01-08","","119","1");

INSERT INTO tb_parcelamento VALUES("1051","1","150.00","150.00","2018-01-21","2018-02-05","","117","1");

INSERT INTO tb_parcelamento VALUES("1052","1","150.00","150.00","2018-01-21","2018-02-05","","116","1");

INSERT INTO tb_parcelamento VALUES("1053","1","150.00","160.00","2018-01-21","2018-01-31","Pagou 10 à mais","115","1");

INSERT INTO tb_parcelamento VALUES("1054","1","150.00","","2018-01-21","","","114","1");

INSERT INTO tb_parcelamento VALUES("1055","1","150.00","150.00","2018-01-21","2018-02-04","","113","1");

INSERT INTO tb_parcelamento VALUES("1057","1","150.00","160.00","2018-01-21","2017-02-06","","111","1");

INSERT INTO tb_parcelamento VALUES("1058","1","160.00","","2018-01-21","","","110","1");

INSERT INTO tb_parcelamento VALUES("1059","1","160.00","150.00","2018-01-21","2018-02-05","","109","1");

INSERT INTO tb_parcelamento VALUES("1060","1","150.00","160.00","2018-01-21","2018-02-06","","108","1");

INSERT INTO tb_parcelamento VALUES("1061","1","160.00","160.00","2018-01-21","2018-01-12","","107","2");

INSERT INTO tb_parcelamento VALUES("1062","1","160.00","160.00","2018-01-21","2018-01-12","","106","2");

INSERT INTO tb_parcelamento VALUES("1063","1","150.00","150.00","2018-01-21","2018-01-26","","105","3");

INSERT INTO tb_parcelamento VALUES("1064","1","150.00","150.00","2018-01-21","2018-01-12","","104","1");

INSERT INTO tb_parcelamento VALUES("1065","1","150.00","150.00","2018-01-21","2018-01-26","","102","3");

INSERT INTO tb_parcelamento VALUES("1066","1","150.00","150.00","2018-01-21","2018-01-15","","103","1");

INSERT INTO tb_parcelamento VALUES("1067","1","160.00","","2018-01-21","","","101","1");

INSERT INTO tb_parcelamento VALUES("1068","1","150.00","","2018-01-21","","","100","1");

INSERT INTO tb_parcelamento VALUES("1069","1","160.00","","2018-01-21","","","99","1");

INSERT INTO tb_parcelamento VALUES("1070","1","30.00","30.00","2018-01-21","2018-01-21","","98","1");

INSERT INTO tb_parcelamento VALUES("1071","1","160.00","160.00","2018-01-21","2018-01-12","","97","2");

INSERT INTO tb_parcelamento VALUES("1072","1","160.00","160.00","2018-01-21","2018-01-26","Pagou 10,00 à mais.","96","1");

INSERT INTO tb_parcelamento VALUES("1073","1","0.00","0.00","2018-01-21","2018-01-15","","95","1");

INSERT INTO tb_parcelamento VALUES("1074","1","150.00","150.00","2018-01-21","2018-02-08","","94","1");

INSERT INTO tb_parcelamento VALUES("1075","1","160.00","160.00","2018-01-21","2018-02-24","","93","2");

INSERT INTO tb_parcelamento VALUES("1076","1","160.00","160.00","2018-01-21","2017-02-06","","92","1");

INSERT INTO tb_parcelamento VALUES("1077","1","160.00","1500.00","2018-01-21","2018-02-08","","91","1");

INSERT INTO tb_parcelamento VALUES("1078","1","160.00","160.00","2018-01-21","2018-01-09","Depositou 10,00 à mais","90","1");

INSERT INTO tb_parcelamento VALUES("1079","1","150.00","150.00","2018-01-21","2018-02-06","","89","1");

INSERT INTO tb_parcelamento VALUES("1080","1","150.00","","2018-01-21","","","88","1");

INSERT INTO tb_parcelamento VALUES("1082","1","150.00","","2018-01-21","","","85","1");

INSERT INTO tb_parcelamento VALUES("1083","1","160.00","160.00","2018-01-21","2018-01-29","Devolver 10,00","84","3");

INSERT INTO tb_parcelamento VALUES("1084","1","150.00","","2018-01-21","","","83","1");

INSERT INTO tb_parcelamento VALUES("1085","1","0.00","0.00","2018-01-21","2018-02-01","","82","1");

INSERT INTO tb_parcelamento VALUES("1086","1","150.00","150.00","2018-01-21","2018-01-22","","81","1");

INSERT INTO tb_parcelamento VALUES("1087","1","150.00","150.00","2018-01-21","2018-02-21","","80","1");

INSERT INTO tb_parcelamento VALUES("1088","1","150.00","","2018-01-21","","","79","1");

INSERT INTO tb_parcelamento VALUES("1089","1","150.00","","2018-01-21","","","78","1");

INSERT INTO tb_parcelamento VALUES("1090","1","150.00","150.00","2018-01-21","2018-01-12","","77","1");

INSERT INTO tb_parcelamento VALUES("1091","1","150.00","","2018-01-21","","","76","1");

INSERT INTO tb_parcelamento VALUES("1092","1","160.00","150.00","2018-01-21","2018-02-09","","75","1");

INSERT INTO tb_parcelamento VALUES("1093","1","150.00","150.00","2018-01-21","2018-02-06","","74","1");

INSERT INTO tb_parcelamento VALUES("1094","1","150.00","","2018-01-21","","","73","1");

INSERT INTO tb_parcelamento VALUES("1095","1","150.00","","2018-01-21","","","72","1");

INSERT INTO tb_parcelamento VALUES("1096","1","150.00","","2018-01-21","","","71","1");

INSERT INTO tb_parcelamento VALUES("1097","1","160.00","160.00","2018-01-21","2018-01-26","","70","2");

INSERT INTO tb_parcelamento VALUES("1098","1","150.00","150.00","2018-01-21","2018-01-12","","69","1");

INSERT INTO tb_parcelamento VALUES("1099","1","150.00","160.00","2018-01-21","2018-01-30","","68","2");

INSERT INTO tb_parcelamento VALUES("1100","1","150.00","150.00","2018-01-21","2018-02-08","","67","1");

INSERT INTO tb_parcelamento VALUES("1101","1","150.00","","2018-01-21","","","66","1");

INSERT INTO tb_parcelamento VALUES("1102","1","150.00","150.00","2018-01-21","2018-01-12","","65","1");

INSERT INTO tb_parcelamento VALUES("1103","1","150.00","","2018-01-21","","","64","1");

INSERT INTO tb_parcelamento VALUES("1104","1","150.00","","2018-01-21","","","62","1");

INSERT INTO tb_parcelamento VALUES("1105","1","160.00","","2018-01-21","","","61","1");

INSERT INTO tb_parcelamento VALUES("1106","1","150.00","","2018-01-21","","","63","1");

INSERT INTO tb_parcelamento VALUES("1107","1","150.00","","2018-01-21","","","60","1");

INSERT INTO tb_parcelamento VALUES("1108","1","160.00","","2018-01-21","","","59","1");

INSERT INTO tb_parcelamento VALUES("1109","1","150.00","","2018-01-21","","","58","1");

INSERT INTO tb_parcelamento VALUES("1110","1","150.00","","2018-01-21","","","57","1");

INSERT INTO tb_parcelamento VALUES("1111","1","50.00","50.00","2018-01-21","2018-01-21","","56","1");

INSERT INTO tb_parcelamento VALUES("1112","1","150.00","150.00","2018-01-21","2018-02-05","","55","1");

INSERT INTO tb_parcelamento VALUES("1113","1","150.00","160.00","2018-01-21","2018-02-25","","54","2");

INSERT INTO tb_parcelamento VALUES("1114","1","0.00","0.00","2018-01-21","2018-02-01","","53","1");

INSERT INTO tb_parcelamento VALUES("1115","1","150.00","160.00","2018-01-21","2018-02-24","","52","2");

INSERT INTO tb_parcelamento VALUES("1116","1","150.00","150.00","2018-01-21","2018-02-01","","51","1");

INSERT INTO tb_parcelamento VALUES("1117","1","150.00","150.00","2018-01-21","2018-01-12","","50","1");

INSERT INTO tb_parcelamento VALUES("1118","1","160.00","","2018-01-21","","","49","1");

INSERT INTO tb_parcelamento VALUES("1119","1","160.00","150.00","2018-01-21","2018-02-05","","48","1");

INSERT INTO tb_parcelamento VALUES("1120","1","150.00","","2018-01-21","","","47","1");

INSERT INTO tb_parcelamento VALUES("1121","1","150.00","150.00","2018-01-21","2018-02-04","","46","1");

INSERT INTO tb_parcelamento VALUES("1122","1","50.00","50.00","2018-01-21","2018-01-21","","45","1");

INSERT INTO tb_parcelamento VALUES("1123","1","150.00","","2018-01-21","","","44","1");

INSERT INTO tb_parcelamento VALUES("1124","1","150.00","","2018-01-21","","","43","1");

INSERT INTO tb_parcelamento VALUES("1125","1","160.00","150.00","2018-01-21","2018-02-06","","42","1");

INSERT INTO tb_parcelamento VALUES("1126","1","150.00","15000.00","2018-01-21","2018-02-09","","37","1");

INSERT INTO tb_parcelamento VALUES("1127","1","150.00","150.00","2018-01-21","2018-01-12","","35","1");

INSERT INTO tb_parcelamento VALUES("1128","1","150.00","150.00","2018-01-21","2018-01-12","","34","1");

INSERT INTO tb_parcelamento VALUES("1129","1","75.00","75.00","2018-01-21","2018-01-21","","32","1");

INSERT INTO tb_parcelamento VALUES("1130","1","150.00","","2018-01-21","","","31","1");

INSERT INTO tb_parcelamento VALUES("1131","1","150.00","","2018-01-21","","","30","1");

INSERT INTO tb_parcelamento VALUES("1132","1","75.00","75.00","2018-01-21","2018-01-21","","29","1");

INSERT INTO tb_parcelamento VALUES("1133","1","150.00","","2018-01-21","","","28","1");

INSERT INTO tb_parcelamento VALUES("1135","1","160.00","","2018-01-21","","","26","1");

INSERT INTO tb_parcelamento VALUES("1136","1","50.00","50.00","2018-01-21","2018-01-21","","24","1");

INSERT INTO tb_parcelamento VALUES("1137","1","150.00","150.00","2018-01-21","2018-01-12","","25","1");

INSERT INTO tb_parcelamento VALUES("1138","1","150.00","","2018-01-21","","","19","1");

INSERT INTO tb_parcelamento VALUES("1140","1","150.00","150.00","2018-01-21","2018-01-29","","22","1");

INSERT INTO tb_parcelamento VALUES("1141","1","150.00","","2018-01-21","","","21","1");

INSERT INTO tb_parcelamento VALUES("1142","1","150.00","","2018-01-21","","","20","1");

INSERT INTO tb_parcelamento VALUES("1143","1","150.00","150.00","2018-01-21","2017-02-06","","18","1");

INSERT INTO tb_parcelamento VALUES("1144","1","150.00","","2018-01-21","","","17","1");

INSERT INTO tb_parcelamento VALUES("1145","1","160.00","160.00","2018-01-21","2018-01-26","","16","2");

INSERT INTO tb_parcelamento VALUES("1146","1","150.00","150.00","2018-01-21","2018-01-12","","15","1");

INSERT INTO tb_parcelamento VALUES("1147","1","150.00","150.00","2018-01-21","2018-02-21","","14","1");

INSERT INTO tb_parcelamento VALUES("1148","1","50.00","50.00","2018-01-21","2018-01-21","","12","1");

INSERT INTO tb_parcelamento VALUES("1149","1","150.00","150.00","2018-01-21","2018-02-08","","11","1");

INSERT INTO tb_parcelamento VALUES("1150","1","150.00","","2018-01-21","","","10","1");

INSERT INTO tb_parcelamento VALUES("1151","1","80.00","80.00","2018-01-21","2018-01-21","","9","1");

INSERT INTO tb_parcelamento VALUES("1152","1","50.00","50.00","2018-01-21","2018-01-21","","8","1");

INSERT INTO tb_parcelamento VALUES("1153","1","150.00","150.00","2018-01-21","2018-01-12","","7","1");

INSERT INTO tb_parcelamento VALUES("1154","1","150.00","150.00","2018-01-21","2018-02-05","","6","1");

INSERT INTO tb_parcelamento VALUES("1155","1","150.00","150.00","2018-01-21","2018-01-26","","5","1");

INSERT INTO tb_parcelamento VALUES("1156","1","150.00","","2018-01-21","","","4","1");

INSERT INTO tb_parcelamento VALUES("1157","1","60.00","60.00","2018-01-21","2018-01-21","","3","1");

INSERT INTO tb_parcelamento VALUES("1158","1","150.00","","2018-01-21","","","2","1");

INSERT INTO tb_parcelamento VALUES("1160","1","80.00","80.00","2018-01-22","2018-01-22","","140","1");

INSERT INTO tb_parcelamento VALUES("1161","1","150.00","160.00","2018-01-22","2018-01-31","","141","2");

INSERT INTO tb_parcelamento VALUES("1162","1","150.00","160.00","2018-01-22","2018-01-31","","142","2");

INSERT INTO tb_parcelamento VALUES("1163","1","150.00","150.00","2018-01-22","2018-01-31","Pagou 10,00 à mais","143","1");

INSERT INTO tb_parcelamento VALUES("1165","1","150.00","","2018-01-23","","","144","3");

INSERT INTO tb_parcelamento VALUES("1166","1","150.00","","2018-01-23","","","145","1");

INSERT INTO tb_parcelamento VALUES("1167","1","80.00","80.00","2018-01-23","2018-01-23","","146","1");

INSERT INTO tb_parcelamento VALUES("1168","1","150.00","","2018-01-23","","","131","1");

INSERT INTO tb_parcelamento VALUES("1169","1","160.00","160.00","2018-01-23","2018-01-25","","147","2");

INSERT INTO tb_parcelamento VALUES("1170","1","150.00","","2018-01-23","","","148","3");

INSERT INTO tb_parcelamento VALUES("1172","1","150.00","150.00","2018-01-24","2018-02-04","","149","1");

INSERT INTO tb_parcelamento VALUES("1173","1","150.00","150.00","2018-01-24","2018-02-06","","150","1");

INSERT INTO tb_parcelamento VALUES("1174","1","150.00","150.00","2018-01-24","2018-01-26","","151","1");

INSERT INTO tb_parcelamento VALUES("1175","1","160.00","160.00","2018-01-24","2018-02-24","","152","2");

INSERT INTO tb_parcelamento VALUES("1176","1","160.00","160.00","2018-01-24","2018-02-24","","153","2");

INSERT INTO tb_parcelamento VALUES("1177","2","100.00","100.00","2018-01-25","2018-02-04","","12","1");

INSERT INTO tb_parcelamento VALUES("1179","2","100.00","100.00","2018-01-25","2018-01-31","","45","1");

INSERT INTO tb_parcelamento VALUES("1180","2","75.00","75.00","2018-01-25","2018-02-05","","32","1");

INSERT INTO tb_parcelamento VALUES("1181","2","75.00","75.00","2018-01-25","2018-02-05","","29","1");

INSERT INTO tb_parcelamento VALUES("1182","2","100.00","100.00","2018-01-25","2018-01-31","","24","1");

INSERT INTO tb_parcelamento VALUES("1183","2","100.00","","2018-01-25","","","56","1");

INSERT INTO tb_parcelamento VALUES("1184","2","60.00","160.00","2018-01-25","2018-02-08","","98","1");

INSERT INTO tb_parcelamento VALUES("1185","3","60.00","","2018-01-30","","","98","1");

INSERT INTO tb_parcelamento VALUES("1187","2","90.00","","2018-01-25","","","3","1");

INSERT INTO tb_parcelamento VALUES("1188","2","100.00","100.00","2018-01-25","2017-02-06","","122","1");

INSERT INTO tb_parcelamento VALUES("1189","2","100.00","100.00","2018-01-25","2018-02-08","","8","1");

INSERT INTO tb_parcelamento VALUES("1190","2","70.00","","2018-01-25","","","140","1");

INSERT INTO tb_parcelamento VALUES("1191","2","70.00","","2018-01-25","","","146","1");

INSERT INTO tb_parcelamento VALUES("1192","2","70.00","","2018-01-25","","","9","1");

INSERT INTO tb_parcelamento VALUES("1193","1","130.00","130.00","2018-01-25","2018-01-26","Desconto por ser de Formosa","154","3");

INSERT INTO tb_parcelamento VALUES("1194","1","160.00","160.00","2018-01-25","2018-01-25","","155","2");

INSERT INTO tb_parcelamento VALUES("1197","1","150.00","150.00","2018-01-26","2018-01-27","","156","1");

INSERT INTO tb_parcelamento VALUES("1198","1","150.00","150.00","2018-01-26","2018-02-06","","158","1");

INSERT INTO tb_parcelamento VALUES("1199","1","150.00","150.00","2018-01-26","2018-01-27","","159","1");

INSERT INTO tb_parcelamento VALUES("1200","1","75.00","75.00","2018-01-27","2018-01-27","","157","3");

INSERT INTO tb_parcelamento VALUES("1201","2","75.00","75.00","2018-01-27","2018-02-08","","157","1");

INSERT INTO tb_parcelamento VALUES("1202","1","150.00","150.00","2018-01-27","2018-01-25","","160","3");

INSERT INTO tb_parcelamento VALUES("1203","1","150.00","150.00","2018-01-27","2018-01-25","","161","3");

INSERT INTO tb_parcelamento VALUES("1204","1","150.00","","2018-01-27","","","162","1");

INSERT INTO tb_parcelamento VALUES("1205","1","150.00","150.00","2018-01-27","2018-02-06","","163","1");

INSERT INTO tb_parcelamento VALUES("1206","1","150.00","","2018-01-27","","","164","1");

INSERT INTO tb_parcelamento VALUES("1207","1","100.00","100.00","2018-01-28","2018-01-28","","23","1");

INSERT INTO tb_parcelamento VALUES("1208","2","50.00","","2018-01-28","","","23","1");

INSERT INTO tb_parcelamento VALUES("1209","1","160.00","160.00","2018-01-28","2018-02-08","","165","2");

INSERT INTO tb_parcelamento VALUES("1210","1","130.00","130.00","2018-01-29","2018-01-29","Desconto de 20,00 do pessoal de Formosa.","166","3");

INSERT INTO tb_parcelamento VALUES("1212","1","150.00","150.00","2018-01-29","2018-02-05","","167","1");

INSERT INTO tb_parcelamento VALUES("1214","1","150.00","150.00","2018-01-29","2018-02-05","","168","1");

INSERT INTO tb_parcelamento VALUES("1215","1","150.00","150.00","2018-01-30","2018-01-31","Desconto, meninos das irmãs.","169","1");

INSERT INTO tb_parcelamento VALUES("1216","1","150.00","150.00","2018-01-30","2018-01-31","Desconto meninos das irmãs","170","1");

INSERT INTO tb_parcelamento VALUES("1217","1","150.00","150.00","2018-01-30","2018-02-01","Desconto de 60,00\nAutorizado pela coordenação.","171","3");

INSERT INTO tb_parcelamento VALUES("1220","1","0.00","0.00","2018-02-01","2018-02-02","","172","1");

INSERT INTO tb_parcelamento VALUES("1221","1","150.00","","2018-02-01","","","173","1");

INSERT INTO tb_parcelamento VALUES("1222","1","150.00","","2018-02-01","","","174","1");

INSERT INTO tb_parcelamento VALUES("1223","1","150.00","150.00","2018-02-02","","","175","1");

INSERT INTO tb_parcelamento VALUES("1224","1","150.00","150.00","2018-02-02","2018-02-04","","176","1");

INSERT INTO tb_parcelamento VALUES("1225","1","160.00","160.00","2018-02-02","2018-02-04","","177","2");

INSERT INTO tb_parcelamento VALUES("1226","1","150.00","15000.00","2018-02-03","2018-02-09","","178","1");

INSERT INTO tb_parcelamento VALUES("1227","1","150.00","160.00","2018-02-03","2018-02-06","","179","1");

INSERT INTO tb_parcelamento VALUES("1229","1","150.00","160.00","2018-02-03","2018-02-06","","180","3");

INSERT INTO tb_parcelamento VALUES("1230","1","160.00","160.00","2018-02-03","2018-02-06","","181","2");

INSERT INTO tb_parcelamento VALUES("1231","1","150.00","","2018-02-04","","","182","1");

INSERT INTO tb_parcelamento VALUES("1233","1","150.00","15000.00","2018-02-04","2018-02-09","","183","1");

INSERT INTO tb_parcelamento VALUES("1234","1","150.00","160.00","2018-02-04","2018-02-24","","184","2");

INSERT INTO tb_parcelamento VALUES("1236","1","150.00","150.00","2018-02-04","2018-02-08","","185","1");

INSERT INTO tb_parcelamento VALUES("1237","1","150.00","160.00","2018-02-05","2018-02-08","","186","1");

INSERT INTO tb_parcelamento VALUES("1238","1","150.00","15000.00","2018-02-05","2018-02-09","","187","1");

INSERT INTO tb_parcelamento VALUES("1239","1","150.00","150.00","2018-02-05","2018-02-08","","188","1");

INSERT INTO tb_parcelamento VALUES("1240","1","150.00","","2018-02-05","","","189","1");

INSERT INTO tb_parcelamento VALUES("1241","1","75.00","105.00","2018-02-05","2018-02-05","","27","1");

INSERT INTO tb_parcelamento VALUES("1242","2","75.00","75.00","2018-02-05","2018-02-21","","27","1");

INSERT INTO tb_parcelamento VALUES("1243","1","75.00","105.00","2018-02-05","2018-02-05","","118","1");

INSERT INTO tb_parcelamento VALUES("1244","2","75.00","75.00","2018-02-05","2018-02-05","","118","1");

INSERT INTO tb_parcelamento VALUES("1245","1","150.00","","2018-02-05","","","190","1");

INSERT INTO tb_parcelamento VALUES("1246","1","160.00","","2018-02-05","","","191","2");

INSERT INTO tb_parcelamento VALUES("1249","1","150.00","","2018-02-07","","","193","1");

INSERT INTO tb_parcelamento VALUES("1250","1","150.00","","2018-02-07","","","194","1");

INSERT INTO tb_parcelamento VALUES("1251","1","150.00","","2018-02-07","","","195","1");

INSERT INTO tb_parcelamento VALUES("1253","1","0.00","0.00","2018-02-07","2018-02-07","","196","1");

INSERT INTO tb_parcelamento VALUES("1254","1","150.00","160.00","2018-02-07","2018-02-09","","197","2");

INSERT INTO tb_parcelamento VALUES("1255","1","150.00","","2018-02-07","","","198","1");

INSERT INTO tb_parcelamento VALUES("1257","1","150.00","","2018-02-07","","","199","1");

INSERT INTO tb_parcelamento VALUES("1258","1","150.00","","2018-02-07","","","200","1");

INSERT INTO tb_parcelamento VALUES("1260","1","150.00","15000.00","2018-02-08","2018-02-09","","201","1");

INSERT INTO tb_parcelamento VALUES("1261","1","150.00","","2018-02-08","","","202","1");

INSERT INTO tb_parcelamento VALUES("1263","1","150.00","150.00","2018-02-08","2018-02-08","","203","1");

INSERT INTO tb_parcelamento VALUES("1264","1","150.00","","2018-02-08","","","204","1");

INSERT INTO tb_parcelamento VALUES("1266","1","75.00","","2018-02-08","","","87","1");

INSERT INTO tb_parcelamento VALUES("1267","2","75.00","","2018-02-08","","","87","1");

INSERT INTO tb_parcelamento VALUES("1268","1","150.00","","2018-02-08","","","205","1");

INSERT INTO tb_parcelamento VALUES("1270","1","80.00","115.00","2018-02-08","2018-02-08","","192","1");

INSERT INTO tb_parcelamento VALUES("1271","2","80.00","","2018-02-08","","","192","1");

INSERT INTO tb_parcelamento VALUES("1272","1","75.00","75.00","2018-02-08","2018-02-08","","112","1");

INSERT INTO tb_parcelamento VALUES("1273","2","75.00","","2018-02-08","","","112","1");

INSERT INTO tb_parcelamento VALUES("1274","1","150.00","150.00","2018-02-08","2018-02-09","","206","1");

INSERT INTO tb_parcelamento VALUES("1276","1","150.00","","2018-02-08","","","207","1");

INSERT INTO tb_parcelamento VALUES("1277","1","150.00","","2018-02-08","","","1","1");

INSERT INTO tb_parcelamento VALUES("1278","1","160.00","15000.00","2018-02-09","2018-02-09","","208","1");

INSERT INTO tb_parcelamento VALUES("1279","1","150.00","","2018-02-09","","","209","1");

INSERT INTO tb_parcelamento VALUES("1280","1","160.00","15000.00","2018-02-09","2018-02-09","","210","3");

INSERT INTO tb_parcelamento VALUES("1281","1","150.00","15000.00","2018-02-09","2018-02-09","","211","1");

INSERT INTO tb_parcelamento VALUES("1282","1","160.00","","2018-02-09","","","212","2");

INSERT INTO tb_parcelamento VALUES("1283","1","150.00","","2018-02-09","","","213","1");




DROP TABLE IF EXISTS tb_perfil;


CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Conselheiros","A");

INSERT INTO tb_perfil VALUES("3","Membros","A");

INSERT INTO tb_perfil VALUES("4","Comissão","A");

INSERT INTO tb_perfil VALUES("5","Líderes","I");

INSERT INTO tb_perfil VALUES("6","Fundadores","I");

INSERT INTO tb_perfil VALUES("7","Coordenadores","I");

INSERT INTO tb_perfil VALUES("8","Coord. Administrativo","I");

INSERT INTO tb_perfil VALUES("9","Coord. 1","I");

INSERT INTO tb_perfil VALUES("10","Coord. 2","I");

INSERT INTO tb_perfil VALUES("11","Lider Música","I");

INSERT INTO tb_perfil VALUES("12","Equipe Música","I");

INSERT INTO tb_perfil VALUES("13","Líder Ornamentação","I");

INSERT INTO tb_perfil VALUES("14","Equipe Ornamentação","I");

INSERT INTO tb_perfil VALUES("15","Líder Animação","I");

INSERT INTO tb_perfil VALUES("16","Equipe Animação","I");

INSERT INTO tb_perfil VALUES("17","Líder Intercessão","I");

INSERT INTO tb_perfil VALUES("18","Equipe Intercessão","I");

INSERT INTO tb_perfil VALUES("19","Líder Teatro","I");

INSERT INTO tb_perfil VALUES("20","Equipe Teatro","I");

INSERT INTO tb_perfil VALUES("21","Líder Comunicação","I");

INSERT INTO tb_perfil VALUES("22","Equipe Comunicação","I");

INSERT INTO tb_perfil VALUES("23","Novato","I");

INSERT INTO tb_perfil VALUES("24","Elo 1","I");

INSERT INTO tb_perfil VALUES("25","Elo 2","I");

INSERT INTO tb_perfil VALUES("26","Elo 3","I");

INSERT INTO tb_perfil VALUES("27","Elo 4","I");




DROP TABLE IF EXISTS tb_perfil_agenda;


CREATE TABLE `tb_perfil_agenda` (
  `co_perfil_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `co_agenda` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_agenda`,`co_agenda`,`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tb_perfil_agenda VALUES("21","1","3");

INSERT INTO tb_perfil_agenda VALUES("22","2","3");

INSERT INTO tb_perfil_agenda VALUES("23","3","12");




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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("55","6","2");

INSERT INTO tb_perfil_funcionalidade VALUES("54","6","3");

INSERT INTO tb_perfil_funcionalidade VALUES("16","1","4");

INSERT INTO tb_perfil_funcionalidade VALUES("18","4","4");

INSERT INTO tb_perfil_funcionalidade VALUES("53","6","4");

INSERT INTO tb_perfil_funcionalidade VALUES("117","2","4");

INSERT INTO tb_perfil_funcionalidade VALUES("120","3","4");

INSERT INTO tb_perfil_funcionalidade VALUES("52","6","5");

INSERT INTO tb_perfil_funcionalidade VALUES("61","7","5");

INSERT INTO tb_perfil_funcionalidade VALUES("116","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("119","3","6");

INSERT INTO tb_perfil_funcionalidade VALUES("14","4","12");

INSERT INTO tb_perfil_funcionalidade VALUES("50","6","12");

INSERT INTO tb_perfil_funcionalidade VALUES("59","7","12");

INSERT INTO tb_perfil_funcionalidade VALUES("105","5","12");

INSERT INTO tb_perfil_funcionalidade VALUES("114","2","12");

INSERT INTO tb_perfil_funcionalidade VALUES("10","1","13");

INSERT INTO tb_perfil_funcionalidade VALUES("12","4","13");

INSERT INTO tb_perfil_funcionalidade VALUES("49","6","13");

INSERT INTO tb_perfil_funcionalidade VALUES("113","2","13");

INSERT INTO tb_perfil_funcionalidade VALUES("19","1","14");

INSERT INTO tb_perfil_funcionalidade VALUES("21","4","14");

INSERT INTO tb_perfil_funcionalidade VALUES("48","6","14");

INSERT INTO tb_perfil_funcionalidade VALUES("112","2","14");

INSERT INTO tb_perfil_funcionalidade VALUES("22","1","15");

INSERT INTO tb_perfil_funcionalidade VALUES("24","4","15");

INSERT INTO tb_perfil_funcionalidade VALUES("47","6","15");

INSERT INTO tb_perfil_funcionalidade VALUES("111","2","15");

INSERT INTO tb_perfil_funcionalidade VALUES("25","1","16");

INSERT INTO tb_perfil_funcionalidade VALUES("27","4","16");

INSERT INTO tb_perfil_funcionalidade VALUES("46","6","16");

INSERT INTO tb_perfil_funcionalidade VALUES("58","7","16");

INSERT INTO tb_perfil_funcionalidade VALUES("104","5","16");

INSERT INTO tb_perfil_funcionalidade VALUES("110","2","16");

INSERT INTO tb_perfil_funcionalidade VALUES("29","1","17");

INSERT INTO tb_perfil_funcionalidade VALUES("31","4","17");

INSERT INTO tb_perfil_funcionalidade VALUES("45","6","17");

INSERT INTO tb_perfil_funcionalidade VALUES("57","7","17");

INSERT INTO tb_perfil_funcionalidade VALUES("103","5","17");

INSERT INTO tb_perfil_funcionalidade VALUES("109","2","17");

INSERT INTO tb_perfil_funcionalidade VALUES("118","3","18");




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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;


INSERT INTO tb_pessoa VALUES("1","72681438187","LEONARDO MACHADO CARVALHO BESSA","2077811","2018-03-23 17:04:23","1984-07-06","M","1","1");

INSERT INTO tb_pessoa VALUES("2","06820934165","AMANDA TOMINAGA ","3856116","2017-12-04 12:34:17","2002-08-27","F","2","2");

INSERT INTO tb_pessoa VALUES("3","04267851182","IGOR BORGES LEITE","3009052","2017-12-04 12:45:16","1996-02-25","M","3","3");

INSERT INTO tb_pessoa VALUES("4","07332354179","BRENDA NAYANE DUDA MOREIRA","","2017-12-04 15:06:05","2000-07-12","F","4","4");

INSERT INTO tb_pessoa VALUES("6","05418337157","HENRIQUE CARVALHO ASSUNçãO","","2018-04-04 12:22:21","1996-02-12","M","6","242");

INSERT INTO tb_pessoa VALUES("7","03667767110","AMANDA SILVA LIMA","3325124","2017-12-04 17:17:34","1998-05-06","F","7","7");

INSERT INTO tb_pessoa VALUES("8","07353224142","JERLANE SOARES MAGALHãES DA SILVA","3739423","2017-12-04 17:42:47","2001-02-06","F","8","8");

INSERT INTO tb_pessoa VALUES("9","07970134157","JOãO VICTOR PEREIRA FERNANDES ","3947853","2017-12-04 17:46:51","2002-03-18","M","9","9");

INSERT INTO tb_pessoa VALUES("10","06050858110","KAREN GEOVANNA FIGUEREDO DOS SANTOS","","2017-12-04 18:49:53","1998-04-17","F","10","10");

INSERT INTO tb_pessoa VALUES("11","00666264120","THAIS LIMA ROCHA ","2582737","2017-12-04 19:22:18","1988-05-21","F","11","11");

INSERT INTO tb_pessoa VALUES("13","02858427143","FABRíCIO ALVES OLIVEIRA ","3558631","2017-12-04 22:16:26","2001-07-05","M","13","13");

INSERT INTO tb_pessoa VALUES("14","07128618155","ISABELA ARáUJO DOS SANTOS ","3694686","2017-12-04 22:44:49","2001-07-14","F","14","14");

INSERT INTO tb_pessoa VALUES("16","04705500156","LUCAS CUNHA RIBEIRO","3089535","2017-12-05 08:13:36","1994-06-09","M","16","16");

INSERT INTO tb_pessoa VALUES("17","06565286132","WALLISSON MATíAS DE SOUSA ","3563548","2017-12-05 09:49:57","1998-12-24","M","17","17");

INSERT INTO tb_pessoa VALUES("18","05418222171","MANUELA CORREA MARANGONI","","2017-12-05 11:06:05","2000-02-25","F","18","18");

INSERT INTO tb_pessoa VALUES("19","06408735100","PRISCILA MARTINS MATIAS","3480987","2017-12-05 11:56:37","1999-02-03","F","19","19");

INSERT INTO tb_pessoa VALUES("20","03509067185","MéRCIA BATISTA MIRANDA ","3042300","2017-12-05 13:38:18","1994-09-17","F","20","20");

INSERT INTO tb_pessoa VALUES("21","07728521110","VERôNICA CRISTINA DE LIMA RIBEIRO","3714612","2017-12-06 00:39:45","2000-09-13","F","21","21");

INSERT INTO tb_pessoa VALUES("23","05870295106","DIOGO DA SILVA CARDOSO","","2017-12-06 23:15:25","1996-12-17","M","23","23");

INSERT INTO tb_pessoa VALUES("24","06411059160","CáSSIO RODRIGUES CASTRO","","2017-12-07 00:26:21","1997-03-16","M","24","24");

INSERT INTO tb_pessoa VALUES("25","07025713180","CATHERINE MENDES DE JESUS","3876679","2017-12-07 17:42:39","2003-12-02","F","25","25");

INSERT INTO tb_pessoa VALUES("26","06820939124","EDUARDO PIRES TOMINAGA","3734569","2017-12-07 20:21:09","2000-10-17","M","26","26");

INSERT INTO tb_pessoa VALUES("27","05241966137","THAINARA TONHA DE SANTANA","3211173","2018-01-29 10:32:37","1999-03-22","F","27","27");

INSERT INTO tb_pessoa VALUES("29","05257971143","ÉRICA STEPHANIE DE SOUSA CARVALHO","3737683","2017-12-08 23:24:28","2000-12-02","F","29","29");

INSERT INTO tb_pessoa VALUES("31","04898784151","LUCRECE NERI PORTELA","3239132","2017-12-09 13:13:40","1996-11-06","F","31","31");

INSERT INTO tb_pessoa VALUES("32","05063803199","PEDRO AUGUSTO PACHECO","3167740","2017-12-09 15:40:18","2000-08-25","M","32","32");

INSERT INTO tb_pessoa VALUES("33","07981379164","GABRIELLA LIMA TONHA","536533829","2017-12-09 16:52:51","2002-05-25","F","33","33");

INSERT INTO tb_pessoa VALUES("34","06597113110","RAUL DIAS MIRANDA CARDOSO","3374856","2017-12-10 22:04:08","2001-04-27","M","34","34");

INSERT INTO tb_pessoa VALUES("36","03874430103","LUANA RIBEIRO BESSA","2944508","2018-03-23 16:57:32","1993-08-17","F","36","36");

INSERT INTO tb_pessoa VALUES("37","03904086111","LETíCIA MACHADO CARVALHO BESSA","2807680","2018-03-23 17:02:07","1992-08-27","F","37","37");

INSERT INTO tb_pessoa VALUES("39","05519198179","VITóRIA PRUDêNCIO LIMA","3287537","2017-12-11 19:34:26","1998-06-21","F","39","39");

INSERT INTO tb_pessoa VALUES("41","06968592118","GABRIELA MENDES SOUZA","3616392","2017-12-11 19:17:46","1999-08-19","F","41","41");

INSERT INTO tb_pessoa VALUES("42","07909568100","DANIELA MENDES DE SOUZA","3850639","2017-12-11 19:23:37","2001-05-27","F","42","42");

INSERT INTO tb_pessoa VALUES("44","05704088147","VITOR HUGO BARROSO","3362969","2017-12-12 13:46:24","1999-08-25","M","44","44");

INSERT INTO tb_pessoa VALUES("47","03601286106","ANTONIO CARLOS RAMOS LIMA","2652417","2017-12-14 12:21:53","1989-10-26","M","47","47");

INSERT INTO tb_pessoa VALUES("48","06828355105","LARISSA MESQUITA","","2017-12-16 14:24:06","1998-10-02","F","48","48");

INSERT INTO tb_pessoa VALUES("49","05365778111","CARLOS CHRISTIAN","1129660","2017-12-16 20:42:32","1996-05-25","M","49","49");

INSERT INTO tb_pessoa VALUES("50","07581435164","DANIELLE PATRíCIA GUEDES E SILVA","3791489","2017-12-18 15:05:43","2003-01-23","F","50","50");

INSERT INTO tb_pessoa VALUES("51","06697775106","BáRBARA SILVA","3286","2017-12-18 19:02:07","1998-06-07","F","51","51");

INSERT INTO tb_pessoa VALUES("52","06794961148","PAULLO VINíCIUS PEREIRA FOGAçA","","2017-12-18 22:11:23","1994-04-26","M","52","52");

INSERT INTO tb_pessoa VALUES("53","04419358181","KAROLINA MOTA","","2017-12-18 22:13:07","1997-04-30","F","53","53");

INSERT INTO tb_pessoa VALUES("54","02567125302","MARIA GABRIELA ALVES RODRIGUES","","2017-12-18 22:16:45","1996-12-02","F","55","54");

INSERT INTO tb_pessoa VALUES("55","06932064111","MONIQUE VIEIRA PEREIRA PINHEIRO","3298085","2017-12-18 22:29:49","1999-08-09","F","56","55");

INSERT INTO tb_pessoa VALUES("56","04516310139","LEANDRO AZEVEDO XAVIER","3335626","2017-12-18 22:34:44","2001-11-30","M","57","56");

INSERT INTO tb_pessoa VALUES("57","03894443162","THAIS OLIVEIRA DA COSTA MAIA","","2017-12-19 13:09:54","1993-04-23","F","58","57");

INSERT INTO tb_pessoa VALUES("58","06980866192","LETíCIA MARTINS DE SOUSA","36493740","2017-12-19 13:18:08","2000-02-23","F","59","58");

INSERT INTO tb_pessoa VALUES("59","03643347111","KEITER DA SILVA MAIA","","2017-12-19 13:21:55","1992-11-22","M","60","59");

INSERT INTO tb_pessoa VALUES("60","05566516181","RONIEL RODRIGUES ALBUQUERQUE","3208574","2017-12-19 13:25:34","1996-03-04","M","61","60");

INSERT INTO tb_pessoa VALUES("61","02351127129","LILIAN MACHADO CARVALHO BESSA","2529020","2018-03-23 16:59:29","1988-10-31","F","62","61");

INSERT INTO tb_pessoa VALUES("62","07844250194","THAMIRES BARBOSA DE ALMEIDA","3837418","2017-12-21 09:45:59","2001-08-13","F","63","62");

INSERT INTO tb_pessoa VALUES("63","07572266126","ANNA CAROLINY RODRIGUES LAURO","3827115","2018-02-01 15:53:02","2002-05-10","F","64","63");

INSERT INTO tb_pessoa VALUES("64","05301006142","CLARISSE VITóRIA FRANçA PEREIRA","3355675","2017-12-21 16:01:28","1996-03-01","F","65","64");

INSERT INTO tb_pessoa VALUES("65","04894739119","JOYCE LOPES FERREIRA","","2017-12-23 22:00:34","1998-10-28","F","67","65");

INSERT INTO tb_pessoa VALUES("66","04583473109","SABRINA BELARMINA DE ABREU","3050440","2017-12-24 15:13:28","1994-01-21","F","68","66");

INSERT INTO tb_pessoa VALUES("67","00441485189","KARINE VICTORIA OLIVEIRA DA SILVA","3709850","2018-01-30 11:15:10","2000-07-20","F","69","67");

INSERT INTO tb_pessoa VALUES("68","04321849101","LETICIA PEREIRA DA SILVA","3002886","2017-12-26 11:34:19","1999-08-03","F","70","68");

INSERT INTO tb_pessoa VALUES("69","07323321174","EVELYN RIBEIRO","3577258","2017-12-26 13:34:49","1999-08-13","F","71","69");

INSERT INTO tb_pessoa VALUES("70","73386626149","TAYNARA RIBEIRO DE LIMA","","2017-12-26 13:35:08","2000-02-21","F","72","70");

INSERT INTO tb_pessoa VALUES("71","04900199192","ADRIEL CLEMENTINO DOS SANTOS","","2017-12-27 14:49:41","1995-06-05","M","73","71");

INSERT INTO tb_pessoa VALUES("72","04804195157","LINNEKER LIMA ROBERTO GOMES","2812768","2018-03-23 16:55:33","1995-10-04","M","74","72");

INSERT INTO tb_pessoa VALUES("73","06244035135","KAMILA SILVA","3433231","2017-12-28 10:42:11","1999-01-17","F","75","73");

INSERT INTO tb_pessoa VALUES("74","04915965104","MARIA TAYANNE","","2017-12-28 13:35:44","2000-07-02","F","76","74");

INSERT INTO tb_pessoa VALUES("75","04223342193","LUAMAR DE SOUSA DA SILVA","2.670.559","2017-12-28 22:26:05","1994-03-04","F","77","75");

INSERT INTO tb_pessoa VALUES("76","07048585170","CAROLINA  FRANçA DOS SANTOS","3680244","2017-12-29 16:59:22","2000-06-27","F","78","76");

INSERT INTO tb_pessoa VALUES("77","70602523125","ISABELLA GARCIA MENDES","","2017-12-30 09:07:52","1999-07-20","F","79","77");

INSERT INTO tb_pessoa VALUES("79","07413552132","LAURA DOS SANTOS BUSSOLO","3313317","2017-12-30 12:02:00","2001-06-01","F","81","79");

INSERT INTO tb_pessoa VALUES("80","04715844109","MAYLLA SOUZA BALZANI","3241579","2017-12-30 16:18:32","1994-04-08","F","82","80");

INSERT INTO tb_pessoa VALUES("81","12600380680","JESSIKA LAYANE DA CRUZ ROCHA","19738421","2018-01-01 17:15:10","1997-12-14","F","83","81");

INSERT INTO tb_pessoa VALUES("82","05016948380","BRENA KESSIA APOLINARIO","20072527220","2018-02-04 19:02:13","1990-05-11","F","84","82");

INSERT INTO tb_pessoa VALUES("83","05684281109","MARIA RITA DE FRANçA OLIVEIRA","3500655","2018-01-01 22:40:30","2002-09-22","F","85","83");

INSERT INTO tb_pessoa VALUES("84","13882346612","DEIVSON RODRIGO CARVALHO DE LIMA","20888916","2018-01-02 21:48:11","1998-01-17","M","86","84");

INSERT INTO tb_pessoa VALUES("85","05297937175","VICTTóRIA MACêDO LEAL","3427266","2018-01-03 01:08:00","1998-08-18","F","87","85");

INSERT INTO tb_pessoa VALUES("86","05774088103","GUSTAVO RODRIGUES VIANA","","2018-01-03 15:48:20","1999-02-06","M","88","86");

INSERT INTO tb_pessoa VALUES("87","07645973102","EDILENE DA CRUZ SILVA","3804308","2018-01-04 10:54:06","2001-01-31","F","89","87");

INSERT INTO tb_pessoa VALUES("88","73184500187","GLEICE IZABEL DE AZEVEDO","3244113","2018-01-04 11:47:17","1998-11-10","F","90","88");

INSERT INTO tb_pessoa VALUES("90","06737827195","GABRIEL DA SILVA BARBOSA","389567","2018-01-05 10:29:54","1998-03-02","M","92","90");

INSERT INTO tb_pessoa VALUES("91","07680580154","PALOMA MARIA FERREIRA DA SILVA","","2018-01-05 14:49:10","2001-10-02","F","93","91");

INSERT INTO tb_pessoa VALUES("92","05687859160","MARIA LETíCIA SOUZA DE JESUS","3237347","2018-01-05 15:24:15","2002-03-22","F","94","92");

INSERT INTO tb_pessoa VALUES("93","70773500103","DANIEL SILVA ALMEIDA","3724042","2018-01-05 16:11:53","2001-07-26","M","95","93");

INSERT INTO tb_pessoa VALUES("95","06609588139","THAYNARA BARBOSA DE ALMEIDA","3421561","2018-02-08 19:22:57","1998-05-25","F","97","95");

INSERT INTO tb_pessoa VALUES("96","07584039170","JENNIFER BIANCA CâNDIDO SOUZA","","2018-01-06 19:04:42","2000-10-04","F","98","96");

INSERT INTO tb_pessoa VALUES("97","05241971130","JOãO DIEGO TONHA DOS SANTOS","3211162","2018-01-06 00:00:00","1996-09-15","M","99","97");

INSERT INTO tb_pessoa VALUES("98","00792679121","MAYSA PEREIRA DIAS","3161236","2018-01-06 00:00:00","1997-07-13","F","100","98");

INSERT INTO tb_pessoa VALUES("100","06175307186","FERNANDA SOARES CONCEIçãO","3607166","2018-01-06 21:44:40","2000-08-05","F","102","100");

INSERT INTO tb_pessoa VALUES("101","05287289111","LETíCIA MARIA LIMA GOMES","3359694","2018-01-06 22:00:18","2001-01-18","F","103","101");

INSERT INTO tb_pessoa VALUES("103","06333726176","AMANDA NEVES DE CARVALHO","","2018-01-07 00:00:00","2001-06-02","F","105","103");

INSERT INTO tb_pessoa VALUES("104","05310353100","FERNANDA GOMES DE FREITAS MOURA","3431295","2018-02-04 19:29:27","1998-11-25","F","107","104");

INSERT INTO tb_pessoa VALUES("105","06142723199","PEDRO HENRIQUE PIRES FONTES","3458321","2018-01-07 20:22:29","1999-04-12","M","108","105");

INSERT INTO tb_pessoa VALUES("106","55246290182","RONNY KEN DIAS TOMINAGA","1176717","2018-01-07 20:39:13","1973-03-03","M","109","106");

INSERT INTO tb_pessoa VALUES("107","05014533183","BIANCA CECI MARIA DA SILVA VIEIRA JUSTINIANO PINTO","5903835","2018-02-09 11:40:21","1995-02-02","F","110","107");

INSERT INTO tb_pessoa VALUES("108","05747827103","VICTOR HUGO SOUZA RODRIGUES","3394541","2018-01-07 22:31:42","1997-06-19","M","111","108");

INSERT INTO tb_pessoa VALUES("109","06848992135","TAYANE MOREIRA DA MOTA","3378297","2018-01-07 23:29:00","1998-08-01","F","112","109");

INSERT INTO tb_pessoa VALUES("110","07500097131","LAURA MARINA DA SILVA DOCA CHAGAS","3769811","2018-01-08 18:18:17","2004-01-20","F","113","110");

INSERT INTO tb_pessoa VALUES("111","06056363112","ANA KAROLYNA FIGUEREDO DOS SANTOS","3331977","2018-01-08 19:49:01","1997-02-17","F","114","111");

INSERT INTO tb_pessoa VALUES("112","06708192128","BRUNO LIMA DE SOUZA","","2018-01-08 20:22:46","1996-08-20","M","115","112");

INSERT INTO tb_pessoa VALUES("113","05608352130","MURILLO MEDEIROS DA COSTA","2956219","2018-01-08 21:54:56","1996-06-29","M","116","113");

INSERT INTO tb_pessoa VALUES("114","03937448179","NATHALYA PIMENTEL TEMOTE","2947285","2018-01-08 22:21:04","1992-02-14","F","117","114");

INSERT INTO tb_pessoa VALUES("115","05931650121","PEDRO HENRIQUE DA SILVA DUTRA","3395545","2018-01-08 22:23:28","1997-03-20","M","118","115");

INSERT INTO tb_pessoa VALUES("116","03482796122","JOãO CARLOS DA COSTA SOUZA","2934513","2018-01-08 22:47:13","1993-07-08","M","119","116");

INSERT INTO tb_pessoa VALUES("117","06601467111","JESSICA CAMILA CAMPOS SANTOS","3346717","2018-01-09 11:32:23","1998-02-01","F","120","117");

INSERT INTO tb_pessoa VALUES("118","03109823594","LARA DE SOUSA ALMEIDA","3708412","2018-01-09 15:19:35","2001-04-22","F","121","118");

INSERT INTO tb_pessoa VALUES("119","07666266103","LARISSA NOBRE DA CRUZ","3181458","2018-01-09 22:06:43","2000-07-03","F","122","119");

INSERT INTO tb_pessoa VALUES("121","03931104192","BRUNA ALVES DE ALMEIDA","3634483","2018-01-11 20:14:55","2000-02-18","F","124","121");

INSERT INTO tb_pessoa VALUES("122","06552593171","DéBORA DUARTE HONóRIO","3361495","2018-01-12 11:16:48","2000-07-29","F","125","122");

INSERT INTO tb_pessoa VALUES("123","06623316132","MARIA CLáUDIA BISPO REIS","3751734","2018-02-08 22:11:18","2003-07-20","F","126","123");

INSERT INTO tb_pessoa VALUES("124","06050851107","YARA RAQUEL FIGUERêDO ROCHA","3810048","2018-01-12 12:47:15","2002-01-05","F","127","124");

INSERT INTO tb_pessoa VALUES("125","03382088100","ELTON BARAúNA DE SOUZA","","2018-01-13 11:31:01","1994-01-08","M","128","125");

INSERT INTO tb_pessoa VALUES("126","02740998104","VITOR RIBEIRO DA SILVA","3327850","2018-01-13 13:14:57","1999-03-08","M","129","126");

INSERT INTO tb_pessoa VALUES("127","06333037125","TAYNARA RODRIGUES DE AZEVEDO","3219262","2018-01-14 11:17:04","1998-05-20","F","130","127");

INSERT INTO tb_pessoa VALUES("129","05698978158","ROMULO DIAS MIRANDA CARDOSO","3078508","2018-02-05 21:01:54","1997-05-23","M","132","129");

INSERT INTO tb_pessoa VALUES("130","05957853100","EMANUELLE BEATRIZ DE SOUZA PEREIRA","23020","2018-01-16 11:58:03","2000-06-17","F","133","130");

INSERT INTO tb_pessoa VALUES("131","10988854651","THAíS ARAúJO XAVIER","19401646","2018-01-16 12:00:04","1998-01-07","F","134","131");

INSERT INTO tb_pessoa VALUES("132","81192010191","LEILA PIRES TOMINAGA","1665334","2018-01-16 14:41:05","1978-12-24","F","135","132");

INSERT INTO tb_pessoa VALUES("133","02403923109","MARIANA LIMA DE OLIVEIRA","2794242","2018-01-16 14:58:20","1988-06-02","F","136","133");

INSERT INTO tb_pessoa VALUES("134","08566215109","ELLEN PATRICIA FONSECA","3928513","2018-01-16 16:50:47","2002-06-01","F","137","134");

INSERT INTO tb_pessoa VALUES("135","08102844132","CAMILA CARVALHO DA SILVA","3880945","2018-01-16 19:03:11","2002-04-30","F","138","135");

INSERT INTO tb_pessoa VALUES("136","05434057104","BRUNNA NATIELY HERCULANO VIEIRA","3266229","2018-01-16 22:53:21","2004-06-01","F","139","136");

INSERT INTO tb_pessoa VALUES("137","06622524114","JHONY FERREIRA","3440140","2018-01-17 20:04:06","1998-09-08","M","140","137");

INSERT INTO tb_pessoa VALUES("139","07484604119","JEFFERSON FILLIPE DE SOUZA LOPES","3775465","2018-01-17 20:45:55","2001-02-02","M","142","139");

INSERT INTO tb_pessoa VALUES("140","06353356110","YANKA EVELYN RODRIGUES DOS SANTOS","3463730","2018-01-17 21:03:18","2002-03-16","F","143","140");

INSERT INTO tb_pessoa VALUES("141","06762820166","GABRIELLE RODRIGUES OLIVEIRA","3181561","2018-01-17 21:26:51","2000-03-04","F","144","141");

INSERT INTO tb_pessoa VALUES("142","03267732158","ANTÔNIA SIMONE RAMOS LIMA MACIEL","2584628","2018-02-04 19:00:17","1987-12-29","F","145","142");

INSERT INTO tb_pessoa VALUES("143","00879718102","WESLEY BARBOSA DE CARVALHO MACIEL LIMA","2284654","2018-01-18 13:13:12","1985-02-26","M","146","143");

INSERT INTO tb_pessoa VALUES("144","86287770163","SILVIA MIKI YAMAMOTO","1903836","2018-01-18 16:37:04","1979-03-04","F","147","144");

INSERT INTO tb_pessoa VALUES("145","07041741117","LARISSA GONçALVES FERREIRA","3543511","2018-01-18 17:20:57","1999-03-13","F","148","145");

INSERT INTO tb_pessoa VALUES("146","06731639117","MARIA EDUARDA FREITAS","3580457","2018-01-18 21:26:11","2002-03-14","F","149","146");

INSERT INTO tb_pessoa VALUES("147","01304694160","MARIA KARLENE RAMOS LIMA","2410507","2018-01-18 22:29:19","1986-08-24","F","150","147");

INSERT INTO tb_pessoa VALUES("157","07164686114","CECíLIA RúBIA NASCIMENTO SILVA","3895703","2018-01-22 16:11:54","2003-08-28","F","160","157");

INSERT INTO tb_pessoa VALUES("158","05498099100","BEATRIZ SILVA DE SOUSA","3839065","2018-01-22 16:14:37","2002-01-18","F","161","158");

INSERT INTO tb_pessoa VALUES("159","06698074195","MATHEUS SALVINO AZEVEDO","3570685","2018-01-22 21:46:13","2001-03-27","M","162","159");

INSERT INTO tb_pessoa VALUES("160","07664674140","WESLEY SALVINO DE FARIAS","3501198","2018-01-22 21:55:41","2001-09-10","M","163","160");

INSERT INTO tb_pessoa VALUES("161","02766014160","VICTOR SAMUEL AZEVEDO DE OLIVEIRA","1574959","2018-01-22 22:07:15","2000-04-01","M","164","161");

INSERT INTO tb_pessoa VALUES("162","05814614102","SINARA CAROLINE QUEIROZ SIMAS","3369895","2018-01-23 13:37:18","1996-12-25","F","165","162");

INSERT INTO tb_pessoa VALUES("163","08395416601","LUIZ ANTóNIO BIZERRA DE OLIVEIRA","2550906","2018-01-23 13:42:29","1987-06-29","M","166","163");

INSERT INTO tb_pessoa VALUES("164","08088901154","JOSé EDUARDO BARBOSA BARROS","3870162","2018-01-23 20:48:51","2002-02-19","M","167","164");

INSERT INTO tb_pessoa VALUES("165","02783919150","GUILHERME MOREIRA FERREIRA","","2018-01-23 22:55:35","2001-02-03","M","168","165");

INSERT INTO tb_pessoa VALUES("166","06945544133","GUILHERME BALBINO DA SILVA","3419756","2018-01-24 00:22:35","2000-07-19","M","169","166");

INSERT INTO tb_pessoa VALUES("167","06183496189","MARINA LOPES RODRIGUES","","2018-01-24 10:40:47","1999-07-24","F","170","167");

INSERT INTO tb_pessoa VALUES("168","73098230100","BEATRIZ FEITOSA DIAS","3326686","2018-01-24 11:32:07","2001-12-14","F","171","168");

INSERT INTO tb_pessoa VALUES("169","03203937123","LETíCIA DA SILVA PEREIRA","3644877","2018-01-24 13:31:01","2001-05-16","F","172","169");

INSERT INTO tb_pessoa VALUES("170","03203938103","RIVELINO NUNES PEREIRA FILHO","3644879","2018-01-24 13:41:02","2003-01-15","M","173","170");

INSERT INTO tb_pessoa VALUES("171","04719974120","SAMARA DESCONZI","4325615","2018-01-25 14:44:32","1994-09-13","F","174","171");

INSERT INTO tb_pessoa VALUES("172","07900479180","WESLEY ALVES DE CASTRO","3875385","2018-01-25 18:44:53","2002-08-16","M","175","172");

INSERT INTO tb_pessoa VALUES("173","08102854103","LUDIMILA CARVALHO DA SILVA","3882414","2018-01-26 08:45:13","2002-04-30","F","176","173");

INSERT INTO tb_pessoa VALUES("174","01860707130","DEISE MENDES","5074472","2018-01-26 09:37:32","1987-02-17","F","177","174");

INSERT INTO tb_pessoa VALUES("175","07137599176","FERNANDA KARLA RODRIGUES LIMA","3585236","2018-01-26 13:55:38","2000-03-15","F","178","175");

INSERT INTO tb_pessoa VALUES("176","62293245390","LAIANE DE OLIVEIRA SLVA","05727226120157","2018-01-26 22:32:56","2002-08-04","F","179","176");

INSERT INTO tb_pessoa VALUES("177","07217842166","KAMILLY VICTORIA OLIVEIRA DA SILVA","3709308","2018-01-27 14:15:32","2001-12-05","F","180","177");

INSERT INTO tb_pessoa VALUES("178","04436682137","GUILHERME VALE SILVA MATOS","","2018-04-04 17:14:17","1997-09-02","M","181","244");

INSERT INTO tb_pessoa VALUES("179","06856422164","GABRIELLA VALE SILVA MATOS","","2018-01-27 15:27:16","2000-10-11","F","182","179");

INSERT INTO tb_pessoa VALUES("180","06040545135","IZABELLA VAZ BANDEIRA","3945332","2018-01-27 18:47:05","2002-03-10","F","183","180");

INSERT INTO tb_pessoa VALUES("181","06750144179","DION LUCAS SERAFIM BISPO","","2018-01-27 23:36:11","1997-08-04","M","184","181");

INSERT INTO tb_pessoa VALUES("182","02908039184","FERNANDA COêLHO DO NASCIMENTO","2968317","2018-01-28 22:46:17","1996-07-06","F","185","182");

INSERT INTO tb_pessoa VALUES("183","05557418180","MONIKE NARDI","4285949","2018-01-29 08:01:33","1998-07-29","F","186","183");

INSERT INTO tb_pessoa VALUES("184","04939491196","ARLAN SANTOS COIMBRA","3136252","2018-01-29 21:33:01","1995-10-02","M","187","184");

INSERT INTO tb_pessoa VALUES("185","00143567160","LEONARA ALMEIDA","2914006","2018-01-30 11:12:00","1998-02-16","F","188","185");

INSERT INTO tb_pessoa VALUES("186","05574670127","KEYSON GABRIEL RODRIQUES DE SOUSA","","2018-01-30 22:24:00","2002-12-26","M","189","186");

INSERT INTO tb_pessoa VALUES("187","07698409147","JONAS RODRIQUES DE SOUSA","","2018-01-30 22:33:36","2004-02-17","M","190","187");

INSERT INTO tb_pessoa VALUES("188","06049564108","JOãO VICTOR OLIVEIRA BARROS","3793321","2018-01-30 23:28:02","2001-01-27","M","191","188");

INSERT INTO tb_pessoa VALUES("189","05858600174","AMAURY COSTA SILVA RAMOS","3094934","2018-01-31 00:00:00","1996-12-17","M","192","189");

INSERT INTO tb_pessoa VALUES("190","06354574154","LUIZ MIGUEL BARBOSA BARROS","3364481","2018-02-01 15:21:39","2000-07-07","M","193","190");

INSERT INTO tb_pessoa VALUES("191","00034280103","JOSE FERREIRA DOS SANTOS","4587456","2018-02-01 21:30:00","1984-11-23","M","194","191");

INSERT INTO tb_pessoa VALUES("192","05461718183","LUY BRENNO SANTOS DE SOUZA","3305358","2018-02-01 22:34:48","2002-05-12","M","195","192");

INSERT INTO tb_pessoa VALUES("193","04716421503","ERNANDO SOUZA DE PAULA","1108213479","2018-02-02 11:05:14","1995-03-06","M","196","193");

INSERT INTO tb_pessoa VALUES("194","07606595160","HIGOR RODRIGUES DIAS","3795126","2018-02-02 15:29:32","2004-08-15","M","197","194");

INSERT INTO tb_pessoa VALUES("196","06089979198","HELLEN THAIS DIAS RODRIGUES","3127539","2018-02-02 15:54:49","1995-12-11","F","199","196");

INSERT INTO tb_pessoa VALUES("197","03685852124","DIEGO ROCHA DA SILVA","2801200","2018-02-03 12:31:21","1995-11-14","M","200","197");

INSERT INTO tb_pessoa VALUES("198","04756906133","SONIARA APARECIDA MENDES MAIA","2808318","2018-02-03 22:41:21","1989-12-20","F","201","198");

INSERT INTO tb_pessoa VALUES("199","04243396175","RAQUEL DA COSTA SILVA","3746218","2018-02-03 22:44:49","1990-08-12","F","202","199");

INSERT INTO tb_pessoa VALUES("200","02969348101","JULIA FARAJ BENN","2799971","2018-02-03 22:49:55","1997-04-04","F","203","200");

INSERT INTO tb_pessoa VALUES("201","04969369135","MATHEUS MARTINS DA COSTA","3587574","2018-02-04 13:23:13","1994-02-13","M","204","201");

INSERT INTO tb_pessoa VALUES("202","04905680174","WEMERSON ANDRADE MESSIAS SANTOS","3126912","2018-02-04 17:30:48","1995-06-19","M","205","202");

INSERT INTO tb_pessoa VALUES("203","05836568111","KAREN MIALICHI DA SILVA MAIA","","2018-02-04 19:27:59","2000-01-29","F","206","203");

INSERT INTO tb_pessoa VALUES("204","08155386180","GABRIEL DE SOUZA LIMA","3864239","2018-02-05 11:46:42","2003-04-08","M","207","204");

INSERT INTO tb_pessoa VALUES("205","05721877189","POLYANNA DA COSTA LIMA","20538","2018-02-05 02:06:05","1999-02-27","F","208","205");

INSERT INTO tb_pessoa VALUES("206","13736212658","JONATAS FRADIQUE BARROSO","20621259","2018-02-05 16:43:17","2001-12-14","M","209","206");

INSERT INTO tb_pessoa VALUES("207","08685566100","LAíS VIEIRA SOUSA","3968383","2018-02-05 18:13:42","2004-08-13","F","210","207");

INSERT INTO tb_pessoa VALUES("208","02871349118","ANA LíDIA DE HOLANDA NUNES","2952356","2018-02-05 20:35:53","2001-07-04","F","211","208");

INSERT INTO tb_pessoa VALUES("209","03531877127","ALEX GEHLHAAR","5467661","2018-02-05 22:17:10","1990-11-07","M","212","209");

INSERT INTO tb_pessoa VALUES("210","05999058163","JOYCE FERREIRA GOMES","3440139","2018-02-05 22:38:17","1997-02-21","F","213","210");

INSERT INTO tb_pessoa VALUES("211","04027231120","JOYCE MARQUES SANTANA","3408815","2018-02-08 22:03:28","1998-01-07","F","214","211");

INSERT INTO tb_pessoa VALUES("212","00458796131","TIAGO MOREIRA GOMES","3646693","2018-02-07 08:00:35","2001-08-24","M","215","212");

INSERT INTO tb_pessoa VALUES("213","04387114169","ABIGAYL KATHLEEN COSTA DA PENHA","3031380","2018-02-07 09:41:06","1993-09-15","F","216","213");

INSERT INTO tb_pessoa VALUES("214","09011125185","MARIA LUIZA CAMARGO RAPOSO DE MELO","","2018-02-07 11:50:45","2003-11-11","F","217","214");

INSERT INTO tb_pessoa VALUES("215","04768775128","ELLIEL KASSIO","","2018-02-07 13:11:40","1998-09-03","M","218","215");

INSERT INTO tb_pessoa VALUES("216","06212376123","DANIEL NEGREIRO MARCIEL","3097828","2018-02-07 13:41:02","1998-05-14","M","219","216");

INSERT INTO tb_pessoa VALUES("217","05190377156","CARLOS AUGUSTO SILVA DAMACENA","3201756","2018-02-07 20:40:54","1995-12-05","M","220","217");

INSERT INTO tb_pessoa VALUES("218","05728016103","MARIA LUIZA DE SOUSA CAMPOS BRAGA","3384476","2018-02-07 21:29:52","1996-01-19","F","221","218");

INSERT INTO tb_pessoa VALUES("219","08991212174","MARCOS GABRIEL VASCO DA SILVA","","2018-02-07 21:36:42","2004-11-19","M","222","219");

INSERT INTO tb_pessoa VALUES("220","07419326100","GUILHERME HENRIQUE DA SILVA COSTA","3759715","2018-02-08 12:55:50","2001-12-24","M","223","220");

INSERT INTO tb_pessoa VALUES("221","05606259109","ÉRIKA PEREIRA DO PRADO","3317440","2018-02-08 13:51:27","1996-10-22","F","224","221");

INSERT INTO tb_pessoa VALUES("222","03726852182","RAFAEL FONTENELE","2844393","2018-02-08 14:08:22","1991-12-05","M","225","222");

INSERT INTO tb_pessoa VALUES("223","07759869177","LETíCIA COELHO BRITO","","2018-02-08 18:50:34","2004-10-08","F","226","223");

INSERT INTO tb_pessoa VALUES("224","08502378155","TAMIRES FERREIRA BARBOSA FELIX","","2018-02-08 19:41:19","2004-05-30","F","227","224");

INSERT INTO tb_pessoa VALUES("225","03488383105","BRUNNA ADRYAH GUIMARãES MOURãO","","2018-02-08 23:01:47","2001-10-16","F","228","225");

INSERT INTO tb_pessoa VALUES("226","07977141116","JúLIA VITóRIA NEGREIRO MARCIEL","3807699","2018-02-08 23:14:50","2002-06-22","F","229","226");

INSERT INTO tb_pessoa VALUES("227","05546104180","JOãO VICTOR ALVES COELHO","3299020","2018-02-09 00:01:48","2002-04-12","M","230","227");

INSERT INTO tb_pessoa VALUES("228","07257508127","CAMILA SANTOS GABRIEL","3719629","2018-02-09 00:26:19","2003-02-15","F","231","228");

INSERT INTO tb_pessoa VALUES("229","03592193147","VITOR VALENTIN BENETTI","5086293","2018-02-09 12:34:26","1991-05-16","M","232","229");

INSERT INTO tb_pessoa VALUES("230","07756279174","GEOVANNA EMILY ARAúJO SILVA","","2018-02-09 13:22:02","2003-04-19","F","233","230");

INSERT INTO tb_pessoa VALUES("231","95397434272","ALEXSANDRA MAIBERG HAUSSER","6619507","2018-02-09 13:30:25","1995-10-05","F","234","231");

INSERT INTO tb_pessoa VALUES("232","05546110155","PEDRO PAULO ALVES COELHO","3.528.368","2018-02-09 20:27:20","2003-09-01","M","235","232");

INSERT INTO tb_pessoa VALUES("233","12345678909","GG NOVATO","","2018-04-04 13:56:51","1994-04-06","F","236","243");




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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJek5EVTJLaW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO tb_usuario VALUES("2","Lucrece0611","VEhWamNtVmpaVEEyTVRFPQ==","A","2017-12-09 00:00:00","31","31");

INSERT INTO tb_usuario VALUES("3","raul**123","Y21GMWJDb3FNVEl6","A","2017-12-10 00:00:00","34","34");

INSERT INTO tb_usuario VALUES("4","santosdecalcajeansjpII123","YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09","A","2017-12-10 00:00:00","36","36");

INSERT INTO tb_usuario VALUES("5","pe.pio2309","Y0dVdWNHbHZNak13T1E9PQ==","A","2017-12-11 00:00:00","37","37");

INSERT INTO tb_usuario VALUES("6","OPACObrubs123","VDFCQlEwOWljblZpY3pFeU13PT0=","A","2017-12-11 00:00:00","39","39");

INSERT INTO tb_usuario VALUES("7","311088*lili**","TXpFeE1EZzRLbXhwYkdrcUtnPT0=","A","2017-12-20 00:00:00","62","61");

INSERT INTO tb_usuario VALUES("8","Maria10","VFdGeWFXRXhNQT09","A","2017-12-27 00:00:00","74","72");

INSERT INTO tb_usuario VALUES("9","Ultimagot4","Vld4MGFXMWhaMjkwTkE9PQ==","A","2017-12-27 00:00:00","75","73");

INSERT INTO tb_usuario VALUES("10","Dieguinho10","UkdsbFozVnBibWh2TVRBPQ==","I","2018-01-06 00:00:00","99","97");

INSERT INTO tb_usuario VALUES("11","MA130797","VFVFeE16QTNPVGM9","I","2018-01-06 00:00:00","100","98");

INSERT INTO tb_usuario VALUES("12","An020601","UVc0d01qQTJNREU9","I","2018-01-07 00:00:00","105","103");

INSERT INTO tb_usuario VALUES("13","euamominhaMAE123","WlhWaGJXOXRhVzVvWVUxQlJURXlNdz09","I","2018-01-31 00:00:00","192","189");

INSERT INTO tb_usuario VALUES("21","123456**","TVRJek5EVTJLaW89","A","2018-04-04 12:19:53","6","6");

INSERT INTO tb_usuario VALUES("22","123456**","TVRJek5EVTJLaW89","A","2018-04-04 13:52:26","236","233");

INSERT INTO tb_usuario VALUES("23","123456**","TVRJek5EVTJLaW89","I","2018-04-04 17:14:19","181","178");




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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("56","1","8");

INSERT INTO tb_usuario_perfil VALUES("57","1","7");

INSERT INTO tb_usuario_perfil VALUES("58","1","3");

INSERT INTO tb_usuario_perfil VALUES("59","1","1");

INSERT INTO tb_usuario_perfil VALUES("3","2","3");

INSERT INTO tb_usuario_perfil VALUES("4","2","4");

INSERT INTO tb_usuario_perfil VALUES("5","2","3");

INSERT INTO tb_usuario_perfil VALUES("7","3","3");

INSERT INTO tb_usuario_perfil VALUES("8","3","4");

INSERT INTO tb_usuario_perfil VALUES("9","3","3");

INSERT INTO tb_usuario_perfil VALUES("44","4","6");

INSERT INTO tb_usuario_perfil VALUES("45","4","3");

INSERT INTO tb_usuario_perfil VALUES("46","4","2");

INSERT INTO tb_usuario_perfil VALUES("47","4","3");

INSERT INTO tb_usuario_perfil VALUES("52","5","6");

INSERT INTO tb_usuario_perfil VALUES("53","5","3");

INSERT INTO tb_usuario_perfil VALUES("54","5","2");

INSERT INTO tb_usuario_perfil VALUES("55","5","3");

INSERT INTO tb_usuario_perfil VALUES("16","6","3");

INSERT INTO tb_usuario_perfil VALUES("17","6","4");

INSERT INTO tb_usuario_perfil VALUES("18","6","3");

INSERT INTO tb_usuario_perfil VALUES("48","7","6");

INSERT INTO tb_usuario_perfil VALUES("49","7","3");

INSERT INTO tb_usuario_perfil VALUES("50","7","2");

INSERT INTO tb_usuario_perfil VALUES("51","7","3");

INSERT INTO tb_usuario_perfil VALUES("39","8","8");

INSERT INTO tb_usuario_perfil VALUES("40","8","5");

INSERT INTO tb_usuario_perfil VALUES("41","8","3");

INSERT INTO tb_usuario_perfil VALUES("42","8","2");

INSERT INTO tb_usuario_perfil VALUES("43","8","3");

INSERT INTO tb_usuario_perfil VALUES("31","9","3");

INSERT INTO tb_usuario_perfil VALUES("32","9","5");

INSERT INTO tb_usuario_perfil VALUES("33","9","3");

INSERT INTO tb_usuario_perfil VALUES("34","10","3");

INSERT INTO tb_usuario_perfil VALUES("35","11","3");

INSERT INTO tb_usuario_perfil VALUES("36","12","3");

INSERT INTO tb_usuario_perfil VALUES("37","13","3");

INSERT INTO tb_usuario_perfil VALUES("63","21","3");

INSERT INTO tb_usuario_perfil VALUES("64","21","2");

INSERT INTO tb_usuario_perfil VALUES("65","21","3");

INSERT INTO tb_usuario_perfil VALUES("67","22","3");

INSERT INTO tb_usuario_perfil VALUES("68","22","3");

INSERT INTO tb_usuario_perfil VALUES("69","23","3");




