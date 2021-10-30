#!/usr/bin/env bash
# <https://github.com/Matiusco/estudando-regex/>
# coding	: utf-8
#
# cmh-001.sh
# Comandos para transformar markdown em html
#---------------------------------------------------------------------#
# Sei que o codigo estah ruim pq negrito+italico precisa ser feito antes
#---------------------------------------------------------------------#
# Este é o script inicial. 
#---------------------------------------------------------------------#
# cmg-002.sh - troca títulos (ok)
# cmg-006.sh - negrito+itálico juntos. (ok)
# cmg-003.sh - troca negrito (ok)
# cmg-004.sh - troca itálico (OK)
# cmg-005.sh - troca parágrafo (OK)
# cmg-007.sh - troca code. (ok)) 
# cmg-008.sh - troca lista. (pendente)
#---------------------------------------------------------------------#
# Global vars
#---------------------------------------------------------------------#
filebase='csg-a01.html'

# Arquivo em markdown para trabalho  
#---------------------------------------------------------------------#
FILE='csg-a01.md'
if test -f "$FILE"; then
	cp "$FILE" "${filebase}" 
else
	echo "Abortando tudo.... " 
	exit 127
fi

source cmg-002.sh # Troca titulo (ok)
source cmg-006.sh # Troca negrito+italico (ok)
source cmg-003.sh # troca negrito (ok)
source cmg-004.sh # troca itálico (OK)
source cmg-005.sh # troca parágrafo (OK)
source cmg-007.sh # troca code. (ok)) 
#source cmg-008.sh - troca lista. (pendente)

echo "Vou estar trabalhando na melhoria ateh o dia da aula. "
