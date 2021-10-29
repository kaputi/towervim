#!/bin/sh

TVIM_PACK_DIR="$HOME/.local/share/towervim/site/pack"
TVIM_RUNTIME_DIR="$HOME/.config/towervim"

function msg() {
	local text="$1"
	local div_width="80"
	printf "%${div_width}s\n" ' ' | tr ' ' -
	printf "%s\n" "$text"
}

function make_executable() {

	mkdir -p $HOME/.local/bin

	cat >$HOME/.local/bin/tvim <<ENDOFFILE
#!/bin/sh

export TVIM_RUNTIME_DIR="\${TVIM_CONFIG_DIR:-\${HOME}/.config/towervim}"

exec nvim -u "\$TVIM_RUNTIME_DIR/init.lua" "\$@"

ENDOFFILE

	chmod a+x $HOME/.local/bin/tvim
}

function backup_config() {

	mv $TVIM_RUNTIME_DIR $HOME/towervim.bac
}

function clone_config() {
	if ! git clone \
		--depth 1 "https://github.com/kaputi/towervim.git" "$TVIM_RUNTIME_DIR"; then
		echo "Failed to clone repository. Installation failed."
		exit 1
	fi
}

function install_packer() {
	if [ -e "$TVIM_PACK_DIR/packer/start/packer.nvim" ]; then
		msg "Packer already installed"
	else
		if ! git clone --depth 1 "https://github.com/wbthomason/packer.nvim" \
			"$TVIM_PACK_DIR/packer/start/packer.nvim"; then
			msg "Failed to clone Packer. Installation failed."
			exit 1
		fi
	fi
}

function print_logo() {
	cat <<'EOF'
==========================================================================================================
        /$$   /$$/$$$$$$$$/$$$$$$$$/$$$$$$$         /$$$$$$  /$$$$$$ /$$      /$$      /$$
       | $$  /$$| $$_____| $$_____| $$__  $$       /$$__  $$/$$__  $| $$     | $$$    /$$$
       | $$ /$$/| $$     | $$     | $$  \ $$      | $$  \__| $$  \ $| $$     | $$$$  /$$$$
       | $$$$$/ | $$$$$  | $$$$$  | $$$$$$$/      | $$     | $$$$$$$| $$     | $$ $$/$$ $$
       | $$  $$ | $$__/  | $$__/  | $$____/       | $$     | $$__  $| $$     | $$  $$$| $$
       | $$\  $$| $$     | $$     | $$            | $$    $| $$  | $| $$     | $$\  $ | $$
       | $$ \  $| $$$$$$$| $$$$$$$| $$            |  $$$$$$| $$  | $| $$$$$$$| $$ \/  | $$
       |__/  \__|________|________|__/             \______/|__/  |__|________|__/     |__/



       /$$$$$$ /$$      /$$             /$$$$$$$$/$$   /$$/$$$$$$/$$   /$$ /$$$$$$  /$$$$$$
      /$$__  $| $$     | $$            |__  $$__| $$  | $|_  $$_| $$$ | $$/$$__  $$/$$__  $$
     | $$  \ $| $$     | $$               | $$  | $$  | $$ | $$ | $$$$| $| $$  \__| $$  \__/
     | $$$$$$$| $$     | $$               | $$  | $$$$$$$$ | $$ | $$ $$ $| $$ /$$$|  $$$$$$
     | $$__  $| $$     | $$               | $$  | $$__  $$ | $$ | $$  $$$| $$|_  $$\____  $$
     | $$  | $| $$     | $$               | $$  | $$  | $$ | $$ | $$\  $$| $$  \ $$/$$  \ $$
     | $$  | $| $$$$$$$| $$$$$$$$         | $$  | $$  | $$/$$$$$| $$ \  $|  $$$$$$|  $$$$$$/
     |__/  |__|________|________/         |__/  |__/  |__|______|__/  \__/\______/ \______/



                        /$$$$$$ /$$$$$$$$/$$$$$$$ /$$    /$$/$$$$$$$$
                       /$$__  $| $$_____| $$__  $| $$   | $| $$_____/
                      | $$  \__| $$     | $$  \ $| $$   | $| $$
                      |  $$$$$$| $$$$$  | $$$$$$$|  $$ / $$| $$$$$
                       \____  $| $$__/  | $$__  $$\  $$ $$/| $$__/
                       /$$  \ $| $$     | $$  \ $$ \  $$$/ | $$
                      |  $$$$$$| $$$$$$$| $$  | $$  \  $/  | $$$$$$$$
                       \______/|________|__/  |__/   \_/   |________/



             /$$$$$$$$/$$   /$$/$$$$$$$$       /$$$$$$$ /$$$$$$$$ /$$$$$$ /$$      /$$
            |__  $$__| $$  | $| $$_____/      | $$__  $| $$_____//$$__  $| $$$    /$$$
               | $$  | $$  | $| $$            | $$  \ $| $$     | $$  \ $| $$$$  /$$$$
               | $$  | $$$$$$$| $$$$$         | $$$$$$$| $$$$$  | $$$$$$$| $$ $$/$$ $$
               | $$  | $$__  $| $$__/         | $$__  $| $$__/  | $$__  $| $$  $$$| $$
               | $$  | $$  | $| $$            | $$  \ $| $$     | $$  | $| $$\  $ | $$
               | $$  | $$  | $| $$$$$$$$      | $$$$$$$| $$$$$$$| $$  | $| $$ \/  | $$
               |__/  |__/  |__|________/      |_______/|________|__/  |__|__/     |__/

==========================================================================================================
EOF
}

function install_towervim() {
	print_logo

	msg "Backing old up config"
	backup_config

	msg "Cloning Towervim configuration"
	clone_config

	msg "Installing packer"
	install_packer

	make_executable

	echo "Preparing Packer setup"
	"$HOME/.local/bin/tvim" --headless \
		-c 'autocmd User PackerComplete quitall' \
		-c 'PackerSync'
	msg "Thank you for installing !!"
	echo "make sure ~/.local/bin is in your path and you can run towervim with tvim command"
}

install_towervim
