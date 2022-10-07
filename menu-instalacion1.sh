#!/bin/bash
while :
do
	PS3="elija una opcion"
	select opt in "Instalar Cowsay" "Instalar SL" "Instalar Net-Tools" "Salir"
	do
	    case $opt in
		"Instalar Cowsay")
			echo "Has selecionado instalar cowsay"
			if which cowsay 2> /dev/null;
			then
				echo "el programa está instalado"
				echo "¿Desea desinstalarlo?"
				select confirmar in "si" "no"
				do
					case $confirmar in
						"si")
							echo "se ha desinstalado cowsay"
							apt remove -y cowsay
						;;
						"no")
							break
						;;
						*) echo "opción $REPLY no valida";;
					esac
				done
			else
				sudo apt install -y cowsay
			fi
	            ;;
		"Instalar SL")
			 echo "Has selecionado Instalar SL"
	                if which sl 2> /dev/null;
	                then
	                        echo "el programa está instalado"
	                        echo "¿Desea desinstalarlo?"
	                        menu2=("si" "no")
	                        select opt in "${menu2[@]}"
	                        do
	                                case $opt in
	                                        "si")
	                                                echo "se ha desinstalado sl"
	                                                apt remove -y sl
	                                        ;;
	                                        "no")
							break
	                                        ;;
	                                        *) echo "opción $REPLY no valida";;
	                                        esac
	                                done
	                else
	                        sudo apt install -y  sl
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
