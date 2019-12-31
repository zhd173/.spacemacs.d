;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(shell-scripts
     systemd
     nginx
     (dap :variables
          dap-enable-mouse-support t)
     rust
     yaml
     ansible
     (chrome :variables chrome-exec-path "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
     (colors :variables
             colors-colorize-identifiers nil
             colors-enable-nyan-cat-progress-bar t
             )
     games
     (typescript :variables
                 typescript-fmt-tool 'tide
                 typescript-linter 'tslint
                 tide-tsserver-executable "/usr/local/bin/tsserver"
                 typescript-backend 'tide
                 typescript-fmt-on-save t)
     imenu-list
     ;; gpu
     html
     react
     json
     better-defaults
     (sql :variables
          sql-capitalize-keywords t
          ;; sql-capitalize-keywords-blacklist '("name" "varchar"),
          )
     helm
     (multiple-cursors :variables
                       multiple-cursors-backend 'evil-mc)
     protobuf
     docker
     (lsp :variables
          lsp-ui-sideline-enable nil
          lsp-ui-doc-enable nil
          )
     dap
     (go :variables
         go-backend 'go-mode
         godoc-at-point-function 'godoc-gogetdoc
         go-use-golangci-lint t
         go-tab-width 4
         ;; run-go-install-on-save t
         go-format-before-save t
         gofmt-command "goimports"
         go-use-test-args "-race -timeout 10s"
         )
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     (javascript :variables javascript-backend 'tern)
     ipython-notebook
     (python :variables
             python-backend 'anaconda
             ;; python-pipenv-activate t
             ;; python-backend 'lsp
             python-formatter 'black
             ;; python-formatter 'yapf
             python-format-on-save t
             python-sort-imports-on-save t
             python-test-runner 'pytest)
     (auto-completion :variables
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-tabnine t
                      auto-completion-enable-snippets-in-popup t
                      ;; spacemacs-default-company-backends '(company-tabnine)
                      )
     emacs-lisp
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t
          org-enable-bootstrap-support t
          org-enable-org-journal-support t
          org-enable-hugo-support t
          org-enable-sticky-header t
          ;; org-enable-trello-support t
          org-journal-encrypt-journal nil
          org-journal-enable-agenda-integration t
          org-projectile-file "~/Documents/orgs/projectile/TODOs.org"
          org-journal-dir "~/Documents/orgs/journal/"
          org-journal-file-format "%Y-%m-%d"
          org-journal-date-prefix "#+TITLE: "
          org-journal-date-format "%A, %B %d %Y"
          org-journal-time-prefix "* "
          org-journal-time-format "")

     git
     (markdown :variables
               markdown-live-preview-engine 'vmd
               markdown-mmm-auto-modes '("c" "c++" "python" "scala" ("elisp" "emacs-lisp")))
     neotree
     ;; (treemacs :variables
     ;;           treemacs-use-follow-mode t
     ;;           )
     emoji
     syntax-checking
     ;; (spell-checking :variables
     ;;                 spell-checking-enable-auto-dictionary t
     ;;                 enable-flyspell-auto-completion t)
     (twitter :variables
              twittering-use-master-password t)
     parinfer
     ;; spotify
     dash
     deft
     epub
     pdf
     ;; (wakatime :variables
     ;;           wakatime-api-key  "b76a617d-9948-49dc-8863-e3e50dee662e"
     ;;           wakatime-cli-path "/usr/local/bin/wakatime")
     debug
     shell
     version-control
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(company-tabnine parrot)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 10)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-dracula
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   ;; dotspacemacs-mode-line-theme '(all-the-icons :separator arrow :separator-scale 1.5)
   dotspacemacs-mode-line-theme 'doom
   ;; dotspacemacs-mode-line-theme '(spacemacs :separator arrow :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  ;; Node path
  (add-to-list 'exec-path "/usr/local/bin/node" t)
  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

  ;; Trigger completion immediately.
  (setq company-idle-delay 0)
  (setq company-show-numbers t)

  ;; Use the tab-and-go frontend.
  ;; Allows TAB to select and complete at the same time.
  ;; (setq company-frontends
  ;;       '(company-tng-frontend
  ;;         company-pseudo-tooltip-frontend
  ;;         company-echo-metadata-frontend))

  ;; 替换国内源
  ;; (setq configuration-layer-elpa-archives
  ;;    '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;      ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
  ;;      ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;; 强制设定 VIRTUAL_ENV 避免 jedi Too many open files 错误
  (defun pyenv-venv-wrapper-act (&optional ARG PRED)
    (setenv "VIRTUAL_ENV" (shell-command-to-string "_pyenv_virtualenv_hook; echo -n $VIRTUAL_ENV")))
  (advice-add 'pyenv-mode-set :after 'pyenv-venv-wrapper-act)
  (defun pyenv-venv-wrapper-deact (&optional ARG PRED)
    (setenv "VIRTUAL_ENV"))
  (advice-add 'pyenv-mode-unset :after 'pyenv-venv-wrapper-deact)

  ;; git 相关设置
  ;; (setq-default git-magit-status-fullscreen t)

  (setq paradox-github-token "9ebac6925c38a098a7bd2c193530427650499868")
  (defun my-flymd-browser-function (url)
    (let ((process-environment (browse-url-process-environment)))
      (apply 'start-process
             (concat "google-chrome " url) nil
             "/usr/bin/open"
             (list "google-chrome" "--new-window" "--allow-file-access-from-files" url))))
  (setq flymd-browser-open-function 'my-flymd-browser-function))


;; fix reading error on Mac OS
;; (setq anaconda-mode-localhost-address "localhost")

;; 设置中英文等宽
;; (set-face-attribute
;; 'default nil
;; :font (font-spec :name "-*-Source Code Pro-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
;;                  :weight 'normal
;;                  :slant 'normal
;;                  :size 14))
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;  (set-fontset-font
;;   (frame-parameter nil 'font)
;;   charset
;;   (font-spec :name "-*-Hiragino Sans GB-normal-normal-normal-*-*-*-*-*-p-0-iso10646-1"
;;              :weight 'normal
;;              :slant 'normal
;;              :size 16)))

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (nyan-mode)
  (parrot-mode)

  (with-eval-after-load 'company
    (push #'company-tabnine company-backends))


  (setq anaconda-mode-localhost-address "127.0.0.1")

  ;; go layer disable lsp-ui
  (with-eval-after-load 'lsp-mode (setq lsp-prefer-flymake :none))

  ;; 设置 neo 文件图标
  (setq neo-theme 'icons)

  ;; 将 Spacemacs 作为 Git 默认编辑器
  (global-git-commit-mode t)
  (setq magit-repository-directories "~/vtou/")

  ;; web-mode 添加 Vue 支持
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

  ;; 初始化窗口大小和位置
  ;; (setq default-frame-alist
  ;;       `((top . 50)
  ;;         (left . 300)
  ;;         (width . 105)
  ;;         (height . 40)
  ;;         ))

  ;; 解决 spacemacs org 与 emacs 自带的 org 冲突问题
  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar '(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
            (org-projectile-todo-files)))

  ;; org settings
  (setq org-src-tab-acts-natively t)
  (setq spaceline-org-clock-p t)
  (setq org-pomodoro-start-sound-p t)
  ;; (setq org-pomodoro-clock-break t)
  (setq org-agenda-files (list "~/Documents/orgs/agenda.org"))
  (setq org-capture-templates
        '(("m" "重要备忘" entry (file+olp+datetree "~/Documents/orgs/agenda.org" "重要备忘")
           "* TODO %?\n")
          ("l" "学习条目" entry (file+olp+datetree "~/Documents/orgs/agenda.org" "学习条目")
           "* TODO %?\n")))
  ;; ("v" "微投工作" entry (file+olp+datetree "~/Documents/orgs/agenda.org" "微投工作")
  ;;  "* TODO %?\n")

  ;; python black formatter settings
  ;; (setq blacken-skip-string-normalization t)
  (setq blacken-line-length '100)
  (setq flycheck-flake8-maximum-line-length '100)

  ;; doom-modeline settings
  (setq doom-modeline-icon (display-graphic-p))
  (setq doom-modeline-bar-width '3)
  (setq doom-modeline-icon t)
  (setq doom-modeline-major-mode-icon t)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-buffer-encoding t)
  (setq doom-modeline-buffer-state-icon t)
  (setq doom-modeline-minor-modes (featurep 'minions))
  (setq doom-modeline-enable-word-count t)
  (setq doom-modeline-buffer-modification-icon t)
  (setq doom-modeline-vcs-max-length '12)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-irc t)
  (setq doom-modeline-irc-stylize 'identity)
  (setq doom-modeline-persp-name t)
  (setq doom-modeline-checker-simple-format t)
  (setq doom-modeline-env-enable-python t)
  (setq doom-modeline-env-enable-go t)

  ;; nyan
  (setq nyan-animate-nyancat t)
  (setq nyan-bar-length '25)
  (setq nyan-wavy-trail t)
  (setq nyan-minimum-window-width '70)

  ;; parrot
  (setq parrot-num-rotations '10)
  ;; (parrot-set-parrot-type 'confused)
  (define-key evil-normal-state-map (kbd "[r") 'parrot-rotate-prev-word-at-point)
  (define-key evil-normal-state-map (kbd "]r") 'parrot-rotate-next-word-at-point)
  (setq parrot-rotate-dict
        '(
          (:rot ("&" "|"))
          (:rot ("begin" "end") :caps t :upcase t)
          (:rot ("enable" "disable") :caps t :upcase t)
          (:rot ("enter" "exit") :caps t :upcase t)
          (:rot ("get" "set") :caps t :upcase t)
          (:rot ("in" "out") :caps t :upcase t)
          (:rot ("min" "max") :caps t :upcase t)
          (:rot ("on" "off") :caps t :upcase t)
          (:rot ("prev" "next"))
          (:rot ("start" "stop") :caps t :upcase t)
          (:rot ("true" "false") :caps t :upcase t)
          (:rot ("&&" "||"))
          (:rot ("==" "!="))
          (:rot ("." "->"))
          (:rot ("if" "else" "elif"))
          (:rot ("ifdef" "ifndef"))
          (:rot ("int8_t" "int16_t" "int32_t" "int64_t"))
          (:rot ("uint8_t" "uint16_t" "uint32_t" "uint64_t"))
          (:rot ("1" "2" "3" "4" "5" "6" "7" "8" "9" "10"))
          (:rot ("1st" "2nd" "3rd" "4th" "5th" "6th" "7th" "8th" "9th" "10th")))))

  ;; wakatime settings
  ;; (setq wakatime-python-bin "/usr/local/bin/python3")
  


;; end of user-config


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ansi package-build shut-up epl git commander f dash s utop tuareg caml seeing-is-believing rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rbenv rake ocp-indent ob-elixir mvn minitest meghanada maven-test-mode lsp-java groovy-mode groovy-imports pcache gradle-mode flycheck-ocaml merlin flycheck-mix flycheck-credo dune chruby bundler inf-ruby auto-complete-rst alchemist elixir-mode yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify vterm volatile-highlights vmd-mode vi-tilde-fringe uuidgen use-package unfill typit twittering-mode toml-mode toc-org tide tagedit systemd symon symbol-overlay sudoku string-inflection sqlup-mode sql-indent spaceline-all-the-icons smeargle slim-mode shell-pop scss-mode sass-mode rjsx-mode restart-emacs realgud rainbow-mode rainbow-identifiers rainbow-delimiters racer pytest pyenv-mode py-isort pug-mode protobuf-mode prettier-js popwin pippel pipenv pip-requirements persp-mode pdf-tools pcre2el password-generator parrot parinfer paradox pacmacs ox-twbs ox-hugo ox-gfm overseer orgit org-sticky-header org-re-reveal org-projectile org-present org-pomodoro org-mime org-journal org-download org-cliplink org-bullets org-brain open-junk-file ob-ipython nov nodejs-repl nginx-mode neotree nameless mwim multi-term move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lsp-ui lsp-python-ms lorem-ipsum livid-mode live-py-mode link-hint json-navigator js2-refactor js-doc jinja2-mode insert-shebang indent-guide importmagic impatient-mode ibuffer-projectile hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-gitignore helm-git-grep helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gmail-message-mode gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flymd flycheck-rust flycheck-pos-tip flycheck-package flycheck-golangci-lint flycheck-bashate flx-ido fish-mode fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emojify emoji-cheat-sheet-plus emmet-mode elisp-slime-nav ein editorconfig edit-server dumb-jump dotenv-mode doom-themes doom-modeline dockerfile-mode docker diminish diff-hl devdocs deft define-word dash-at-point dap-mode cython-mode company-web company-tern company-tabnine company-statistics company-shell company-lsp company-go company-emoji company-ansible company-anaconda column-enforce-mode color-identifiers-mode clean-aindent-mode centered-cursor-mode cargo browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-compile ansible-doc ansible aggressive-indent ace-link ace-jump-helm-line ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
