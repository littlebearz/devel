# Add this to ~/.config/fish/config.fish
function __fish_prev_command
    history | head -n 1
end
alias '!!' '__fish_prev_command'