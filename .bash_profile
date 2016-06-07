export PATH="$HOME/bin:$POSTGRES_APP_BIN:/usr/local/bin:$PATH"

alias mongostart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias migrateboth="rake db:migrate && RACK_ENV=test rake db:migrate"
export PATH=$PATH:/usr/local/sbin
alias .="vi ."
alias q='exit'
alias ..="cd ../"
alias nw="/Applications/nwjs.app/Contents/MacOS/nwjs"
alias be="bundle exec"
eval "$(rbenv init -)"
alias rspec="be rspec spec --colour"
