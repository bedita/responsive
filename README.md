responsive
==========

html5 responsive template frontend from intializr.com

setup
=====

Clone frontend responsive into local path, for example /var/www/responsive.

      cd /var/www
      git clone git@github.com:bedita/responsive.git

Copy responsive/webroot/index.php.sample in responsive/webroot/index.php.
Edit responsive/webroot/index.php and set properly CAKE_CORE_INCLUDE_PATH and BEDITA_CORE_PATH.
For instance, if your bedita home path is /var/www/bedita:

      if (!defined('CAKE_CORE_INCLUDE_PATH')) {
            define('CAKE_CORE_INCLUDE_PATH', "/var/www/bedita");
      }

      if (!defined('BEDITA_CORE_PATH')) {
            define('BEDITA_CORE_PATH', "/var/www/bedita/bedita-app");
      }

Set permits for temporary folder responsive/tmp.
For example, in unix shell, assuming 'john' is the username:

      sudo chown -R john:www-data /var/www/responsive/tmp
      sudo chmod -R g+w /var/www/responsive/tmp

Enjoy responsive frontend ;)

If something goes bad, take a look on logs (for example in /var/www/responsive/tmp/logs) and tune your core.php file, to change debug level as needed (/var/www/responsive/config/core.php).
