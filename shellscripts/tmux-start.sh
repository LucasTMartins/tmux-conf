#!/bin/bash

# Verifica se a sessão 0 já está em execução
if tmux has-session -t 0 2>/dev/null; then
  # Se a sessão 0 existir, conecta a ela
  tmux attach-session -t 0
else
  # Se a sessão 0 não existir, cria uma nova sessão com o nome 0
  tmux new-session -s 0
fi
