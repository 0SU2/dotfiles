#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias t='tmux'
alias esp-idf='. $HOME/clones/esp-idf/export.sh'
alias nvim='$HOME/.local/share/AppImage/nvim-linux-x86_64.appimage'

PS1='[\u@\h \W]\$ '

export QML_IMPORT_PATH=$HOME/Desktop/RiveQtQuickPlugin/build/binary
export OpenCV=$HOME/Desktop/OpenCV/build
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PUB_CACHE=$HOME/.local/share/flutter-sdk/.pub-cache

export PATH=$PATH:$HOME/.local/share/go/bin:$HOME/.local/share/node-v22.19.0-linux-x64/bin:$HOME/.local/share/flutter-sdk/bin
