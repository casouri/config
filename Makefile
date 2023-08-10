clean:
	find . -name .DS_Store | xargs rm

path:
	sudo stow -t / path
