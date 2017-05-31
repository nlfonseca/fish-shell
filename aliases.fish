# Get back
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# Places I like to travel
alias dl "cd ~/Downloads"
alias dt "cd ~/Desktop"
alias code "cd ~/sites"
alias sites "cd ~/sites"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1 # GNU `ls`
  set colorflag "--color"
else # OS X `ls`
  set colorflag "-G"
end

alias ls "ls $colorflag"
# List all files colorized in long format
alias l "ls -l $colorflag"
# List all files colorized in long format, including dot files
alias la "ls -la $colorflag"
# List only directories
alias lsd "ls -l $colorflag | grep '^d'"
# NGINX
alias nginx.start "sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginx.stop "sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginx.restart "sudo brew services restart nginx"
alias nginx.edit "subl /usr/local/etc/nginx/nginx.conf"
alias nginx.sites "subl /usr/local/etc/nginx/sites-available"
#edit
alias hosts.edit 'subl /etc/hosts'
alias fish.edit 'subl ~/.config/fish/aliases.fish'
alias homestead.edit 'subl ~/.homestead/Homestead.yaml'

# PHP-FPM
alias php.start "launchctl load -w ~/Library/LaunchAgents/homebrew-php.mxcl.php56.plist"
alias php.stop "launchctl unload -w ~/Library/LaunchAgents/homebrew-php.mxcl.php56.plist"
alias php.restart 'brew services restart php56'
alias php.edit 'subl /usr/local/etc/php/5.6/php.ini'

# MYSQL
alias mysql.start "brew services start mysql"
alias mysql.stop "brew services stop mysql"
alias mysql.restart 'brew services restart mysql'
