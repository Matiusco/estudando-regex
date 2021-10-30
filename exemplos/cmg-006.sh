#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-006.sh
# Comandos para transformar markdown em html
#
# Trocando negrito+itálico markdown para html 
#---------------------------------------------------------------------#
# 
#
# Global vars
filebase='csg-a01.html'

# troca para negrito+itálico markdown
__save_negita() {
	sed -Ei 's/(\*\*\*([[:alpha:]]| )+\*\*\*)/<strong><em>\1<\/em><\/strong>/g' "${filebase}"
	sed -Ei 's/<strong><em>\*\*\*/<strong><em>/g' "${filebase}"
	sed -Ei 's/\*\*\*<\/em><\/strong>/<\/em><\/strong>/g' "${filebase}" 
}

__save_negita
