.hogar
======

dot file configurations

Installation
------------
(based on sorin's instructions)

  1. Clone the repository and submodules:
        git clone --recursive https://github.com/davoclavo/.hogar.git ~/.hogar

  2. Link Zsh configurations by linking them:

    ln -s ~/.hogar/prezto ~/.prezto
    for rcfile in ~/.hogar/z{shenv,shrc,login,logout}; do
        ln -s $rcfile ~/.$rcfile:t
    done

  3. Set Zsh as your default shell:

        chsh -s /bin/zsh

  4. Update submodules if needed:

        cd ~/.hogar && git submodule update --init --recursive
