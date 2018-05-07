all:
	ansible-playbook envy.yml -Kk

install_deps_fedora:
	sudo dnf install -y ansible python2-psutil

install_deps_macos:
	brew install ansible

update_dconf_dump:
	dconf dump /org/gnome/shell/extensions/ > roles/system/files/extensions.dconf
