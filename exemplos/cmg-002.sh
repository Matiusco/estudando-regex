#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmg-002.sh
# Comandos para transformar markdown em html
#
# Trocando títulos markdown para html 
#---------------------------------------------------------------------#
# 
# h1 - começa com # 
# h2 - começa com ##
# h3 - começa com ###
# h4 - começa com ####
#---------------------------------------------------------------------#
#
# Global vars
filebase='csg-a01.html'

# troca para h1
__save_H1() {
	sed -Ei 's/(^# .*$)/<h1>\1<\/h1>/;s/^<h1>#/<h1>/' "${filebase}"
}

# troca para h2
__save_H2() {
	sed -Ei 's/(^## .*$)/<h2>\1<\/h2>/;s/^<h2>##/<h2>/' "${filebase}"
}	

# troca para h3
__save_H3() {
	sed -Ei 's/(^### .*$)/<h3>\1<\/h3>/;s/^<h3>###/<h3>/' "${filebase}"
}	

# troca para h4
__save_H4() {
	echo ""
}	

#sed -i 's/.$//' "${filebase}"
__save_H1
__save_H2
__save_H3


