<?php

//Configuracao do Ambiente
@define('PATH_ROOT', $_SERVER['DOCUMENT_ROOT'] . '/');
@define('SMARTYDIR', PATH_ROOT . '/views');
@define('LIBS', 'system/libs');
@define('HTTP_ROOT', 'http://' . $_SERVER['HTTP_HOST']);
@define('MEUDIR', dirname(__FILE__));
@define('SERVIDOR_ALTERNATIVO','http://trocainteligentefox.s3.amazonaws.com');

if($_SERVER["HTTP_HOST"]=='homologacao.industriafox.com.br'){
    @define('STORAGE_ROOT','storage/');    //homologacao
}else
    @define('STORAGE_ROOT','/storage/');    //local


@define('DEBUG_APP',false);
@define('TEMPO_LIMITE', 1800); //Tempo limite da Sessao Expirar em Segundos
// @define('caminhoPHP', '/storage/');
@define('NOME_APLICACAO', 'Troca Inteligente Fox');

@define('EMAIL_SAC_FOX', 'sistema@trocainteligentefox.com.br');//Responsavel pelo SAC FOX

/*
 * Configuração do Banco de Dados
 */

@define('DBHOST', 'mysql.industriafox.com');
@define('DBPORT', '3306');
@define('DBUSER', 'industriafox08');
@define('DBPASS', 'Foxit258');
@define('DBNAME', 'industriafox08');
@define('DBENCODING', 'utf8');

@define('SMTPHOST', 'smtp.trocainteligentefox.com');
@define('SMTPAUTH', true);
#@define('SMTPSECURE'  , 'ssl');
@define('SMTPPORT', '587');
@define('SMTPUSER', 'sistema@trocainteligentefox.com.br');
@define('SMTPPASS', 'fox9999');
@define('SMTPFROM', 'sistema@trocainteligentefox.com.br');
@define('SMTPFROMNAME', 'sistema@trocainteligentefox.com.br');
@define('HTML', true);

/*
  echo 'Document root '. $_SERVER['DOCUMENT_ROOT'].' <br>';
  echo 'SMARTYDIR '. SMARTYDIR.' <br>';
  echo 'SMARTYDIR '. LIBS.' <br>';
  echo 'HTTP_ROOT '. HTTP_ROOT;
 */
?>