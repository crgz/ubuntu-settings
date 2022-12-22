all: setup

setup:
	cd $$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2) ;\
	$(MAKE) setup

github_ssh_keys: ${HOME}/.ssh/id_rsa.pub
	cat ${HOME}/.ssh/id_rsa.pub | xclip -sel clip

${HOME}/.ssh/id_rsa.pub:
	ssh-keygen -o -t rsa -C "conrado.rodriguez@zalando.de"

committer:
	@git config --local user.email "conrado.rgz@gmail.com" && git config --local user.name "Conrado Rodriguez"