Responsive
===========

HTML5 Responsive BEdita frontend from http://www.initializr.com/

Setup
=====

a. Clone frontend responsive into local bedita frontend path, normally this is the __frontends__ folder inside bedita (like */var/www/bedita/frontends*), so:

```
      cd /var/www/bedita/frontends
      git clone git@github.com:bedita/responsive.git
```

b. Copy *responsive/webroot/index.php.sample* to *responsive/webroot/index.php*.


c. Copy *responsive/config/core.php.sample* to *responsive/config/core.php* and modify it, if necessary...


d. Set write permissions for temporary folder *responsive/tmp*.
    For example, in a unix shell, assuming 'john' is the username and current path is *frontends* folder:

```
      sudo chown -R john:www-data responsive/tmp
      sudo chmod -R g+w responsive/tmp
```

If something goes wrong take a look at log files (for example in *responsive/tmp/logs*) and tune your core.php file, changing debug level as needed (*responsive/config/core.php*).

Also read this article: http://docs.bedita.com/setup/if-something-goes-wrong-in-bedita


Note
====
If your frontend path is not inside *bedita/frontends* but elsewhere, you may edit *responsive/webroot/index.php* and set properly CAKE_CORE_INCLUDE_PATH and BEDITA_CORE_PATH.
For instance, if your bedita home path is /var/www/bedita:

```
      if (!defined('CAKE_CORE_INCLUDE_PATH')) {
            define('CAKE_CORE_INCLUDE_PATH', "/var/www/bedita");
      }

      if (!defined('BEDITA_CORE_PATH')) {
            define('BEDITA_CORE_PATH', "/var/www/bedita/bedita-app");
      }
```
