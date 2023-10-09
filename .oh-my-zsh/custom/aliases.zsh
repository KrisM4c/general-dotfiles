# Delete all remote tracking Git branches where the upstream branch has been deleted
alias gprn="git fetch --prune && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"

# Generate a secure password and copy it to clipboard
alias genpw='LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy'

##generic
alias reload!=". ~/.zshrc"
alias ll="ls -lah"
alias vissh="vi ~/.ssh/config"
alias vihost="sudo vi /etc/hosts"
alias vizsh="vi ~/.zshrc"
alias vialias="vi ~/.oh-my-zsh/custom/aliases.zsh"

## gcloud
alias gcp-prod-core="gcloud config set project <PROD_GCP_PROJ>"
alias gcp-nonprod-core="gcloud config set project <NONPROD_GCP_PROJ>"

## Civo
alias civoapi="civo apikey current"
alias civorc="civo region current"

## Directory navigation
alias cmpy-git="cd ~/src/<COMPANY_NAME>"

## Kubernetes
alias k="kubectl"
alias kgp="k get pods -o wide"
alias kd="k describe"
alias kg="k get"
alias kgir="k get ingressroute"
alias kdir="k describe ingressroute"
alias keir="k edit ingressroute"
alias kgm="k get middleware"
alias kdm="k describe middleware"
alias kem="k get middleware"
alias kns="kubie ns"
alias kcx="kubie ctx"
alias kgn="k get nodes -o wide"
alias kdn="kd node"
alias pod-check="kgp -A -o wide | grep -v Running | grep -v Comp"
alias kgs="k get service"
alias node-port-use=`kgs -A -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodeport}}{{"\n"}}{{end}}{{end}}{{end}}'`

## SSL
alias certexp="openssl x509 -enddate -noout -in"
alias certcheck="openssl x509 -noout -text -in"
alias caverify="openssl verify -CAfile"

## Networking
alias mtr="sudo /usr/local/sbin/mtr"

## Git
alias gcm="git commit -m"
alias gp="git push"
alias gpt="git push --tags"
alias upd-git="(cd ~/src/<COMPANY_NAME>; mr -j5 up)"
alias chk-git="(cd ~/src/<COMPANY_NAME>; mr stat)"
alias upd-git-personal="(cd ~/src/personal; mr -j5 up)"
alias chk-git-personal="(cd ~/src/personal; mr stat)"
alias dotf="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dotfc="dotf commit -m"
alias dotfp="dotf push"
alias dotfst="dotf status"

## Ansible
alias ansible="/usr/local/opt/ansible@2.8/bin/ansible"
alias ansible-playbook="/usr/local/opt/ansible@2.8/bin/ansible-playbook"
alias ansible2="/usr/local/opt/ansible@2.9/bin/ansible"
alias ansible2-playbook="/usr/local/opt/ansible@2.9/bin/ansible-playbook"
alias ansible4="/usr/local/opt/ansible/bin/ansible"
alias ansible4-galaxy="/usr/local/opt/ansible/bin/ansible-galaxy"
alias ansible4-playbook="/usr/local/opt/ansible/bin/ansible-playbook"
