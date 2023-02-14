# Maintain an up to date list of every package installed on laptop
pacman -Qqe > ~/.notes/pkglist.txt

# Start ssh-agent on login
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
    sed -i '3d' ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi
