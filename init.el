(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar my-packages '(anything anything-complete anything-config anything-el-swank-fuzzy anything-extension anything-exuberant-ctags anything-git auto-complete clojure-mode clojure-project-mode clojure-test-mode color-theme color-theme-solarized ctags ctags-update elisp-slime-nav find-file-in-project flymake flymake-haml flymake-jslint flymake-ruby flymake-shell frame-tag ghc ghci-completion haskell-mode idle-highlight-mode ido-ubiquitous inf-ruby levenshtein magit mode-compile paredit popup project-mode python-mode quack rainbow-delimiters rspec-mode ruby-block ruby-end ruby-mode ruby-test-mode scala-mode scratch slime slime-repl smex solarized-theme starter-kit starter-kit-eshell starter-kit-js starter-kit-lisp starter-kit-ruby window-number yas-jit yasnippet yasnippet-bundle ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
        (package-install p)))
