#!/bin/bash

FILES=("$HOME/.emacs" "/etc/i3status.conf" "$HOME/.config/i3/config")
FILENAME=(".emacs" "i3status.conf" "config")
PACKAGES=("i3" "xcompmgr" "xfce4-terminal" "emacs")
size_FILE=3
size_PACKAGE=4
backup=".config_backup"

function move_to_backup
{
    if [ -e $backup ]
    then
	mkdir $HOME/$backup
    fi
    for ((i=0; i<=(size_FILE - 1);i++))
    do
	if [ -e ${FILES[i]} ]
	then
	    sudo mv ${FILES[i]} $HOME/$backup
	    printf "\033[1m\033[96m${FILES[i]}\033[0m into ~/$backup/\n"
	fi
    done

}

function move_from_backup
{
    for ((i=0; i<=(size_FILE - 1); i++))
    do
	sudo mv $HOME/$backup/${FILENAME[i]} ${FILES[i]}
    done
}

function package_install
{
    printf "\033[1mYou're gonna install some packages:\033[0m ${PACKAGES[*]}\n"
    for i in "${PACKAGES[@]}"
    do
	is_present="$(sudo apt-get install $i | grep already)"
	if [ -z "$is_present" ]
	then
	    printf "\033[1m\033[32m*******************************************\033[0m\n"
	    printf "\033[1m\033[32m$i is going to be installed\033[0m\n"
	    printf "\033[1m\033[32m*******************************************\033[0m\n"
	    sudo apt-get install $1
	else
	    printf "\033[1mGood new !\033[0m $i is already up-to-date.\n"
	fi
    done
}

function check_args
{
    if [ $# -eq 1 ]
    then
       case $1 in
	"install")
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m**                                **\033[0m\n"
	    printf "\033[92m**           INSTALLING           **\033[0m\n"
	    printf "\033[92m**                                **\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
#	    move_to_backup
	    package_install
	    if [ -e $backup ]
	    then
		mkdir $HOME/$backup
	    fi
	    for i in "${FILENAME[@]}"
	    do
		cp $i $HOME/$backup
	    done
	    ;;
	"uninstall")
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m**                                **\033[0m\n"
	    printf "\033[92m**          UNINSTALLING          **\033[0m\n"
	    printf "\033[92m**                                **\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
	    printf "\033[92m************************************\033[0m\n"
	    ;;
	*)
	    echo "unknown arg or error"
	 ;;
       esac
    fi
}

check_args $*
