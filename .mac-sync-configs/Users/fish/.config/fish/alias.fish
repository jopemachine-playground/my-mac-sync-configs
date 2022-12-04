# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# --------------------------------------Aliases---------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

# easier navigation
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# shortcuts
alias chmox='chmod -x'
alias ag='ag -f --hidden'
alias fs="stat -f \"%z bytes\""
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# overwrite default command
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cat='bat --style=plain --paging=never'

# overwrite ls command
alias l='exa -l'
alias la='exa -a'
alias ls='exa -la'
alias lt='exa --tree --level=2'
alias k='exa --tree --level=2'

# python
alias python='python3'
alias pip='pip3'

# vim
alias v='vim'
alias vi='vim'
alias vim='lvim'
alias nvim='lvim'

# misc
alias reload='exec fish'

# case-cli
alias camel='case-cli -c=camel'
alias title='case-cli -c=title'

# lazygit
alias lg='lazygit'

# npm
alias npr='npm run'

# ranger
alias ra='ranger'

# ssh
# See https://github.com/alacritty/alacritty/issues/1208
alias ssh='TERM=xterm-256color /usr/bin/ssh'

# git
alias g='git'
alias gp='git push'
alias ga='git add'
alias gcb='git checkout -b'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias glo='git log --oneline --decorate'
alias grb='git rebase'
alias grh='git reset'
alias gss='git stash show'
alias grh1='git reset --hard HEAD~1'

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------Functions---------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

# function clone
#   git clone --depth=1 $1
#   cd $(basename ${1%.*})
# end

# function md
# 	mkdir -p "$@" && cd "$@"
# end

## vim-obsession setting
function vim
  if set -q argv[1]
    eval lvim $argv[1..-1]
  else if test -f Session.vim
    echo "Open Existing Session.."
    eval lvim -S
  else
    echo "Record New Session.."
    eval lvim -c Obsession
  end
end

## github
function github
  open "https://github.com/search?q=$argv[1..-1]"
end

## papago
function papago
  open "https://papago.naver.com/?st=$argv[1..-1]"
end
