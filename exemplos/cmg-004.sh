#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-004.sh
# Comandos para transformar markdown em html
#
# Trocando itálico markdown para html 
#---------------------------------------------------------------------#
# 
#
# Global vars
filebase='csg-a01.html'

# troca para italico markdown
__save_italico() {
	sed -Ei 's/(\*[[:graph:]]+\*)/<em>\1<\/em>/g' "${filebase}"
	sed -Ei 's/<em>\*/<em>/g' "${filebase}"
	sed -Ei 's/\*<\/em>/<\/em>/g' "${filebase}" 
}

__save_italico
