if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux PATH $HOME/.cargo/bin $PATH

# Helpful stuff
alias c="clear"
alias l="ls"
alias g="git"
alias gpf="git push --force-with-lease"
alias gp="git push"
alias gco="git checkout"
alias tf="terraform"

function cfile
    cat $argv | pbcopy
end


# Empty fish mode prompt
function fish_mode_prompt
end

# Empty welcome message
function fish_greeting
end

# Minimal unicode arrow fish prompt
function fish_prompt
    echo -n -s "❯❯❯ "
end


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/anaconda3/bin/conda
    eval /opt/homebrew/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<
