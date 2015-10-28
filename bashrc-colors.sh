#COLORS DEFINED
#RED    = #DB4437   219;068;055
#GREEN  = #0F9D58   015;157;088
#YELLOW = #F4B400   244;180;000
#BLUE   = #4285F4   066;133;244
#BLACK  = #333333
#DGREY  = #656565
#LGREY  = #EEEEEE
#WHITE  = #FFFFFF

#Colours for PS1
VUSER='\[\e[1;38;2;015;047;250m\e[1;48;2;046;180;219m\] \u\[\e[1;38;2;046;180;219m\e[1;48;2;147;230;160m\]'
VMAC='\[\e[1;38;2;033;143;049m\e[1;48;2;147;230;160m\] \h\[\e[0m\]\[\e[1;38;2;147;230;160m\e[1;48;2;229;114;085m\]'
VDIR='\[\e[1;38;2;255;255;255m\] \W\[\e[0m\]\[\e[1;38;2;229;114;85m\]'
PS1="$VUSER$(echo $'\uE0B0')$VMAC$(echo $'\uE0B0')$VDIR$(echo $'\uE0B0')\[\e[0m\] "


#LS_COLORS
LS_COLORS='no=1:di=1;38;2;66;133;244:ln=09;32:pi=40;32:so=01;35:bd=40;33;01:cd=34;33;01:or=34;33;01:ex=01;38;2;0;215;95:*.in=01;34:'
add_ls_colors() {
	[[ $# -ge 2 ]] || return 1
    local color=$1 ; shift
    local i
	local -a a
    a=( "${@/#/*.}" )
    local IFS=":$IFS"
	a=( "${a[@]/%/=$color}" )
    LS_COLORS="$LS_COLORS:${a[*]}"
}
add_ls_colors "1;38;2;219;68;55" f90 f F F90 c cpp py vim
add_ls_colors "1;38;2;210;165;119" tex bib
add_ls_colors "1;38;2;156;056;049" h 
add_ls_colors "1;38;2;244;180;00" tar tgz arj taz lzh zip z gz bz2 7z
add_ls_colors "0;38;2;241;101;41" html xml css php
add_ls_colors "1;38;5;246" o mod bbl blg aux fdb_latexmk fls log bak dbj m4 
add_ls_colors "1;38;2;223;24;24" pdf ps 
add_ls_colors "1;38;2;15;157;88" png jpg JPG jpeg gif bmp xcf svg
add_ls_colors "1;38;2;235;97;85" avi  mp3 ogg
add_ls_colors "01;38;2;149;138;221" sh awk lua
add_ls_colors "1;38;2;0;215;95" vcal cal
add_ls_colors "1;38;2;15;197;88" am ac
add_ls_colors "1;38;5;134" deb rpm
add_ls_colors "1;38;5;141" agr
