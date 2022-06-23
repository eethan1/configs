#! /bin/bash
_wins=$(echo "$1" | sed -e 's/,/\n/g')
echo "command is '$2'"
for _win in $_wins; do
    for _pane in $(tmux list-panes -s -F '#D' -f "#{==:${_win},#I}"); do
        echo "send to $_pane in window $_win"
        tmux send-keys -t "${_pane}" "C-Right" "C-w" "$2" "Enter"
    done
done
