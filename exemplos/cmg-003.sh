#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-003.sh
# Comandos para transformar markdown em html
#
# Trocando negrito markdown para html 
#---------------------------------------------------------------------#
# 
#
# Global vars
filebase='csg-a01.html'

# troca para negrito markdown
__save_negrito() {
	sed -Ei 's/(\*\*([[:alpha:]]|[[:print:]] )+\*\*)/<strong>\1<\/strong>/g' "${filebase}"
	sed -Ei 's/<strong>\*\*/<strong>/g' "${filebase}"
	sed -Ei 's/\*\*<\/strong>/<\/strong>/g' "${filebase}" 
	sed -Ei 's/(\*\*([[:print:]]|[[:punct:]] )+\*\*)/<strong>\1<\/strong>/g' "${filebase}"
	sed -Ei 's/<strong>\*\*/<strong>/g' "${filebase}"
	sed -Ei 's/\*\*<\/strong>/<\/strong>/g' "${filebase}" 

}

__save_negrito
