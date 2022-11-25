"colorscheme gruvbox
" Theme colorscheme gruvbox
" let g:airline_theme='badwolf'

colorscheme onedark
let g:airline_theme='onedark'

syntax on

set number relativenumber
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

" Tabs conf

set noexpandtab
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set indentexpr=

" faster updates!
set updatetime=100

" automatically read on change

set autoread
set termguicolors
set t_Co=256
let g:airline_powerline_fonts = 1

set path=$PWD/**

" switch between hpp and cpp
function! SwitchSourceHeader()
	if (expand ("%:e") == "cpp")
		find %:t:r.hpp
	elseif (expand ("%:e") == "c")
		find %:t:r.h
	elseif (expand ("%:e") == "hpp")
		find %:t:r.cpp
	else
		find %:t:r.c
	endif
endfunction

au BufEnter,BufNew *.cpp nnoremap <silent> çp :call SwitchSourceHeader()<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> çp :call SwitchSourceHeader()<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> çvp :leftabove vs %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> çvp :rightbelow vs %<.cpp<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> çxp :leftabove split %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> çxp :rightbelow split %<.cpp<CR>
