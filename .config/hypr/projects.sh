
#!/bin/bash
PROJECTS_DIR="$HOME/Projects"

menu() {
    find "$PROJECTS_DIR" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
        basename=$(basename "$dir")
        echo "$basename"
    done
}

main() {
    choice=$(menu | wofi -c ~/.config/wofi/projects -s ~/.config/wofi/style-projects.css --show dmenu --prompt "Select Project:" -n)
    selected_dir=$(echo "$choice" | cut -d':' -f2-)
    [ -d "$PROJECTS_DIR/$selected_dir" ] && kitty -d "$PROJECTS_DIR/$selected_dir" nvim
}
main
