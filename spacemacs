;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     vimscript
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; better-defaults
     emacs-lisp
     markdown
     auto-completion
     syntax-checking

     javascript
     python
     ruby
     ;; (ruby :variables ruby-enable-enh-ruby-mode t)
ruby-on-rails
     elixir
     erlang
     elm
     (elm :variables
          elm-format-command "elm-format-0.17"
          elm-sort-imports-on-save t)
     haskell
     scala
     (scala :variables
            scala-auto-start-nsime t
            ;; scala-enable-eldoc t ;; Slows down the editor too much
            scala-auto-insert-asterisk-in-comments t)
     git
     github
     osx
     html
     org
     colors
     ;; themes-megapack
     ;; perspectives
     yaml

     react

     dash
     rcirc
     search-engine

     ;; Recommended by TheBB
     ibuffer
     smex
     semantic
     ;; unimpaired
     fasd
     ;; (shell :variables shell-default-shell 'eshell)
     ranger
     spotify

     c-c++
     docker

     ;; eyebrowse
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom
     ;;        shell-default-term-shell "zsh")
     ;; spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages
   '(
     editorconfig
     ;; symon
     restclient
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents bookmarks projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.3
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."

  ;; Escape mode with "kj"
  (setq evil-escape-key-sequence "kj")
  ;; Let me press the escape binding a little bit slower
  (setq evil-escape-delay 0.2)
  ;; Perspectives per project
  ;; https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Bwindow-management/perspectives#per-project-custom-perpsective
  ;; (setq-default dotspacemacs-configuration-layers '(
  ;;   (perspectives :variables
  ;;                 perspective-enable-persp-projectile t)))
  ;;(evil-leader/set-key
  ;;  "wf" 'toggle-frame-fullscreen)
  ;; Ruby version management for the Ruby layer
  ;; (setq-default ruby-version-manager 'rvm)
  ;; (setq rspec-spec-command "dev run ifeweb spec")

  ;; Flycheck check on save
  (setq flycheck-check-syntax-automatically '(mode-enabled save))

  ;; React layer
  (setq-default
   js-indent-level 2
   ;; js2-mode
   js2-basic-offset 2
   js2-strict-missing-semi-warning nil
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  ;; Set fixed evil indentation shift width, should be set by the major-mode
  ;; OPEN ISSUE:
  ;; https://github.com/syl20bnr/spacemacs/issues/3203
  (setq evil-shift-width 2)

  ;; Display magit status buffer in fullscreen
  (setq-default git-magit-status-fullscreen t)

  (if (executable-find "trash")
      (defun system-move-file-to-trash (file)
        "Use `trash' to move FILE to the system trash.
Can be installed with `brew install trash', or `brew install osxutils`''."
        (call-process (executable-find "trash") nil 0 nil file))
    ;; regular move to trash directory
    (setq trash-directory "~/.Trash/emacs"))

  ;; scalastyle
  ;; (setq-default flycheck-scalastylerc "/usr/local/etc/scalastyle_config.xml")
  (setq-default flycheck-scalastylerc "~/ifttt/ottter/services/.idea/scalastyle_config.xml")

  ;; (setq debug-on-error t)
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  ;; spacemacs is symlinked, so follow the link to the original file
  (setq vc-follow-symlinks t)
  ;; (setq mac-system-move-file-to-trash-use-finder nil)

  ;;(add-hook 'alchemist-mode-hook 'company-mode)

  ;; eslint
  (add-hook 'js2-mode-hook
            (defun my-js2-mode-setup ()
              (flycheck-mode t)
              (when (executable-find "eslint")
                (flycheck-select-checker 'javascript-eslint))))

  ;; highlight column 80
  (turn-on-fci-mode)

  ;; (menu-bar-mode)

  ;; Show line numbers by default
  (global-linum-mode)

  ;; Autocompletion
  (global-company-mode)

  (require 'elixir-mode)
  (require 'alchemist)

  ;; Org config
  ;; (with-eval-after-load 'org
  ;;   #+STARTUP hidestars indent
  ;;   )

  ;; Disable "smart" indent for elm-mode
  (add-hook 'elm-mode-hook #'turn-off-elm-indent)

  ;; Relative line numbers
  ;; https://github.com/syl20bnr/spacemacs/issues/2161
  ;; (with-eval-after-load 'linum
  ;;   (linum-relative-toggle))

  ;; React layer
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

  ;; Enable CPU and RAM toolbar
  ;; (symon-mode)

  ;; Open iedit=mode
  (define-key global-map (kbd "C-;") 'evil-iedit-state/iedit-mode)
  ;; Open org agenda
  ;; (define-key global-map (kbd "C-\"") 'org-cycle-agenda-files)
  ;; Toggle term using C-'
  (define-key global-map (kbd "C-'") 'shell-pop-term)
  ;; (define-key global-map (kbd "C-h") 'evil-window-left)
  (global-unset-key (kbd "C-h"))
  ;; Toggle the smex with SPC : or backspace
  (define-key evil-motion-state-map (kbd "<backspace>") 'smex)

  ;; Editor Config is conf-mode by default
  (add-to-list 'auto-mode-alist '(".editorconfig" . conf-mode))

  ;; Make evil-mode up/down operate in screen lines instead of logical lines
  (define-key evil-motion-state-map "j" 'evil-next-visual-line)
  (define-key evil-motion-state-map "k" 'evil-previous-visual-line)

  ;; Also in visual mode
  (define-key evil-visual-state-map "j" 'evil-next-visual-line)
  (define-key evil-visual-state-map "k" 'evil-previous-visual-line)

  ;; NOT WORKING
  ;; http://stackoverflow.com/questions/8473131/set-the-evil-shift-width-to-the-buffer-local-indentation-in-emacs
  ;; https://github.com/syl20bnr/spacemacs/issues/3203
  ;; C->> `evil-shift-width'
  ;; (add-hook 'enh-ruby-mode
  ;;           '(lambda () (setq evil-shift-width enh-ruby-indent-level)))

  ;; remove trailing whitespace when saving
  ;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; from http://www.lunaryorn.com/2015/04/29/the-power-of-display-buffer-alist.html
  (add-to-list 'display-buffer-alist
               `(,(rx bos (or
                           "*rspec-compilation*"
                           "*projectile-rails-compilation*"
                           "*Bundler*"
                           "*alchemist test report*"
                           "*alchemist macroexpand*"
                           "*alchemist mix*"
                           "*elixir help*"
                           "*alchemist help*"
                           "*mix*")
                      eos)
                 (display-buffer-reuse-window
                  display-buffer-in-side-window)
                 (reusable-frames . visible)
                 (side            . bottom)
                 (window-height   . 0.4)))
  (defengine amazon
    "http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=%s")

  (defengine duckduckgo
    "https://duckduckgo.com/?q=%s"
    :keybinding "d")

  (defengine github
    "https://github.com/search?ref=simplesearch&q=%s")

  (defengine google
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
    :keybinding "g")

  (defengine google-images
    "http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")

  (defengine google-maps
    "http://maps.google.com/maps?q=%s"
    :docstring "Mappin' it up.")

  (defengine project-gutenberg
    "http://www.gutenberg.org/ebooks/search/?query=%s")

  (defengine rfcs
    "http://pretty-rfc.herokuapp.com/search?q=%s")

  (defengine stack-overflow
    "https://stackoverflow.com/search?q=%s")

  (defengine twitter
    "https://twitter.com/search?q=%s")

  (defengine wikipedia
    "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
    :keybinding "w"
    :docstring "Searchin' the wikis.")

  (defengine wiktionary
    "https://www.wikipedia.org/search-redirect.php?family=wiktionary&language=en&go=Go&search=%s")

  (defengine wolfram-alpha
    "http://www.wolframalpha.com/input/?i=%s")

  (defengine youtube
    "http://www.youtube.com/results?aq=f&oq=&search_query=%s")
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-pull-arguments nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
