#
# ~/.bashrc
#
# export _JAVA_AWT_WM_NONREPARENTING=1
# source
source /usr/share/doc/pkgfile/command-not-found.bash
# env, github token etc.
if [ -f ~/.env ]; then
    export $(cat ~/.env | xargs)
fi


# zoxide
eval "$(zoxide init bash)"

# ocaml 
eval $(opam env --switch=default)

#autocd 
shopt -s autocd

# file-completion
# [[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# variable exports 
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nvim"

# Alias
alias wbcam='mpv av://v4l2:/dev/video0 --profile=low-latency --untimed'
alias ls='ls -F --color=auto'
alias pS='sudo pacman -S'
alias ppS='sudo pacman -Syu'
alias cdd='cd ..'
alias cdp='cd $_'
alias vim='nvim'
alias cal='cal -m --week'
alias Knapper='/home/spagok/docs/laptop/xevKeypress'
alias ghidra='/opt/ghidra/ghidra_11.1.2_PUBLIC/ghidraRun'
alias ghidra='/opt/ghidra/ghidra_*/ghidraRun'
alias baS='source $HOME/.bashrc'
alias bat='acpi'
alias obsidian='./apps/obsidian'
alias cyril='pqiv pics/misc/keyboard.png --background-pattern=WHITE & disown'
alias dwn='& disown'
alias pomotroid='pomotroid --disable-gpu-sandbox & disown'
# PS1='[\u@\h \W]\$ '
PS1="[\[\033[34m\]\u\[\033[m\]@\[\033[34m\]\h:\[\033[36;1m\]\w\[\033[m\]]\$ "
#PS1="\e[0;36m\][\[\e[0;34m\]\u\[\e[0;31m\]@\[\e[0;34m\]\h\[\e[0m\] \W/\e[0;36m]\e[0m\$ "


export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts/bin:$PATH"
export PATH="$HOME/dev/codex/exercism/bin:$PATH"


# Enables autocompletion of options for bashfuscator
# eval "$(/home/spagok/.local/bin/register-python-argcomplete bashfuscator)"
export GEM_HOME=~/.ruby/
export PATH="$PATH:~/.ruby/bin"
export PATH="$PATH:~/.dotnet/tools"

pfetch
