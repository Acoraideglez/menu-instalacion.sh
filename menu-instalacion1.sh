#!/bin/bash
while :
do
	Nintendo="elija una opcion"
	select opt in "Instalar Sistema" "Instalar Camara" "Instalar Net-Tools" "Salir"
	do
	    case $opt in
		"Instalar Sistema")
			echo "Has selecionado instalar Sistema"
			if which Sistema 2> /dev/null;
			then
				echo "el programa está instalado"
				echo "¿Desea desinstalarlo?"
				select confirmar in "si" "no"
				do
					case $confirmar in
						"si")
							echo "se ha desinstalado Sistema"
							apt remove -y Sistema
						;;
						"no")
							break
						;;
						*) echo "opción $REPLY no valida";;
					esac
				done
			else
				sudo apt install -y Sistema
			fi
	            ;;
		"Instalar SL")
			 echo "Has selecionado Instalar Camara"
	                if which Camara 2> /dev/null;
	                then
	                        echo "el programa está instalado"
	                        echo "¿Desea desinstalarlo?"
	                        menu2=("si" "no")
	                        select opt in "${menu2[@]}"
	                        do
	                                case $opt in
	                                        "si")
	                                                echo "se ha desinstalado Camara"
	                                                apt remove -y sl
	                                        ;;
	                                        "no")
							break
	                                        ;;
	                                        *) echo "opción $REPLY no valida";;
	                                        esac
	                                done
	                else
	                        sudo apt install -y  Camara
	                fi
	            ;;
		"Instalar Net-Tools")
			 echo "Has selecionado instalar las Net-Tools"
	                if which ifconfig 2> /dev/null;
	                then
	                        echo "el programa está instalado"
	                        echo "¿Desea desinstalarlo?"
	                        menu3=("si" "no")
	                        select opt in "${menu3[@]}"
	                        do
	                                case $opt in
	                                        "si")
	                                                echo "se ha desinstalado las net-tools"
	                                                apt remove -y net-tools
	                                        ;;
	                                        "no")
							break
	                                        ;;
	                                        *) echo "opción $REPLY no valida";;
	                                        esac
	                                done
	                else
	                        sudo apt install -y net-tools
	                fi
	            ;;
		"Salir")
			exit 0
		;;
	        *) echo "opción $REPLY no valida";;
	    esac
	done
done
sadasdas
