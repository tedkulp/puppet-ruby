# Installs ruby 1.9.2p320 from rbenv and symlinks it as 1.8.7.
#
# Usage:
#
#     include ruby::1-9-2
class ruby::1-9-2 {
  require ruby
  require ruby::1-9-2-p320

  file { "${ruby::root}/versions/1.9.2":
    ensure  => symlink,
    force   => true,
    target  => "${ruby::root}/versions/1.9.2-p320"
  }
}
