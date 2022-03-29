call plug#begin('~/.vim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Any valid git URL is allowed
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	Plug 'https://github.com/SirVer/ultisnips'	
	Plug 'https://github.com/dominikduda/vim_es7_javascript_react_snippets'
	
call plug#end()

set number
set relativenumber

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Auto-closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
