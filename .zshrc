#! /bin/zsh
SHELL=$(which zsh || echo '/bin/zsh')

# GPG tty.
export GPG_TTY="${TTY:-$(tty)}"

#env
export VISUAL=nvim;
export EDITOR=nvim;
export SUDO_PROMPT="passwd: "

setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# enable completion features
autoload -Uz compinit
compinit -i

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.config/zsh/.zcompcache"

# Define completers
zstyle ':completion:*' completer _extensions _complete _approximate

zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Only display some tags for the command cd
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories

# History configurations
HISTFILE="$HOME/.cache/.zsh_history"
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# source plugins
source $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source /usr/share/fzf/key-bindings.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#484E5B,underline"

# tty
if [ "$TERM" = "linux" ] ; then
    echo -en "\e]P0232323"
fi

# custom function
toppy() {
    history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n 21
}

cd() {
	builtin cd "$@" && command ls --group-directories-first --color=auto -F
}


###############################
# ****** ALIAS SECTION ****** #
###############################

# For full list of aliases: Run 'alias'

PRIV="$(command -v doas || command -v sudo)"

alias c="clear"
alias q="exit"
alias trim_all="${PRIV} fstrim -va"
alias nanosu="${PRIV} nano"
alias nvimsu="${PRIV} nvim"
alias cleanram="${PRIV} sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"

# Regenerate grub
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Search and install packages
alias pacin="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
# Search and install packages grom aur
alias paruin="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro  paru -S"
# Search and remove packages
alias pacrem="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
# Search btw installed packages
alias pac="pacman -Q | fzf"
# Check aur comments
alias parucom="paru -Gc"
# Check aur updates
alias parupd="paru -Qua"
#Check pacman updates
alias pacupd="pacman -Qu"
# Check pkgbuild
alias parucheck="paru -Gp"
# Clean Orphan packages
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'
alias psmem="sudo ps_mem | grep -E 'Program|awesome|picom|zsh|alacritty|---'"
alias git-rm="git ls-files --deleted -z | xargs -0 git rm"

# Fachafetch
alias rx="~/.scripts/rxfetch"

# neovim {{{
# alias nvim="lvim" # lunarvim.org
# alias v="nvim"
alias v="lvim"
# compdef v="nvim"
compdef v="vim"
# alias vim="nvim"
alias vim="lvim"
# compdef vim="nvim"
compdef lvim="vim"
# }}}

# Fancy scripts
alias block="~/.scripts/zsh/cl"
alias color="~/.scripts/zsh/block ~/.scripts/zsh/blockify_conf"
alias rain="~/.scripts/zsh/rain"
alias topcmd="~/.scripts/zsh/tp"

# Exa Settings
#alias ls="exa -lgh --icons --group-directories-first"
#alias la="exa -lgha --icons --group-directories-first"
alias ls="exa --icons --group-directories-first --color=auto"
alias la="exa -a --icons --group-directories-first --color=auto"

# Color-Toys Aliases
alias bloks="${HOME}/.color-toys/bloks"
alias copyhash="${HOME}/.scripts/copyhash.sh"
alias makemusic="pactl load-module module-remap-sink sink_name=MUSIC"
alias installed="grep -i installed /var/log/pacman.log"
alias trek="trekscii $(tput lines) $(tput cols)"

# init starship
eval "$(starship init zsh)"
# setup starship custom prompt
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Path to use local/bin
export PATH="${PATH}:${HOME}/.local/bin"
export PATH=$PATH:/home/linuxmobile/.spicetify
