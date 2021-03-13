# cd

alias ...='cd ../..'
alias ....='cd ../../..'

# ls

alias l='ls -lhA --color=auto'

# grep

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# clipboard

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# git

alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gau='git add -u .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -v --amend'
alias gco='git checkout'
alias gcp='git cherry-pick -x'
alias gcpnx='git cherry-pick --no-commit -x'
alias gd='git diff'
alias gds='git diff --cached'
alias gdw='git diff --word-diff'
alias gf='git fetch --all --prune'
alias gg='git log --graph --decorate'
alias gga='git log --graph --decorate --all'
alias gl='git pull'
alias glr='git pull --rebase'
alias gm='git merge'
alias go='git log'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias gs='git status -sb'
alias gt='git stash save'
alias gta='git stash apply'
alias gtc='git stash clear'
alias gtd='git stash drop '
alias gtl='git stash list'
alias gtp='git stash pop'
alias gu='git reset HEAD --'
alias gus='git rm --cached --'
alias gw='git whatchanged'
alias gwp='git whatchanged -p'

# servers

alias syd1='ssh syd1.boxdice.net -t "tmux new -A -s bobes"'
alias syd2='ssh syd2.boxdice.net -t "tmux new -A -s bobes"'
alias fra2='ssh fra2.boxdice.net -t "tmux new -A -s bobes"'
alias bdsk='ssh bdsk.boxdice.com -t "tmux new -A -s bobes"'

# tmux sessions
alias t='tmux new -A -s `basename $(pwd) | sed "s/^\.//"`'
alias thub='cd ~/Code/hub; t'
alias tpro='cd ~/Code/all/pro; t'
alias tphp='cd ~/Code/php; t'
alias tdocker='cd ~/Code/docker; t'
alias tdeploy='cd ~/Code/deploy; t'
