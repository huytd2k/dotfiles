#!/bin/bash

install_brew() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

install_alacritty() {
	cargo install alacritty
}

install_tmux_ubuntu() {
	sudo apt install tmux
}

install_tmux_macos() {
	brew install tmux
}

install_nvim_mac() {
	brew install nvim
}

install_nvim_ubuntu() {
	sudo apt install neovim
}

handle_macos_env() {
	echo Install brew
	install_brew
}

handle_linux_env() {
	sudo apt update && sudo apt upgrade
	sudo apt install curl
	install_rust
	install_alacritty
	install_tmux_ubuntu
	install_nvim_ubuntu
}

if [[ "$OSTYPE" == "darwin"* ]]; then 
	handle_macos_env
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	handle_linux_env
fi
