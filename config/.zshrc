# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

. `brew --prefix`/etc/profile.d/z.sh

export ZSH=$HOME/.oh-my-zsh

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm node_version background_jobs history)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"
# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

plugins=(
    git
    node
    npm
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)

# reloading completion
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# NVM #
###################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python 3.4 #
###################
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

# Fastlane #
###################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Rbenv #
###################
eval "$(rbenv init -)"

# AVN #
###################
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Android Studio #
##################
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export ANDROID_SDK=/Users/rauliyohmc/Library/Andrdoid/sdk
export ANDROID_NDK=/Users/rauliyohmc/android-ndk/android-ndk-r10e
