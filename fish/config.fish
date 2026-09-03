if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux PATH $HOME/.cargo/bin $PATH

# Helpful stuff
alias vim="nvim"
alias vi="nvim"
alias c="clear"
alias l="ls"
alias g="git"
alias gpf="git push --force-with-lease"
alias gp="git push"
alias gco="git checkout"
alias tf="terraform"
alias py="python3"

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

for var in CONDA_DEFAULT_ENV CONDA_EXE CONDA_PREFIX CONDA_PROMPT_MODIFIER CONDA_PYTHON_EXE CONDA_SHLVL _CE_CONDA _CE_M CC CXX CFLAGS CPPFLAGS LDFLAGS AR AS LD NM RANLIB STRIP OBJDUMP OBJCOPY
    set -e $var
end

set -l clean_path
for entry in $PATH
    if not string match -qr '^/opt/homebrew/anaconda3($|/)' -- $entry
        set clean_path $clean_path $entry
    end
end
set -gx PATH $clean_path

source /Users/l/.docker/init-fish.sh || true # Added by Docker Desktop
export VCPKG_ROOT="$HOME/vcpkg"

alias dnvpn='/Users/l/Projects/iris/nostr-vpn/target/debug/nvpn'
