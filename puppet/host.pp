exec { 'dnf-update':
  command => '/bin/dnf upgrade -y',
  returns => [0,1],
  timeout => 0
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
  before => Exec['dnf-update'],
}

file { 'chrome-repo':
  path => '/etc/yum.repos.d/google-chrome.repo',
  content => "[google-chrome]
name=Google Chrome 64-bit
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86-64
enabled=1
gpgcheck=1",
  before => Exec['dnf-update'],
}

file { 'virtualbox-repo':
  path => '/etc/yum.repos.d/virtualbox.repo',
  content => "[skype]
name=Skype Repository
baseurl=http://download.skype.com/linux/repos/fedora/updates/i586/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-skype
enabled=1
gpgcheck=0",
  before => Exec['dnf-update'],
}

exec { 'virtualbox-key':
  require => [ Package['wget'], File['virtualbox-repo'] ],
  command => '/bin/wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | /bin/rpm --import - ||:',
  before => Exec['dnf-update'],
}


# Probably needs to be passed through /bin/sh
exec { 'rpmfusion-repo':
  command => '/bin/dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm ||:',
  before => Exec['dnf-update'],
}

# Apparently wget isn't installed by default on Fedora 22.
# I'm as shocked as you are. Furthermore, the python-dnf-plugins-extras-migrate
# deal is because many packages still reference yum in their metadata. This script# (When called by '/bin/dnf-2 migrate', as in the exec above), cleans that up.
$fundamentals = ["python-dnf-plugins-extras-migrate",
              "wget"]


$build_env = ["ack",
              "emacs",
              "fish",
              "gch",
              "git",
              "golang",
              "htop",
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
                "dzen",
                "fedup",
                "firefox",
                "free42",
                "google-chrome-stable", # Needs the google chrome repo.
                "gparted",
                "gpodder",
                "moc",
                "paman",
                "pidgin",
                "skype", # needs RPMFusion.
                "steam",
                "unetbootin",
                "VirtualBox-4.3", # Needs the virtualbox repo.
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
  require => Exec['dnf-update'],
  ensure => latest,
}

package { $desktop_env:
  before => Exec['dnf-migrate'],
  require => Exec['dnf-update'],
  ensure => latest,
}

package { $photo_env:
  before => Exec['dnf-migrate'],
  require => Exec['dnf-update'],
  ensure => latest,
}

