set -gx GOPATH $HOME/gocode/:$HOME/imvu/operations/golang/imvu:$HOME/imvu/operations/golang/external:/usr/lib/go

set -g OMF_PATH $HOME/.local/share/omf
set -g OMF_CONFIG $HOME/.config/omf

function fish_title
        true
end

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.


setenv SSH_ENV $HOME/.ssh/environment
setenv SSH_SOCK_LINK $HOME/.ssh/auth_sock_symlink

function start_agent
        echo "Initializing new SSH agent ..."
        set ssh_eval (/usr/bin/ssh-agent -c)
        echo $ssh_eval > $SSH_ENV
        echo "succeeded"
        chmod 600 $SSH_ENV
        . $SSH_ENV
        ssh-add ~/.ssh/amccullough-corp-20150911 ~/.ssh/amccullough-prod-20150910
        ln -sf $SSH_AUTH_SOCK $SSH_SOCK_LINK
end

function test_identities
        ssh-add -l | grep -e "The agent has no identities" > /dev/null
        if [ $status -eq 0 ]
                ssh-add ~/.ssh/amccullough-corp-20150911 ~/.ssh/amccullough-prod-20150910 ~/.ssh/github
                if [ $status -eq 2 ]
                        start_agent
                end
        end
end

if [ -n "$SSH_AGENT_PID" ]
        ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
        if [ $status -eq 0 ]
                test_identities
        end
else
        if [ -f $SSH_ENV ]
                . $SSH_ENV > /dev/null
        end
        ps -ef | grep $SSH_AGENT_PID |  grep [s]sh-agent > /dev/null
        if [ $status -eq 0 ]
                test_identities
        else
                start_agent
        end
end

set REPOS "svn+ssh://amccullough@svn.corp.imvu.com/home/svnrepos/trunk/operations/"

alias sandbox="su -c  'ssh -A -L 80:localhost:80 -L 443:localhost:443 -L 11211:localhost:11211 -L 3306:localhost:3306 cit@192.168.112.13'"
