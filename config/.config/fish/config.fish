if status is-interactive
    set -g fish_greeting

    alias ls="eza --icons=auto"
    alias ll="eza -lah --icons"
    alias la="eza -a --icons"

    alias ..="cd .."
    alias ...="cd ../.."
    
    alias hx="helix"
    alias please="sudo"

end

starship init fish | source
if status is-login
    set -gx QT_IM_MODULE fcitx
    set -gx XMODIFIERS @im=fcitx
    set -gx SDL_IM_MODULE fcitx
    set -gx GLFW_IM_MODULE ibus
end




fish_add_path /home/doxl/.spicetify
