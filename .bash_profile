alias q='exit'
alias k='kubectl'
alias gpo='git co main && git pull origin main && git branch --merged| egrep -v "(^\*|main|demo|uat|preprod|prod)" | xargs git branch -d'
alias gpb="git rev-parse --symbolic-full-name --abbrev-ref HEAD | xargs | git push origin"
alias af="source ~/.virtualenv/npm-airflow/bin/activate"
alias restart="cp ~/Downloads/latest.sql.gz pg-dump.sql.gz && ./compose.sh down -v && ./data-load-prepare.sh && ./compose.sh logs -f frontend && ./data-load.sh  && ./up.sh --force-recreate && ./compose.sh stop frontend"
alias cl="vi ../../../CHANGELOG.md"
alias wf="source ~/.virtualenv/waterfall/bin/activate"
alias af="source ~/.virtualenv/npm-airflow/bin/activate"
alias td="source ~/.virtualenv/tape-d-preprocess/bin/activate"
alias kp="k config use-context azure-user@npm-k8s-prod-1.us-east-1.eksctl.io"
alias kd="k config use-context azure-user@npm-k8s-dev-1.us-east-1.eksctl.io"
alias home="cd ~/Desktop/code"
alias opid="grep -h operationId spec/**/*.rb  | sed 's/ //g' | sed 's/operationId//' | sort | uniq -d"
alias kv="k get pods --all-namespaces | grep venus | grep api | head -1 | sed 's/api.*$//'| xargs -t -I %  kubectl exec -it deploy/api -n % -- bash"
alias ka="k get pods --all-namespaces | grep ape | grep api | head -1 | sed 's/api.*$//'| xargs -t -I %  kubectl exec -it deploy/api -n % -- bash"
alias km="k get pods --all-namespaces | grep mtm | grep api | head -1 | sed 's/api.*$//'| xargs -t -I %  kubectl exec -it deploy/api -n % -- bash"
alias kpr="k get pods --all-namespaces | grep pric | grep api | head -1 | sed 's/api.*$//'| xargs -t -I %  kubectl exec -it deploy/api -n % -- bash"
alias tt='cat .env.test | sed "s/543[0-9]/5433/" | tee .env.test'
alias be="tt && bundle exec "

source <(kubectl completion zsh)
# Set the kubectl completion code for zsh[1] to autoload on startup
kubectl completion zsh > "${fpath[1]}/_kubectl"
alias kn=kubens
alias kc=kubectx
