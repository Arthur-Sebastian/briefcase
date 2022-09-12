" Ctrl + <Left/Right>
					" - quickly switch buffers
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
" Alt + <Up/Down>
					" - move line up or down
inoremap <M-Up> <Esc>:m-2<CR>==gi
inoremap <M-Down> <Esc>:m+<CR>==gi
" Alt + <Left/Right>
					" - change line indent
inoremap <M-Left> <Esc><<gi
inoremap <M-Right> <Esc>>>gi
" vim-gitgutter 
					" - hunk bindings
nnoremap ;b :GitGutterPrevHunk<CR>
nnoremap ;n :GitGutterNextHunk<CR>
nnoremap ;v :GitGutterPreviewHunk<CR>
nnoremap ;u :GitGutterUndoHunk<CR>
nnoremap ;s :GitGutterStageHunk<CR>

set updatetime=500

set wildmenu
set completeopt=noinsert,menuone,noselect
set clipboard=unnamedplus

" navigation settings
set mouse=a
set splitbelow splitright
set scrolloff=5
set cursorline
set number
set title
set nohlsearch

" indent settings
set tabstop=4
set shiftwidth=4

" theme and appearance settings
set encoding=utf-8
set termguicolors
colorscheme cobalt

" file browser configuration
let g:netrw_winsize=20
let g:netrw_browse_split=4
let g:netrw_keepdir=1
let g:netrw_altv=1
let g:netrw_banner=0
let g:netrw_liststyle=3

" airline configuration
let g:airline_symbols_ascii=0
let g:airline_powerline_fonts=0
let g:airline_extensions=['tabline', 'branch', 'hunks']
let g:airline#extensions#tabline#formatter='unique_tail'

" layout and setup
aug layout
	au!
	au vimenter * :Lex
aug end
