# Installs php 5.3.27 and symlinks it as 5.3
#
# Usage:
#
#     include php::5_3
#
class php::5_3 inherits php {
  require php::5_3_27

  file { "${php::phpenv_root}/versions/5.3":
    ensure  => symlink,
    force   => true,
    target  => "${php::phpenv_root}/versions/5.3.27"
  }
}
