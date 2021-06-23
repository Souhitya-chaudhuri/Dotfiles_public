# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt inc_append_history                                       # save commands are added to the history immediately, otherwise only when shell exits.

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey '^[[3~' delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# Theming section
autoload -U compinit colors zcalc
compinit -d
colors
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s%l
zstyle ':completion:*' rehash true                              # automatically find new executables in path
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s%l
zstyle ':completion:*' cache-path ~/.config/zsh/cache


zstyle :compinstall filename '/home/souhitya/.config/zsh/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL="alacritty"
export BROWSER="firefox"
export FILE="vifm"
export READER="zathura"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#alias
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"

#PLUGINS

source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}


export PATH="$HOME/.emacs.d/bin:$HOME/bin:$PATH"

#### PROMPTS ####

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

source ~/.config/zsh/zsh-git-prompt/zshrc.sh

# autoload -Uz vcs_info
# zstyle ':vcs_info:*' check-for-changes true
# precmd() { vcs_info }
# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

#######################------to update the prompt on every enter put ' instead of "

# enable substitution for prompt
setopt prompt_subst
# PROMPT='%(!.%{$fg[red]%}[%n@%m %1~]%{$reset_color%}# .%{$fg[green]%}[%n@%m %1~]%{$reset_color%}$ '
# Maia prompt
NEWLINE=$'\n'
PROMPT='[%B%F{178}%n%f%b%B%F{red}@%f%b%F{42}%m%f] $(git_super_status) ${NEWLINE} %B%{$fg[cyan]%}%(4~|%-1~/.../%2~|%~)%u%b >%{$fg[cyan]%}>%B%(?.%{$fg[cyan]%}.%{$fg[red]%})>%{$reset_color%}%b '
# RPROMPT='%{$fg[red]%} %(?..[%?])'
# RPROMPT='%(?.%{$fg[green]%}✓ %{$reset_color%}.%{$fg[red]%}✗ %{$reset_color%}) %B%F{179}[%D]%f%b '


# autoload -Uz promptinit
# promptinit
# prompt elite2
# prompt clint
# prompt adam2
# prompt suse
# prompt zefram



xset r rate 300 50

# neofetch | lolcat
# neofetch
# colorscript -e elfman | lolcat
# cal -3

