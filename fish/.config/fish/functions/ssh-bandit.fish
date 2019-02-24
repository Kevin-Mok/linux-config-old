function ssh-bandit
	sshpass -f p/$argv[1] ssh -p 2220 bandit$argv[1]@bandit.labs.overthewire.org
end
