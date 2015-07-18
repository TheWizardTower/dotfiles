exec { 'dnf-upgrade':
  command => '/bin/dnf upgrade -y',
  returns => [0,1],
  timeout => 0
}

exec { 'set-amccullough-shell':
  require => Package['fish'],
  command => "/bin/chsh -s /bin/fish amccullough"
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
  before => Exec['dnf-upgrade'],
}

file { 'chrome-repo':
  path => '/etc/yum.repos.d/google-chrome.repo',
  content => "[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1",
  before => Exec['dnf-upgrade'],
}

# This sets xmonad as the default WM for KDE. Because XMonad rocks.
file { 'xmonad-kde-wm':
  path => '/home/amccullough/.config/plasma-workspace/env/set_window_manager.sh',
  content => "export KDEWM=/bin/xmonad",
  owner => "amccullough",
  mode => "744"
  }

file { 'skype-repo':
  path => '/etc/yum.repos.d/skype.repo',
  content => "[skype]
name=Skype Repository
baseurl=http://download.skype.com/linux/repos/fedora/updates/i586/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-skype
enabled=1
gpgcheck=0",
  before => Exec['dnf-upgrade'],
}

exec { 'virtualbox-repo':
  require => [ Package['wget'], ],
  command => '/bin/wget -q http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo',
  cwd => '/etc/yum.repos.d',
  onlyif => '/bin/test ! -f /etc/yum.repos.d/virtuabox.repo'
}

exec { 'virtualbox-key':
  require => [ Package['wget'], Exec['virtualbox-repo'] ],
  command => '/bin/wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | /bin/rpm --import - ||:',
  before => Exec['dnf-upgrade'],
}

# Probably needs to be passed through /bin/sh
exec { 'rpmfusion-repo':
  command => '/bin/dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm ||:',
  before => Exec['dnf-upgrade'],
}

# Apparently wget isn't installed by default on Fedora 22.
# I'm as shocked as you are. Furthermore, the python-dnf-plugins-extras-migrate
# deal is because many packages still reference yum in their metadata. This script# (When called by '/bin/dnf-2 migrate', as in the exec above), cleans that up.
$fundamentals = ["python-dnf-plugins-extras-migrate",
              "wget"]


$build_env = ["ack",
              "emacs",
              "fish",
              "haskell-platform",
              "git",
              "golang",
              "htop",
              "levien-inconsolata-fonts",
              "irssi",
              "lynx",
              "mercurial",
              "mc",
              "ntop",
              "python",
              "screen",
              "subversion",
              "tmux",
              "vim-enhanced"]

$desktop_env = ["amarok-utils",
                "cairo-dock",
                "dmenu",
                "docker-io",
                "dzen2",
                "fedup",
                "firefox",
                "free42",
                "google-chrome-stable", # Needs the google chrome repo.
                "gparted",
                "gpodder",
                "paman",
                "pidgin",
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

$photo_env = ["digikam",
              "gimp",
              "ufraw"]

package { $fundamentals:
  ensure =>  installed,
}

package { $build_env:
  before => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure => latest,
}

package { $desktop_env:
  before => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure => latest,
}

package { $photo_env:
  before => Exec['dnf-migrate'],
  require => Exec['dnf-upgrade'],
  ensure => latest,
}

