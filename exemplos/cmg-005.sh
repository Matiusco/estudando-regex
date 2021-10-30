#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-005.sh
# Comandos para transformar markdown em html
#
# Trocando parágrafo markdown para html 
#---------------------------------------------------------------------#
# 
#
# Global vars
filebase='csg-a01.html'

# troca para paragrafo markdown
__save_paragrafo() {
	sed -Ei 's/(^[[:alnum:]].*$)/<p>\1<\/p>/' "${filebase}"
}

__save_paragrafo
