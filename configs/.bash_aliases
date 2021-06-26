export MY_WORK_DIR="$HOME/work"
# Fix for VSCode hanging on deletion of a file
export ELECTRON_TRASH=gio
export PATH="$PATH:/home/sukhi/go/bin"


alias work="cd $MY_WORK_DIR"
alias aptupgrade="sudo apt-get update && sudo apt-get -y upgrade"
alias k="kubectl"
alias ap="ansible-playbook"


# Kubernetes
alias kct="kubectl config get-contexts"

function ksetct() {
    kubectl config use-context $1
}

function ksetns() {
    kubectl config set-context --current --namespace=$1
}
