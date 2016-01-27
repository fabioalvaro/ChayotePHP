## ChayotePHP Framework

[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)
[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)
[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)

> **Note:** This repository contains the core code of the ChayotePHP framework. If you want to build an application using ChayotePHP, visit the main [ChayotePHP repository](https://github.com/ChayotePHP/framework).

## ChayotePHP Framework 

# README #


how to setup the environment


ChayotePHP V2.0
----------------------------

PHP Framework an easy opportunity to start in the Framework World


1)
    127.0.0.8 		localhost.chayotephp

2)Add the entry on vhost

    <VirtualHost 127.0.0.8:80>
      DocumentRoot "/var/www/htdocs/chayotephp"
      ServerName localhost.chayotephp
      ServerAlias localhost.chayotephp
      ErrorLog "/var/log/httpd/localhost.chayotephp-error_log"
      CustomLog "/var/log/httpd/localhost.chayotephp-access_log" common    
    </VirtualHost>
  
  4)Configure o .htaccess da raiz do projeto

    <IfModule mod_rewrite.c>
        RewriteEngine on
        RewriteRule    ^$    public/    [L]
        RewriteRule    (.*) public/$1    [L]
    </IfModule>
    
    
5) Reinicie o servidor Apache
    
    $ sudo /etc/rc.d/rc.httpd stop                                                                                                                            
    $sudo /etc/rc.d/rc.httpd start  
    
    
    
6)Faça Checkout do Projeto no git
    
    $ cd var/www/htdocs
    
    $ git clone https://github.com/fabioalvaro/ChayotePHP.git teste1

    
    
    
7)Dê permissao para a pasta:
    
    $ sudo chmod 777 teste1/ -R

    
8)Instale o banco de dados exemplo para voce poder utilizar o banco de dados, use seu gerenciador padrão de MYSQL.
    
        chayotedb.sql
        
        
9)Configure as diretivas de conexão no arquivo config.php (linha 27 +- )
    
    define('DBHOST', 'localhost');
    
    define('DBPORT', '3306');
    
    define('DBUSER', 'root');
    
    define('DBPASS', 'senhafake');
    
    define('DBNAME', 'chayotedb');
    
    define('DBENCODING', 'utf8');
        
        
        
    
    
    
