# ~/.bashrc
eval "$(starship init bash)"

alias Settings="cd ~/.config && nvim"
alias Phone="scrcpy --max-fps=60 --no-audio --keyboard=uhid --mouse=uhid"
alias Key="cat ~/.ssh/id_rsa.pub"

alias untar="tar -xf"

# For scrcpy
export SDL_VIDEODRIVER=wayland
