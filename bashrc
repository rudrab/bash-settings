# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#VTE bug for terminix
if [[ $TERMINIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi

if [ -f /home/rudra/Devel/bash-settings/bashrc-colors.sh ]; then
       . /home/rudra/Devel/bash-settings/bashrc-colors.sh
fi

# User specific aliases and function# User specific environment and startup programs
PATH=${PATH}:/home/rudra/bin
PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-linux
PATH=${PATH}:/opt/intel/bin
export PATH
#============================================
alias ls="ls -hX --color=always  --group-directories-first"
alias rm="/bin/rm -i" 
alias grep="grep --colour -iTHn"
alias vi="gvim"
alias c="clear"
alias logout="gnome-session-quit --logout"
alias poweroff="gnome-session-quit --power-off"
alias reboot="gnome-session-quit --reboot"
alias ping="ping -c 3 google.com"
alias vsync='rsync --exclude="CHG*" --exclude="WAVECAR" --exclude="PROCAR" --exclude="vasprun.xml"'
alias pcp='vsync -ave gsissh'
alias count="shopt -s dotglob nullglob; a=(*);echo ${#a[@]}"
#alias tar="tar -I pxz"
#===========================================
#FIGNORE=$FIGNORE:.hi:.pyc:.o

function showq
{
  echo -e "\E[1;31m\033[GSHOWQ AT HPC"
  ssh hpc "showq -u phslav"
  echo -e "\033[0m"
}
#function cleanlatex
#{
  #rm -f !(*.tex|*.png|*.jpg|*.xcf|*.pdf|*.bib)
#}
export XBANDPATH=/home/rudra/WORK/xband/
#======================================
unset USERNAME
cal
date
p=`echo $COLUMNS`
p2=`expr $p / 2`
p4=`expr $p2 - 15`
p3=`expr $p4 + 8`
echo -e "\E[2;36m\033[${p4}G********************************\033[0m"
echo -e "\E[1;31m\033[${p3}GLETS DO SOME WORK\033[0m"
echo -e "\E[2;36m\033[${p4}G********************************\033[0m"

#------------------------------------------------------------------------
# this is for XCRYSDEN 1.5.53; added by XCRYSDEN installation on
# Thu Apr 24 18:35:19 BST 2014
#------------------------------------------------------------------------
XCRYSDEN_TOPDIR=/opt/xcrysden-1.5.60-bin-shared
XCRYSDEN_SCRATCH=/var/tmp/xcrys_tmp
export XCRYSDEN_TOPDIR XCRYSDEN_SCRATCH
PATH="$XCRYSDEN_TOPDIR:$PATH:$XCRYSDEN_TOPDIR/scripts:$XCRYSDEN_TOPDIR/util"

