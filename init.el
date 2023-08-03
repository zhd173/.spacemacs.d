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
   '(protobuf
     (rust :variables
           rust-backend 'lsp
           cargo-process-reload-on-modify t
           lsp-rust-analyzer-proc-macro-enable t
           lsp-rust-analyzer-diagnostics-disabled ["missing-unsafe"]
           lsp-rust-server 'rust-analyzer
           rust-format-on-save t)
     ;; shell-scripts
     ;; (chinese :variables
     ;;          chinese-default-input-method 'pinyin)
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; (plantuml :variables
     ;;           plantuml-jar-path "~/Dropbox/orgs/tools/plantuml.jar"
     ;;           plantuml-indent-level 4
     ;;           org-plantuml-jar-path "~/Dropbox/orgs/tools/plantuml.jar")
     emacs-lisp
     (lsp :variables
          lsp-ui-doc-enable t
          ;; lsp-ui-doc-include-signature t
          lsp-ui-peek-enable nil
          lsp-ui-doc-position 'at-point
          lsp-idle-delay 0.500
          lsp-enable-file-watchers t
          lsp-diagnostic-package nil
          ;; lsp-ui-doc-border (face-foreground 'default)
          ;; lsp-ui-doc-use-childframe t
          ;; lsp-ui-doc-use-webkit t
          ;; lsp-ui-sideline-enable t
          ;; lsp-ui-sideline-show-diagnostics t
          ;; lsp-ui-sideline-show-hover t
          ;; lsp-ui-sideline-show-code-actions t
          ;; lsp-ui-sideline-update-mode 'line
          ;; lsp-ui-sideline-show-symbol t
          )
     ;; (go :variables
     ;;     go-backend 'lsp
     ;;     go-format-before-save t
     ;;     gofmt-command "goimports"
     ;;     go-tab-width 4
     ;;     ;; go-use-golangci-lint t
     ;;     godoc-at-point-function 'godoc-gogetdoc
     ;;     go-use-test-args "-v -coverprofile=coverage.out"
     ;;     )
     (osx :variables
          osx-command-as       'hyper
          osx-option-as        'meta
          osx-control-as       'control
          osx-function-as      nil
          osx-right-command-as 'left
          osx-right-option-as  'left
          osx-right-control-as 'left
          osx-swap-option-and-command nil)
     (git :variables
          ;; git-enable-magit-delta-plugin t
          ;; git-magit-status-fullscreen nil
          ;; git-enable-magit-gitflow-plugin t
          git-enable-magit-todos-plugin t
          )
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     ;; (javascript :variables javascript-backend 'lsp)
     ;; (java :variables java-backend 'lsp)
     ;; helm
     (markdown :variables
               markdown-mmm-auto-modes '("c" "c++" "python" "scala" ("elisp" "emacs-lisp")))
     ;; (multiple-cursors :variables
     ;;                   multiple-cursors-backend 'evil-mc)
     (org :variables
          org-enable-reveal-js-support t
          org-enable-bootstrap-support t
          org-enable-org-journal-support t
          org-enable-roam-support t
          org-enable-roam-protocol t
          org-enable-roam-ui t
          org-journal-encrypt-journal nil
          org-journal-enable-agenda-integration t
          org-projectile-file "~/Dropbox/orgs/projectile/TODOs.org"
          org-journal-dir "~/Dropbox/orgs/journal/"
          org-journal-file-type 'monthly
          org-journal-file-format "%Y-%m.org"
          org-journal-time-format ""
          org-journal-file-header "#+TITLE: Monthly Journal\n#+STARTUP: folded"
          ;; org-journal-time-prefix "* "
          )
     ;; (dap :variables
     ;;      dap-enable-mouse-support t)
     yaml
     (colors :variables
             colors-colorize-identifiers nil
             )
     ;; (typescript :variables
     ;;             typescript-fmt-tool 'tide
     ;;             typescript-linter 'tslint
     ;;             tide-tsserver-executable "/usr/local/bin/tsserver"
     ;;             typescript-backend 'tide
     ;;             typescript-fmt-on-save t)
     (python :variables
             python-backend 'lsp
             python-lsp-server 'pyright
             python-formatter 'black
             python-pipenv-activate t
             ;; python-formatter 'yapf
             python-fill-column 120
             python-format-on-save t
             python-test-runner 'pytest)
     auto-completion
     imenu-list
     ;; html
     ;; react
     (json :variables
           json-fmt-tool 'web-beautify
           json-fmt-on-save t)
     better-defaults
     syntax-checking
     ;; (deft :variables
     ;;   deft-zetteldeft nil)
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; pdf
     version-control
     ;; debug
     ;; spell-checking
     (neotree :variables
              neo-theme 'icons
              neo-vc-integration '(nil))
     ;; (treemacs :variables
     ;;           treemacs-use-follow-mode t
     ;;           treemacs-use-all-the-icons-theme t
     ;;           treemacs-use-filewatch-mode t
     ;;           treemacs-use-git-mode 'deferred
     ;;           treemacs-lock-width t
     ;;           )
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(anki-editor)

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
   ;; If non-nil then enable support for the portable dumper. You'll need to
   ;; compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;;
   ;; WARNING: pdumper does not work with Native Compilation, so it's disabled
   ;; regardless of the following setting when native compilation is in effect.
   ;;
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
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

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

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
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

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 3 line
   ;; heights. If set to a number (int or float) it is used as a constant
   ;; scaling factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "all-the-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

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

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
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
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

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

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

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

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
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

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

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
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
)


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
)


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; start server
  (server-start)

  ;; pyim setting
  ;; (setq default-input-method "pyim")
  ;; (global-set-key (kbd "C-\\") 'toggle-input-method)
  ;; (pyim-basedict-enable)

  (setq insert-directory-program "/bin/ls")
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

  ;; anki-editor key
  (spacemacs/set-leader-keys
    "ati" 'anki-editor-insert-note)


  ;;org configs
  (setq org-image-actual-width '(700))
  (setq org-src-tab-acts-natively t)
  (setq org-agenda-include-diary t)
  (setq org-download-screenshot-method "screencapture -i %s")
  (setq spaceline-org-clock-p nil)
  (setq org-pomodoro-start-sound-p t)
  (setq org-pomodoro-finished-hook '(lambda() (haidong/notification "Pomodoro Finished" "Have a break" t)))
  (setq org-pomodoro-short-break-finished-hook '(lambda() (haidong/notification "Short Break" "Ready to Go?" t)))
  (setq org-pomodoro-long-break-finished-hook'(lambda() (haidong/notification "Long Break" "Ready to Go?" t)))
  (setq-default org-download-image-dir "~/Dropbox/orgs/images")
  (setq org-roam-directory "~/Dropbox/orgs/brain")
  (setq org-id-track-globally t)
  (setq org-id-locations-file "~/Dropbox/orgs/.org-id-locations")
  (setq deft-directory "~/Dropbox/orgs")
  (setq deft-recursive t)
  (setq deft-extensions '("org" "md" "txt"))
  (global-set-key (kbd "C-;") 'deft)
  (global-set-key (kbd "C-'") 'calendar)
  (with-eval-after-load 'evil
    (evil-set-initial-state 'org-brain-visualize-mode 'emacs))
  (setq org-todo-keywords
        '((sequencep "TODO" "|" "DONE" "CANCEL")))
  (setq org-agenda-files (list "~/Dropbox/orgs/agenda.org"))

  ;; latex configs

  ;; python configs
  (setq python-shell-extra-pythonpaths '("/usr/local/opt/python@3.8/bin/python3"))
  (setq blacken-line-length '120)
  (setq flycheck-flake8-maximum-line-length '120)
  (setq lsp-pyls-plugins-autopep8-enabled t)
  (setq lsp-pyls-plugins-flake8-max-line-length '120)
  (setq lsp-pyls-plugins-flake8-ignore '("E501"))
  (setq lsp-pyls-plugins-flake8-config '".flake8rc")
  (setq lsp-pyls-plugins-pylint-enabled t)

  ;; plantuml
  (setq plantuml-output-type "svg")

  ;; go configs
  (setq flycheck-golangci-lint-config "~/Dropbox/config/golangci-lint/.golangci.yml")

  ;; doom configs
  ;; doom-modeline settings
  ;; (setq doom-modeline-icon (display-graphic-p))
  ;; (setq doom-modeline-bar-width '3)
  ;; (setq doom-modeline-icon t)
  ;; (setq doom-modeline-major-mode-icon t)
  ;; (setq doom-modeline-major-mode-color-icon t)
  ;; (setq doom-modeline-buffer-encoding t)
  ;; (setq doom-modeline-buffer-file-name-style 'auto)
  ;; (setq doom-modeline-buffer-state-icon t)
  ;; (setq doom-modeline-minor-modes (featurep 'minions))
  ;; (setq doom-modeline-enable-word-count t)
  ;; (setq doom-modeline-buffer-modification-icon t)
  ;; (setq doom-modeline-vcs-max-length '12)
  ;; (setq doom-modeline-lsp t)
  ;; (setq doom-modeline-irc t)
  ;; (setq doom-modeline-mu4e t)
  ;; (setq doom-modeline-irc-stylize 'identity)
  ;; (setq doom-modeline-persp-name t)
  ;; (setq doom-modeline-checker-simple-format t)
  ;; (setq doom-modeline-env-enable-python t)
  ;; (setq doom-modeline-env-enable-go t)

  ;; leetcode
  ;; (setq leetcode-prefer-language "golang")
  ;; (setq leetcode-prefer-sql "mysql")
  ;; (setq leetcode-save-solutions t)
  ;; (setq leetcode-directory "~/Dropbox/leetcode/src")

  ;; org-roam-ui
  )

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
 '(org-agenda-files
   '("/Users/zhanghaidong/Dropbox/orgs/agenda.org" "/Users/zhanghaidong/Dropbox/orgs/journal/2023-01.org" "/Users/zhanghaidong/Library/CloudStorage/Dropbox/orgs/journal/2023-08.org"))
 '(package-selected-packages
   '(anki-editor dap-mode lsp-docker lsp-treemacs bui treemacs cfrs pfuture yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify vterm volatile-highlights vimrc-mode vim-powerline vi-tilde-fringe uuidgen use-package unfill undo-tree toml-mode toc-org tide terminal-here term-cursor tagedit symon symbol-overlay string-inflection sphinx-doc spacemacs-whitespace-cleanup spacemacs-purpose-popwin spaceline-all-the-icons space-doc smeargle slim-mode shfmt shell-pop scss-mode sass-mode rust-mode ron-mode rjsx-mode reveal-in-osx-finder restart-emacs realgud rainbow-mode rainbow-identifiers rainbow-delimiters quickrun pytest pylookup pyim-basedict pyim pyenv-mode pydoc py-isort pug-mode protobuf-mode prettier-js posframe popwin poetry plantuml-mode pippel pipenv pip-requirements persp-mode pdf-view-restore password-generator parrot paradox pangu-spacing ox-twbs overseer osx-trash osx-dictionary osx-clipboard orgit-forge org-superstar org-roam org-rich-yank org-re-reveal org-projectile org-present org-pomodoro org-mime org-journal org-download org-contrib org-cliplink open-junk-file npm-mode nose nodejs-repl nginx-mode neotree nameless mwim multi-term multi-line mmm-mode markdown-toc magit-todos macrostep lsp-ui lsp-python-ms lsp-pyright lsp-origami lorem-ipsum livid-mode live-py-mode link-hint launchctl json-reformat json-navigator json-mode js2-refactor js-doc inspector insert-shebang info+ indent-guide importmagic impatient-mode ibuffer-projectile hybrid-mode hungry-delete holy-mode highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link git-gutter-fringe gh-md fuzzy font-lock+ flycheck-rust flycheck-pos-tip flycheck-package flycheck-elsa flycheck-bashate flx-ido fish-mode find-by-pinyin-dired fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-evilified-state evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emojify emoji-cheat-sheet-plus emmet-mode elisp-slime-nav elisp-def ein editorconfig dumb-jump drag-stuff dotenv-mode doom-themes doom-modeline dockerfile-mode docker dired-quick-sort diminish devdocs deft dactyl-mode cython-mode company-web company-tabnine company-shell company-go company-emoji company-anaconda column-enforce-mode color-identifiers-mode code-cells clean-aindent-mode chinese-conv centered-cursor-mode cargo cal-china-x browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-window ace-pinyin ace-link ace-jump-helm-line ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
)
