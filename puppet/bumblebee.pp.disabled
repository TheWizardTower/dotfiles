Exec { 'install-bumblebee-repo':
  command => '/bin/dnf -y install http://install.linux.ncsu.edu/pub/yum/itecs/public/bumblebee/fedora22/noarch/bumblebee-release-1.2-1.noarch.rpm'
}

$bb_deps = [ "libbsd-devel", "libbsd",  "glibc-devel", "libX11-devel", "help2man",  "autoconf", "git", "tar", "glib2", "glib2-devel", "kernel-devel", "kernel-headers", "automake", "gcc", "gtk2-devel"]

package { $bb_deps:
  before => Exec['install-bumblebee-repo'],
  ensure => installed
}


$bb = [ "bbswitch", "bumblebee"]

package { $bb:
  require => Exec['install-bumblebee-repo'],
  ensure => installed
}

exec { "nvidia-drivers-repo":
  require => [Package["bumblebee"], Package["bbswitch"]],
  command => '/bin/dnf -y install http://install.linux.ncsu.edu/pub/yum/itecs/public/bumblebee-nonfree/fedora22/noarch/bumblebee-nonfree-release-1.2-1.noarch.rpm'
}

package { "bumblebee-nvidia":
  require => [Package["bumblebee"], Package["bbswitch"], Exec['nvidia-drivers-repo']],
  ensure => installed
}
