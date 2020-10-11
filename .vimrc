set ts=4 sw=4
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set autoindent
set smartindent

set nocompatible              " be iMproved, required
filetype off                  " required

" Set system copy command
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

" Get rid of annoying scratch window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" tmux support
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'

" COC.nvim
Plugin 'neoclide/coc.nvim'

" Base16 Themes
Plugin 'chriskempson/base16-vim'
syntax on
if filereadable(expand("~/.vimrc_background"))
	  let base16colorspace=256
	    source ~/.vimrc_background
	endif
colorscheme base16-tomorrow-night-eighties
let base16colorspace=256

" Auto close brackets
Plugin 'Raimondi/delimitMate'
au FileType markdown let b:loaded_delimitMate = 0 " no delimitMate for markdown
filetype plugin indent on
" Prettier
Plugin 'prettier/vim-prettier'

" Nerdtree 
Plugin 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" Wakatime
Plugin 'wakatime/vim-wakatime'

" Autocomplete with YouCompleteMe
"Plugin 'ycm-core/YouCompleteMe'

"JS linter - Asynchronous Lint Engine
Plugin 'w0rp/ale'
let b:ale_fixers = ['prettier']

" Always copy to system clipboard
Plugin 'christoomey/vim-system-copy'

" JS Syntax highlighting
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1


" Rainbow Brackets
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1

" Markdown Syntax Highlighting
Plugin 'tpope/vim-markdown'

" markdown preview
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()

"Disable auto comment on new line feature
setlocal formatoptions-=cro
