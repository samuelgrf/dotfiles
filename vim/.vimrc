" Apply cursor styles on startup and exit.
autocmd VimEnter * silent !printf '\e[1 q'; clear
autocmd VimLeave * call system('printf "\e[5 q" > $TTY')

" Fix lag when escaping to normal mode.
set timeoutlen=10

" Enable smart case-insensitive search.
set ignorecase smartcase
