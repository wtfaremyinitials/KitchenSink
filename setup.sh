#!/bin/bash/

cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(1 "Option 1" off    # any option can be set to default to "on"
         2 "Option 2" off
         3 "Option 3" off
         4 "Option 4" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
            echo "Auto Install"
            ;;
        2)
            echo "Manual Installer"
            ;;
    esac
done
