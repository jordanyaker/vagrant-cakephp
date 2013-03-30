class php::testing {
  exec { "phpunit":
    creates => "/usr/bin/phpunit",
    command => "pear upgrade pear && \
                pear channel-discover pear.phpunit.de && \
                pear channel-discover components.ez.no && \
                pear channel-discover pear.symfony-project.com && \
                pear install --alldeps phpunit/PHPUnit",
    require => Package["php-pear"],
  }
}