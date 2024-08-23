#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# added by me

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias ls='ls --color=auto --group-directories-first'
alias cls='clear'
alias clls='clear; ls'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias haha='du -h -d 1 | sort -h'
#alias pwd='carsay $PWD'
#alias nanul='nano'
alias naude='node'
alias nauuuuuuuuuuude='export NODE_OPTIONS=--experimental-vm-modules'
alias tree='tree -C --dirsfirst'
alias please='sudo'
alias histoff='set +o history'
alias histon='set -o history'

export PATH=$PATH:~/mexec

function show_git_branch() {
	branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
	if [ $(echo $branch | wc -w) -gt 0 ]
	then
		echo "($branch)"
		#printf "\033[01;91m($branch)\033[00m"
	fi
}

USER_COLOR="\033[01;38;2;153;102;255m"
PATH_COLOR="\033[01;38;2;127;179;213m"
export PS1="\[$USER_COLOR\]\u@\h\[\033[00m\]:\[$PATH_COLOR\]\w\[\033[01;91m\]\$(show_git_branch)\[\033[00m\]\$ "

# to avoid history duplication
export HISTCONTROL=ignoreboth:erasedups
#export HISTCONTROL=ignoreboth

export LWJGL_LIBS=\
$HOME/javalibs/lwjgl/lwjgl.jar:$HOME/javalibs/lwjgl/lwjgl-natives-linux.jar:\
$HOME/javalibs/lwjgl/lwjgl-opengl.jar:$HOME/javalibs/lwjgl/lwjgl-opengl-natives-linux.jar:\
$HOME/javalibs/lwjgl/lwjgl-glfw.jar:$HOME/javalibs/lwjgl/lwjgl-glfw-natives-linux.jar:\
$HOME/javalibs/lwjgl/joml-1.10.7.jar:\
$HOME/javalibs/lwjgl/lwjgl-stb.jar:$HOME/javalibs/lwjgl/lwjgl-stb-natives-linux.jar:\
$HOME/javalibs/lwjgl/lwjgl-assimp.jar:$HOME/javalibs/lwjgl/lwjgl-assimp-natives-linux.jar:\
$HOME/javalibs/imgui/imgui-binding-1.86.11.jar:$HOME/javalibs/imgui/imgui-lwjgl3-1.86.11.jar:\
$HOME/javalibs/lwjgl/lwjgl-openal.jar:$HOME/javalibs/lwjgl/lwjgl-openal-natives-linux.jar
