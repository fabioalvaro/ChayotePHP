# README #


how to setup the environment


ChayotePHP
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
  
  
