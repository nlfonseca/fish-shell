set fish_greeting ""
set -x CLICOLOR 1
set -x TERM xterm-256color

rvm default

set -g -x PATH /usr/local/bin $PATH
set -g -x PATH $PATH $HOME/.rvm/bin
set -g -x PATH $PATH $HOME/.composer/vendor/bin


composer global require “laravel/homestead=~2.0”

if test -e "$HOME/.config/fish/aliases.fish"
  source "$HOME/.config/fish/aliases.fish"
end
rvm default
