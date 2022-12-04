set fish_greeting ""
fish_vi_key_bindings
source ~/.config/fish/alias.fish

# https://unix.stackexchange.com/questions/198794/where-does-the-term-environment-variable-default-get-set
# set -gx TERM screen-256color-bce

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# -----------------------------------Env Path-----------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
fish_add_path ~/Library/Android/sdk
fish_add_path ~/.local/bin
fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin
fish_add_path /opt/homebrew/opt/nvm/

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ---------------------------------Env Variables--------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
set -gx GOPATH ~/go
set -gx ANDROID_HOME ~/Library/Android/sdk
set -gx ANDROID_SDK_ROOT ~/Library/Android/sdk
set -gx ANDROID_AVD_HOME ~/.android/avd
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-17.jdk/Contents/Home/

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ----------------------------------Third Party---------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

## PatrickF1/fzf.fish
set fzf_preview_dir_cmd exa --all --color=always
set fzf_fd_opts --type=directory -H -d=3 --follow --exclude=.git --exclude=node_modules

## starship
starship init fish | source

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
