
## ChayotePHP Framework 

# README #

how to setup the environment


ChayotePHP 3.0
----------------------------

PHP Framework an easy opportunity to start in the Framework World


1) Edit the file /etc/hosts and add an entry as below:

    127.0.0.8 		localhost.teste1
    
    We will use an alias "teste1" for example purpose only in this tutorial.

2)Add the entry on vhost

    <VirtualHost 127.0.0.8:80>
      DocumentRoot "/var/www/htdocs/chayotephp"
      ServerName localhost.chayotephp
      ServerAlias localhost.chayotephp
      ErrorLog "/var/log/httpd/localhost.chayotephp-error_log"
      CustomLog "/var/log/httpd/localhost.chayotephp-access_log" common    
    </VirtualHost>
  
  3)Set the .htaccess file in root folder of the project and use the follow content

    DirectoryIndex index.php
    <IfModule mod_rewrite.c>
        Options +FollowSymLinks
        RewriteEngine on
        RewriteCond %{REQUEST_METHOD} ^TRAC[EK]
        RewriteRule .* - [L,R=405]
        RewriteCond %{REQUEST_URI} !^/(files)/
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_FILENAME} !-l
        RewriteRule ^(.*)$ index.php?url=$1
    </IfModule>
    AddDefaultCharset UTF-8
    Options -Indexes
    
    
    
    
4) Restart the Apache server

Check if the file /etc/httpd/httpd.conf has been setted with the redirect enabled and the directory permissions

    <Directory />
        #AllowOverride none
        #Require all denied
        Options FollowSymLinks
        AllowOverride All  
    </Directory>
    
    DocumentRoot "/srv/httpd/htdocs"
    <Directory "/srv/httpd/htdocs">
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order Allow,Deny
        Allow from all      
    </Directory>    
    
5)Also verify in your file /etc/httpd/httpd.conf if the rewrite module is enabled for the apache server
    
    LoadModule rewrite_module lib64/httpd/modules/mod_rewrite.so

6)Restart the apache to ensure that all configurations were loaded.
    
    $ sudo /etc/rc.d/rc.httpd stop                                                                                                                            
    $sudo /etc/rc.d/rc.httpd start  
    
    
    
7)checkout the project:

Using Git
    
    $ cd var/www/htdocs
    $ git clone https://github.com/fabioalvaro/ChayotePHP.git teste1
    $ cd teste1
    $ composer update

or using Composer

    $ composer create-project --prefer-dist fabioalvaro/chayotephp teste1
    $ cd teste1
    $ composer update

    
    
8)Set the permissions:

    $ cd var/www/htdocs
    
    $ sudo chmod 777 teste1/ -R

    
9)Install the e.g database to use the default entity color to tutorial purpose only. You can use the default mysql manager tha you are confortable to use. 
    
        chayotedb.sql
        
        
10)Setup the credentials to access the connection on config.php file (linha 27 +- )
    
    define('DBHOST', 'localhost');
    
    define('DBPORT', '3306');
    
    define('DBUSER', 'root');
    
    define('DBPASS', 'senhafake');
    
    define('DBNAME', 'chayotedb');
    
    define('DBENCODING', 'utf8');
        
11)Now try to access your default url eg: http://localhost.teste1        
        
    
    
    
