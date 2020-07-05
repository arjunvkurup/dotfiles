# File Name           :        .bash_aliases
# Location            :         ~/
# Author              :         macr0she11(Arjun V)
# Authored Date       :         2020/05/20
# Last Modified Date  :         2020/07/05

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



