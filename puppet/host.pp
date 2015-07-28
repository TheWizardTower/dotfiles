exec { 'dnf-upgrade':
  command => '/bin/dnf upgrade -y',
  returns => [0,1],
  timeout => 0
}

group { 'docker':
  ensure => "present"
}

user { 'amccullough':
  require    => [ Package['fish'], Package['docker-io'], Package['VirtualBox-5.0'], Group['docker'] ],
  comment    => "Adam McCullough",
  ensure     => 'present',
  home       => '/home/amccullough',
  groups     => ['docker','vboxusers', 'wheel'],
  managehome => 'true',
  name       => 'amccullough',
  password   => '$6$syFUs/zpGB9YN9aQ$sKrkxv1xvbkPO7M3r3PUx5y..lQZHe3hH2iQYcfQHac50BWkrq/zJIpJTIMu.yoe1G3YN8FHwwJ5KtkKKZS951',
  shell      => '/bin/fish',
}

exec { 'get-dotfiles':
  require => [ Package['git'], User['amccullough'] ],
  command => '/bin/git clone https://github.com/TheWizardTower/dotfiles.git',
  cwd     => '/home/amccullough',
  unless  => '/bin/test -d /home/amccullough/dotfiles',
  user    => 'amccullough'
}

exec { 'install-dotfiles':
  require => [ Exec['get-dotfiles'], File['.config'], Package['fish'], Package['golang'] ],
  command => '/home/amccullough/dotfiles/install.sh',
  cwd => '/home/amccullough/dotfiles',
  user => 'amccullough'
}

file { ".config":
  path => "/home/amccullough/.config",
  ensure => "directory",
  owner => "amccullough",
  group => "amccullough",
  require => User['amccullough']
}

file { "git-project-dir":
  path   => "/home/amccullough/git",
  ensure => "directory",
  owner   => "amccullough",
  require => User['amccullough']
}

exec { 'clone-grc':
  cwd => '/home/amccullough/git',
  command => '/bin/git clone https://github.com/garabik/grc.git',
  user => 'amccullough',
  require => [ File['git-project-dir'], Package['git'] ],
  onlyif => '/bin/test ! -d /home/amccullough/git/grc'
}

exec { 'update-grc':
  cwd => '/home/amccullough/git/grc',
  command => '/bin/git pull',
  user => 'amccullough',
  require => [ File['git-project-dir'], Package['git'], Exec['clone-grc'] ],
  onlyif => '/bin/test -d /home/amccullough/git/grc'
}

exec { 'install-grc':
  cwd => '/home/amccullough/git/grc',
  require => Exec['update-grc'],
  command => '/bin/bash install.sh'
}

service { 'docker':
  require => Package['docker-io'],
  enable  => true
}

exec { 'dnf-migrate':
  require => Package['python-dnf-plugins-extras-migrate'],
  command =>  '/bin/dnf-2 migrate'
}

exec { 'adobe-repo-rpm':
  command => '/usr/bin/rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm ||:',
}

# It'd be nice if the key import commands could toggle on if the key was present or not.
# That way we could avoid the hackish-as-hell ||: at the end of each.
exec { 'adobe-repo-key':
  require => Exec['adobe-repo-rpm'],
  command => '/usr/bin/rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux ||:',
  before  => Exec['dnf-upgrade'],
}

file { 'chrome-repo':
  path    => '/etc/yum.repos.d/google-chrome.repo',
  content => "[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1",
  before  => Exec['dnf-upgrade'],
}

exec { 'google-repo-key':
  require => File['chrome-repo'],
  command => '/bin/rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub',
}

# This sets xmonad as the default WM for KDE. Because XMonad rocks.
exec { 'plasma-config-dir':
  require => User['amccullough'],
  command => '/bin/mkdir -p /home/amccullough/.config/plasma-workspace/env',
  user    => "amccullough",
}

file { 'xmonad-kde-wm':
  require => [ User['amccullough'], Exec['plasma-config-dir'] ],
  path    => '/home/amccullough/.config/plasma-workspace/env/set_window_manager.sh',
  content => "export KDEWM=/bin/xmonad",
  owner   => "amccullough",
  mode    => "744"
  }

file { 'skype-repo':
  path    => '/etc/yum.repos.d/skype.repo',
  content => "[skype]
name=Skype Repository
baseurl=http://download.skype.com/linux/repos/fedora/updates/i586/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-skype
enabled=1
gpgcheck=0",
  before  => Exec['dnf-upgrade'],
}

exec { 'virtualbox-repo':
  require => [ Package['wget'], ],
  command => '/bin/wget -q http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo',
  cwd     => '/etc/yum.repos.d',
  onlyif  => '/bin/test ! -f /etc/yum.repos.d/virtuabox.repo'
}

exec { 'virtualbox-key':
  require => [ Package['wget'], Exec['virtualbox-repo'] ],
  command => '/bin/wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | /bin/rpm --import - ||:',
  before  => Exec['dnf-upgrade'],
}

# Probably needs to be passed through /bin/sh
exec { 'rpmfusion-repo':
  command => "/bin/bash -c '/bin/dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm ||:'",
  before  => Exec['dnf-upgrade'],
}

# Apparently wget isn't installed by default on Fedora 22.
# I'm as shocked as you are. Furthermore, the python-dnf-plugins-extras-migrate
# deal is because many packages still reference yum in their metadata. This script# (When called by '/bin/dnf-2 migrate', as in the exec above), cleans that up.
$fundamentals = ["python-dnf-plugins-extras-migrate",
              "wget"]

$build_env = ["ack",
              "colordiff",
              "cabal-rpm",
              "emacs",
              "fish",
              "haskell-platform",
              "hlint",
              "git",
              "golang",
              "htop",
              "levien-inconsolata-fonts",
              "iftop",
              "iotop",
              "irssi",
              "lynx",
              "mercurial",
              "mc",
              "ntop",
              "perl-core",
              "perltidy",
              "python",
              "screen",
              "subversion",
              "tmux",
              "vim-enhanced",
              "vim-X11"]

$desktop_env = ["amarok-utils",
                "cairo-dock",
                "dmenu",
                "docker-io",
                "dzen2",
                "fedup",
                "firefox",
                "flash-plugin",
                "free42",
                "google-chrome-stable", # Needs the google chrome repo.
                "gparted",
                "gpodder",
                "kernel-devel",
                "kernel-headers",
                "dkms",
                "paman",
                "paprefs",
                "pavucontrol",
                "pavumeter",
                "pidgin",
                "pidgin-otr",
                "purple-plugin-pack",
                "seamonkey",
                "skype", # needs RPMFusion.
                # Steam may need to wait a bit...
                # "steam", # needs RPMFusion... but isn't there yet.
                "unetbootin",
                "VirtualBox-5.0", # Needs the virtualbox repo.
                # For some reason VLC isn't showing up in the RPMFusion repo either. Grrrr.
                # "vlc",
                "xcompmgr",
                "xmonad",
                "yakuake"]

$photo_env = ["darktable",
              "digikam",
              "GraphicsMagick",
              "gimp",
              "ImageMagick",
              "ufraw"]

package { $fundamentals:
  ensure  =>  installed,
}

package { $build_env:
  before  => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure  => latest,
}

package { $desktop_env:
  before  => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure  => latest,
}

package { $photo_env:
  before  => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure  => latest,
}

