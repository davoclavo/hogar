.hogar
======

dot file configurations

Initialize the submodules:

    git submodule update --init --recursive

Init oh-my-zsh
	
	for rcfile in ~/.hogar/oh-my-zsh/templates/z{shenv,shrc,login,logout}; do
  		cp -f $rcfile ~/.$rcfile:t
	done