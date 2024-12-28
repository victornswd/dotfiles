if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin
devbox global shellenv --init-hook | source
mise activate fish | source

set -x GOPATH (go env GOPATH)
set -x PATH $PATH (go env GOPATH)/bin

set LESS -Rx4

starship init fish | source
zoxide init fish | source

alias n "env TERM=wezterm nvim"
alias nnn "cd ~/Documents/dev/nvim && env TERM=wezterm nvim"

alias cd z
alias cp xcp
alias cat bat
alias ls "eza --icons=always"
alias la "eza --icons=always -la"
alias ll "eza --icons=always -l"

alias devbox-clean "devbox run -- nix store gc --extra-experimental-features nix-command"
