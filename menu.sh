#!/bin/bash - 
#===============================================================================
#   DESCRIPTION: Menu for managment environment
#        AUTHOR: Peter Dyunin (), 
#===============================================================================

set -o nounset                              # Treat unset variables as an error

RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
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
  echo "================================================================="
  echo "                     dobix (Docker Bitrix)"
  echo "================================================================="
  echo ""
	echo "  1. Установка и настройка необходимого ПО для работы"
	echo "  2. Настройка окружения"
	echo "  3. Развернуть существующий проект"
	echo "  4. Установить ознакомительную версию Битрикс"
	echo "  5. Загрузить дамп базы данных"
	echo "  6. Настроить подключение сайта к базе данных"
	echo "  7. Сделать копию проекта, копия будет сохранена в каталог backup"
	echo "  0. Выход"
  echo ""
}

read_options(){
	local choice
	read -p "Выберите цифру меню и нажмите Enter " choice
	case $choice in
		1) install_software  ;;
		2) install_env ;;
		3) add_vhost ;;
		4) add_trial_version ;;
		5) load_dump ;;
		6) make_settings ;;
		0) exit 0 ;;
		*) echo -e "${RED}Такой цифры в меню нет, еще раз${STD}" && sleep 2
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
