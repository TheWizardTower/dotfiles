set -gx EDITOR "emacsclient -c"
set -gx TERM "screen-256color"
set -gx PERL5LIB "$HOME/imvu/operations/software/ImvuPerlModules"
set -gx cabal_helper_libexecdir $HOME/.local/bin

function fish_title
        true
end


alias sandbox="su -c  'ssh -A -L 80:localhost:80 -L 443:localhost:443 -L 11211:localhost:11211 -L 3306:localhost:3306 cit@192.168.112.13'"

