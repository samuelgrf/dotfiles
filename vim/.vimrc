" Enable mouse navigation support.
set mouse=a

" Change cursor based on mode.
let &t_SI = "\<Esc>[5 q" " I-Beam in insert mode
let &t_SR = "\<Esc>[3 q" " Underline in replace mode
let &t_EI = "\<Esc>[2 q" " Block in other modes
set timeoutlen=0 " Fix delay after switching modes
autocmd VimLeave * call system('printf "\e[5 q" > $TTY') " Reset to I-Beam on exit
