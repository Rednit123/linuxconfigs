" Numeração de linha e espaçamento
syntax on
set nu
set softtabstop=4
set shiftwidth=4
highligh LineNr ctermfg=DarkGreen

" Atalhos para shell script e edições de texto 
map <F8> :w <CR> :!bash -x % <CR>
map <F7> :w <CR> :!shellcheck -x -s bash % <CR>
map <F6> :w <CR> :!bash % <CR>
map <F5> :setlocal spell! spelllang=pt_br<CR>

" Atalhos para o LaTeX
map <F1> :w <CR> :!pdflatex % <CR>
map <F2> :w <CR> :!zathura *.pdf & <CR>

" Templates
au BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
au BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex

" Remapeamento da tecla normal
imap jj <Esc>