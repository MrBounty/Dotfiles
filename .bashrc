# ~/.bashrc
clear && myfetch -c 8 -C " █"
eval "$(starship init bash)"
[[ $- != *i* ]] && return

alias Settings="cd ~/.config && nvim"
alias untar="tar -xf"
alias phone="scrcpy --max-fps=60 --no-audio --keyboard=uhid --mouse=uhid"

# For scrcpy
export SDL_VIDEODRIVER=wayland
