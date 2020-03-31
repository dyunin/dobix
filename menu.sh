#!/bin/bash - 
#===============================================================================
#   DESCRIPTION: Menu for managment environment
#        AUTHOR: Peter Dyunin (), 
#===============================================================================

set -o nounset                              # Treat unset variables as an error

 
source .func

pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

#---  FUNCTION  ----------------------------------------------------------------
#          NAME:  menu
#   DESCRIPTION:  Display menu
#    PARAMETERS:  
#       RETURNS:  
#-------------------------------------------------------------------------------
menu() {
	clear
  echo ""
  echo -e  "${header}================================================================="
  echo  "                     dobix (Docker Bitrix)                       "
  echo -e "=================================================================${std}"
  echo ""
  echo "  1. Установка и настройка необходимого ПО для работы"
	echo "  2. Настройка окружения"
	echo "  3. Развернуть существующий проект"
	echo "  4. Установить ознакомительную версию Битрикс"
	echo "  5. Загрузить дамп базы данных"
	echo "  6. Настроить подключение сайта к базе данных"
	echo "  0. Выход"
  echo ""
}

read_options(){
	local choice
	read -p "Выберите пункт меню и нажмите Enter " choice
	case $choice in
		1) install_software  ;;
		2) install_env ;;
		3) add_vhost ;;
		4) add_trial_version ;;
		5) load_dump ;;
		6) make_settings ;;
		0) exit 0 ;;
		*) echo -e "${warning}К сожалению, а может быть к счастью, такого пункта в меню нет${std}" && sleep 2
	esac
}
 
trap '' SIGINT SIGQUIT SIGTSTP
 
while true; do
  menu
	read_options
  if [[ $? = "0" ]]; then
    echo
    break 
  fi
done
