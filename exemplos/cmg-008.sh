#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-008.sh
# Comandos para transformar markdown em html
#
# Trocando lista markdown para html 
#---------------------------------------------------------------------#
# Pendente..... 
#---------------------------------------------------------------------#
#
# Global vars
filebase='csg-a01.html'

# troca para lista markdown
__save_li() {
# Pensando em fazer um while para ler o arquivo todo. 
# tem q iniciar <ul>
	# <li> 
	sed -Ei 's/(^\* [[:alnum:]].*$)/<p>\1<\/p>/' "${filebase}"
	# </li> 
# fecha com </ul>
}

__save_li
