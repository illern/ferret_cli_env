#if [ -f "$HOME/.bash_ps1" ]; then
#
#. "$HOME/.bash_ps1"
#
#fi

############################################
# Modified from emilis bash prompt script
# from https://github.com/emilis/emilis-config/blob/master/.bash_ps1
#
# Modified for Mac OS X by
# @corndogcomputer
###########################################
# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):
fill="—- "

# Black? text reset_style='\[\033[30m\]'
# Red text: reset_style='\[\033[31m\]'
# reset_style='\[\033[00m\]'

# Black? text status_style=$reset_style'\[\033[1;30m\]'
# Red text: status_style=$reset_style'\[\033[0;31m\]' 
status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color

# prompt_style=$reset_style
# Original line: prompt_style=$reset_style

# command_style=$reset_style'\[\033[1;29m\]' # bold black

# Prompt variable:
PS1="$status_style"'$fill \t\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\u @ \h:\W\$'"$command_style "
# Original line: PS1="$status_style"'$fill \t\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\u@\h:\w\$'"$command_style "
# Reset color for command output

# (this one is invoked every time before a command is executed):
trap 'echo -ne "\033[00m"' DEBUG
function prompt_command {
# create a $fill of all screen width minus the time string and a space:
let fillsize=${COLUMNS}-9
fill=""
while [ "$fillsize" -gt "0" ]
do
fill="-${fill}" # fill with underscores to work on
let fillsize=${fillsize}-1
done
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
bname=`basename "${PWD/$HOME/~}"`
echo -ne "\033]0;${bname}: ${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"
;;
*)
;;
esac
}

alias ls='ls -F'
alias addressbook='open -a Address\ book'
alias adium='open -a Adium'
alias amail='open -a Mail'
alias acal='open -a Calendar'
alias amon='open -a activity\ monitor'
alias astore='open -a App\ Store'
alias break='utt add "Break **"'
alias colloquy='open -a Colloquy'
alias acontacts='open -a Contacts'
alias gchrome='open -a Google\ Chrome'
alias cord='open -a cord'
alias daylite='open -a /Applications/Daylite.app'
alias dropbox='open -a Dropbox'
alias evernote='open -a Evernote'
alias hello='utt hello'
alias itunes='open -a iTunes'
alias iphoto='open -a iPhoto'
alias iweb='open -a iWeb'
alias lync='open -a Microsoft\ Lync'
alias lunch='utt add "Lunch **"'
alias mactracker='open -a Mactracker'
alias markdown='open -a MarkdownLife'
alias massage='utt add "Massage **"'
alias pages='open -a pages'
alias safari='open -a Safari'
alias server='open -a Server'
alias screensharing='open -a /System/Library/CoreServices/Applications/Screen\ Sharing.app'
alias skype='open -a Skype'
alias smultron='open -a smultron\ 4'
alias spotify='open -a Spotify'
alias syspref='open -a System\ Preferences'
alias texted='open -a TextEdit'
alias textedit='open -a TextEdit'
alias tm7='open -a /Applications/TeamViewer\ 7/TeamViewer.app/'
alias textm='open -a textmate'
alias textmate='open -a textmate'
alias t='~/Dropbox/todo_txt_ELITS/todo.sh'
alias travel='utt add "Travel **"'
alias tgrep='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep'
alias tgrepa='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep "(A)"'
alias tgrepb='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep "(B)"'
alias tgrepc='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep "(C)"'
alias tgrepd='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep "(D)"'
alias tgrepe='~/Dropbox/todo_txt_ELITS/todo.sh ls | grep "(E)"'
alias tweetdeck='open -a TweetDeck'
alias ua='utt add'
alias ubreak='utt add "Break **"'
alias ucol='utt add "ES: Conferred with colleguage"'
alias uedit=' utt edit'
alias umail='utt add "ES: E-mail"'
alias ulunch='utt add "Lunch **"'
alias urep='/usr/local/bin/utt report `date "+%Y-%m-%d%n"`'
alias uprep='utt add "ES: Prep roll call"'
alias uroll='utt add "ES: Roll call"'
alias utime='utt add "ES: Time reporting"'
alias watchg='open -a /Applications/WatchGuard/WatchGuard\ Mobile\ VPN\ with\ SSL.app/'
alias xtorrent='open -a Xtorrent'

PROMPT_COMMAND=prompt_command

#PS1='\[\033[0;31m\]\u\[\033[1;30m\] @ \[\033[0;31m\]\h:\[\033[1;30m\]\W \[\033[0;30m\]\$\[\033[0;39m\] '
# Make bash check its window size after a process completes
#shopt -s checkwinsize




alias joinpdf="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py -o"
alias splitpdf="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"

#alias todo="ssh illern@illertass.se /usr/local/bin/todo.sh -d /Users/illern/.todo.cfg"

export HISTFILESIZE=3000

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

source ~/Dropbox/todo_txt_ELITS/todo_completion

#set -o vi

#cd ~/Dropbox

#mydate=`date +%H`
#:%M:%S
#%m/%d/%y

# HOUR=`date +%H`
# let ACTUALHOUR=HOUR+1
# ACTUALHOUR=`echo $ACTUALHOUR|sed 's/^0*//'`

echo "Salve civis"
# , it is hour" $ACTUALHOUR "of the day."


#if [ -f "$HOME/.bash_layout" ]; then
#
#. "$HOME/.bash_layout"
#
#fi


##
# Your previous /Users/kristofferh/.bash_profile file was backed up as /Users/kristofferh/.bash_profile.macports-saved_2012-01-31_at_15:28:57
##

# MacPorts Installer addition on 2012-01-31_at_15:28:57: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

