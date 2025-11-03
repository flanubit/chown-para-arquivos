#!/bin/bash
# Script: chown-para-arquivos.sh
# Autor: Flanubio Ribeiro
# Descrição: atribui um grupo de acesso para todos arquivos de uma mesma extensão de um determinado usuário
# Uso: ./chown-para-arquivos.sh

echo "CHOWN :GRUPO EXTENSÃO_ARQUIVO"
read -p "Digite o nome usuário destino: " nome_usuario
read -p "Digite o nome do grupo: " nome_grupo
read -p "Digite a extensão de arquivo: " extensao_arquivo

diretorio="/home/$nome_usuario/"

find $diretorio -name "*.$extensao_arquivo" -print0 | while IFS= read -r -d '' arquivo_encontrado; do
	chown :$nome_grupo $arquivo_encontrado
done