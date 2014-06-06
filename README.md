Responsive
==========

Html5 responsive BEdita frontend from http://intializr.com

Setup
=====

 1. Clone frontend responsive into local bedita frontend path, normally this is the __frontends__ folder inside bedita (like __/var/www/bedita/frontends/responsive__), so:

```
      cd /var/www/bedita/frontends
      git clone git@github.com:bedita/responsive.git
```

 1. Copy __responsive/webroot/index.php.sample__ to __responsive/webroot/index.php__.


 1. Copy __responsive/config/core.php.sample__ into __responsive/config/core.php__ and modify it, if necessary...


 1. Set write permissions for temporary folder __responsive/tmp__.
    For example, in unix shell, assuming 'john' is the username:

```
      sudo chown -R john:www-data /var/www/responsive/tmp
      sudo chmod -R g+w /var/www/responsive/tmp
```

Enjoy responsive frontend ;)

If something goes worong, take a look on logs (for example in /var/www/responsive/tmp/logs) and tune your core.php file, to change debug level as needed (/var/www/responsive/config/core.php).


Note
====
If your frontend path is not inside /bedita/frontends, edit responsive/webroot/index.php and set properly CAKE_CORE_INCLUDE_PATH and BEDITA_CORE_PATH.
For instance, if your bedita home path is /var/www/bedita:

```
      if (!defined('CAKE_CORE_INCLUDE_PATH')) {
            define('CAKE_CORE_INCLUDE_PATH', "/var/www/bedita");
      }

      if (!defined('BEDITA_CORE_PATH')) {
            define('BEDITA_CORE_PATH', "/var/www/bedita/bedita-app");
      }
```
