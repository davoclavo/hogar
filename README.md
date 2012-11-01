.hogar
======
dot file configurations

Installation
------------
(based on sorin's instructions)

  1. Launch Zsh:

        zsh

  2.  Clone the repository and submodules:

        git clone --recursive https://github.com/davoclavo/.hogar.git ~/.hogar

  3.  Link Zsh configurations:

        setopt EXTENDED_GLOB
        ln -s ~/.hogar/prezto ~/.zprezto
        for rcfile in ~/.zprezto/runcoms/^README.md(.N); do
            ln -s "$rcfile" "~/.${rcfile:t}"
        done

  4.  Set Zsh as your default shell:

        chsh -s /bin/zsh

  5.  Open a new Zsh terminal window or tab.

  6. _To update submodules (later)_

        cd ~/.hogar && git submodule update --init --recursive