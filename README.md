.hogar
======

dot file configurations

Installation
------------
(based on sorin's instructions)

  1. Clone the repository:

        git clone https://github.com/davoclavo/.hogar.git ~/.hogar

  2. Initialize the submodules:

        cd ~/.hogar && git submodule update --init --recursive

  3. Link Zsh configurations by linking them:

		ln -s ~/.hogar/oh-my-zsh ~/.oh-my-zsh
		for rcfile in ~/.hogar/z{shenv,shrc,login,logout}; do
		  	ln -s $rcfile ~/.$rcfile:t
		done

  4. Set Zsh as your default shell:

        chsh -s /bin/zsh