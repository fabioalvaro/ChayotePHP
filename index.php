<?php

$redirecionar = false;

switch ($_SERVER['SERVER_NAME']) {
    case 'trocainteligentefox.com': $redirecionar = true;
        break;
    case 'www.trocainteligentefox.com':$redirecionar = true;
        break;
    default: $redirecionar = false;
        break;
}

if ($redirecionar){
    header('Location: http://www.trocainteligentefox.com.br');
    die;
}

//ini_set('display_errors',1);
//ini_set('display_startup_erros',1);
//error_reporting(E_ALL);

date_default_timezone_set('America/Sao_Paulo');

setlocale(LC_ALL, NULL);
setlocale(LC_ALL, 'pt_BR');

session_name('mysession');
session_start();

define('CONTROLLERS', 'controllers/');
define('VIEWS', 'views/');
define('MODELS', 'models/');
define('TEMPLATE', 'template/');
define('HELPERS', 'system/helpers/');

require_once('config.php');
require_once('system/system.php');
require_once('system/controller.php');
require_once('system/model.php');
require_once('permissoes.php');

require_once(LIBS . "/smarty/Smarty.class.php");
require_once(LIBS . "/debuglib/debuglib.php");
require_once(LIBS . '/phpmailer/class.phpmailer.php');

require_once('permissoes.php');
$perm = new permissoes();

//Verifica se o usuário tem acesso a pagina solicitada
$perm->controleAcesso();

// END SMARTY LOAD
// autoload models and helpers
function autoload($file) {

    if (file_exists(MODELS . $file . '.php')) {
        require_once(MODELS . $file . '.php');
    } elseif (file_exists(HELPERS . $file . '.php')) {
        require_once(HELPERS . $file . '.php');
    } elseif (file_exists(TEMPLATE . $file . '.php')) {
        require_once(TEMPLATE . $file . '.php');
    } else {
        return true;
    }
}

spl_autoload_register('autoload');

if ($_POST and !get_magic_quotes_gpc()) {
    foreach ($_POST as $field => $value) {
        if (!is_array($_POST[$field])) {
            $_POST[$field] = addslashes($value);
        }
    }
}

$start = new System;
//echo $start->getUrl();die;
//Verifica a sessao

if (
        ($start->getUrl() != 'login/sessao_expirada') &&
        ($start->getUrl() != 'login/logar/') &&
        ($start->getUrl() != 'android/getPerfil') &&
        ($start->getUrl() != 'android/loginInicio') &&
        ($start->getUrl() != 'android/getTabela') &&
        ($start->getUrl() != 'android/updValor') && 
        ($start->getUrl() != 'android/getValor') && 
        (($start->_controller != 'android') && ($start->_action != 'setFoto') ) && 
        ($start->getUrl() != 'android/mudaStatus') &&  
        ($start->getUrl() != 'android/getTabelaWhere') && 
        ($start->getUrl() != 'android/setDados') && 
        ($start->getUrl() != 'android/form') && 
        ($start->getUrl() != 'login') && 
        ($start->getUrl() != 'erro') &&
        ($start->getUrl() != 'login/logout')
) {
    //echo 'controller:'.$start->_controller.'<br> url:'. $start->getUrl(). '<br> expired test!';die;
    $perm->is_expired();
} else {
    
}

$start->run();
