#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-007.sh
# Comandos para transformar markdown em html
#
# Trocando code markdown para html 
#---------------------------------------------------------------------#
# 
#
# Global vars
filebase='csg-a01.html'

# troca para code markdown
__save_code() {
	sed -Ei 's/(`[[:alpha:]]+`)/<code>\1<\/code>/g' "${filebase}"
	sed -Ei 's/<code>`/<code>/g' "${filebase}"
	sed -Ei 's/`<\/code>/<\/code>/g' "${filebase}" 

}


__save_code
