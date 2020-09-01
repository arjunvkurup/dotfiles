# File Name           :        .bash_aliases
# Location            :         ~/
# Author              :         macr0she11(Arjun Vijayanatha Kurup)
# Authored Date       :         2020/05/20
# Last Modified Date  :         2020/09/01

# bash custom
alias ls='ls -la'
alias rmf='rm -rf'

# package management custom
alias update='sudo apt update && sudo apt list --upgradable'
alias upgrade='sudo apt update && sudo apt -y upgrade'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias purge='sudo apt purge'
alias search='sudo apt search'

# nodejs custom commands
alias nstart='npm start'
alias ninstall='npm install'
alias ndev='npm install --save-dev'
alias nsave='npm install --save'
alias ntest='npm test'
alias nbuild='npm run build'
alias nrun='npm run'
alias yadd='yarn add'
alias ydev='yarn add --dev'
alias ystart='yarn start'
alias ybuild='yarn build'
alias ytest='yarn test'

# django custom commands
alias drun='python manage.py runserver'
alias dvenv='python -m venv'
alias dmake='python manage.py makemigrations'
alias dmigrate='python manage.py migrate'

# vi to vim
alias vi='vim'

# conda custom commands
## conda general environment commands
alias cactive='conda activate'
alias cdeactive='conda deactivate'
alias jup='jupyter notebook'
alias lab='jupyter lab'
alias createreqt='touch requirements.txt && pip freeze > requirements.txt'
alias installreq='pip install -r requirements.txt'

## conda custom environment commands 
alias ccreate='conda create --name env python'
alias cact='conda activate env *'
alias clist='conda list --name env'
alias cfreeze='conda list --export requirements.txt'
