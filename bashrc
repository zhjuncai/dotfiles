
# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'


# List
alias l='ls -al --group-directories-first'

# Misc
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias m='more'
alias df='df -h'

# Shows most used commands, cool script I got this from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

# Setup Java Virtual Machines Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home

# always using sudo to edit file 
alias vi='vim'
alias svim='sudo vim'
alias cls='clear'
alias c='cls'
alias apachectl='sudo apachectl'

# list all members of group, not quite understand http://superuser.com/questions/279891/list-all-members-of-a-group-mac-os-x
members () { 
  dscl . -list /Users | while read user; do printf "$user "; dsmemberutil checkmembership -U "$user" -G "$*"; done | grep "is a member" | cut -d " " -f 1; 
};
