#! /usr/bin/env bash
scriptDir=$(dirname $(realpath $0))
mkdir -p ~/.tmux/plugins
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sf "$scriptDir/.tmux.conf" ~/.tmux.conf
