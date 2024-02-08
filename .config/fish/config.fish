if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export PNPM_HOME "/Users/wrk/Library/pnpm"
set --export PATH $PNPM_HOME $PATH

set --export PATH $PATH "$(go env GOPATH)/bin"

set LESS -Rx4

eval "$(fnm env --use-on-cd)"

starship init fish | source
