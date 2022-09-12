up:
	vagrant up
	ssh-keygen -f "/home/javanegas/.ssh/known_hosts" -R "[127.0.0.1]:2222"
	# eval `ssh-agent -s` && ./venv/bin/ansible-playbook ./sandboxes.yml
	eval `ssh-agent -s` && ./venv/bin/ansible-playbook ./dot-files/terminal-playbook.yml
down:
	vagrant destroy -f
restart:
	make down && make up
