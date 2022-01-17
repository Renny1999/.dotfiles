set tabstop=2
set shiftwidth=2
set expandtab

"command Run !tmux split-window -c "$(pwd)" 'if ! [ -z "$1" ] then python3 $1; else python3 main.py; fi'
command Run silent !tmux split-window -c "$(pwd)" 'python3 main.py; read'

nnoremap <C-n> :Run
