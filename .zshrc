# ZSH Theme and colours
ZSH_THEME="krisM4c"

# Plugins
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  kubectl
  docker
  docker-compose
  gcloud
  gh
  terraform
)

# GCloud
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Auto Loads
autoload -Uz colors; colors
autoload -U +X bashcompinit && bashcompinit

# ZSH history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt INC_APPEND_HISTORY_TIME   # append command to history file immediately after execution

# Kube_PS1
KUBE_PS1_DIVIDER="|"
KUBE_PS1_SYMBOL_ENABLE="false"
KUBE_PS1_SYMBOL_USE_IMG="false"
#KUBE_PS1_CTX_COLOR='171'
#KUBE_PS1_NS_COLOR='183'

# Ansible
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export ANSIBLE_LOG_PATH="~/ansible/ansible.log"

# Terraform
export HELM_EXPERIMENTAL_OCI=1
export PATH=$PATH:/Users/<MAC_USERNAME>/bin

# Path to oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
