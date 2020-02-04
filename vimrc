" reloading terminal command
" source ~/.bashrc 

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary' 
Plugin 'valloric/youcompleteme'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'dense-analysis/ale'
" Plugin 'mlaursen/vim-react-snippets'
" ES2015 code snippets (Optional)
Plugin 'epilande/vim-es2015-snippets'

" React code snippets
Plugin 'epilande/vim-react-snippets'

Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'

" Syntax highlight
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'https://github.com/joshdick/onedark.vim.git'

call vundle#end()            " required
filetype plugin indent on    " required
" 10 essential Vim plugins for 2018
" https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9

"Vim for React and TypeScript Oh My!
" https://levelup.gitconnected.com/vim-for-react-and-typescript-oh-my-40b700c32cc

" Setting up Vim for React development
" https://getaround.tech/setting-up-vim-for-react/

" NERDTree plugin 'scrooloose/nerdtree'
" A file system explorer
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
autocmd vimenter * NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" FZF 'junegunn/fzf.vim'
" fuzzy search through the files in project
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" jiangmiao/auto-pairs 
" inserts quotes and parenthesis in pairs as you type
" Plug 'jiangmiao/auto-pairs'

" 
" tpope/vim-commentary 
" press gcc to comment out a line or gc to comment a selection in visual mode

autocmd FileType apache setlocal commentstring=#\ %s

" 'valloric/youcompleteme'
"  a fast, as-you-type, fuzzy-search code completion engine 
" https://mutebardtison.github.io/2018/08/17/Vim-Plugins-Installation-with-Vundle-in-macOS/
" https://medium.com/@pezcoder/autocomplete-in-vim-for-js-developer-698c6275e341
" Start autocompletion after 4 chars
" let g:ycm_min_num_of_chars_for_completion = 4
" let g:ycm_min_num_identifier_candidate_chars = 4
" let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
" set completeopt-=preview
" let g:ycm_add_preview_to_completeopt = 0
"  Plugin 'valloric/youcompleteme'                                                                                            

" prettier/vim-prettier
" A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.
" :Prettier
" Disables quick-fix to auto open when files have errors
let g:prettier#quickfix_enabled=0

" Plugin 'dense-analysis/ale'
" a plugin providing linting (syntax checking and semantic errors)
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

" Plugin 'mlaursen/vim-react-snippets'
" A collection of common Javascript and Typescript vim snippets for developing React applications. The snippets within this repo rely on UltiSnips as the snippet provider.
"https://vimawesome.com/plugin/vim-react-snippets-ours

" Plugin 'SirVer/ultisnips'
" UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them.
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Plugin 'mattn/emmet-vim'
" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.

" Plugin 'pangloss/vim-javascript'
" let g:javascript_plugin_jsdoc = 1
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END
syntax on

"mxw/vim-jsx
" Allow highlight and indent only jsx
" let g:jsx_ext_required = 1

" pangloss/vim-javascript
" The following variables control certain syntax highlighting plugins.
" let g:javascript_plugin_jsdoc = 1

" vim-airline tab config
let g:airline#extensions#tabline#enabled = 1


colorscheme onedark
"Turn off blink
noremap <expr> k ((line('.')==1)?'':'k')
noremap <expr> j ((line('.')==line('$'))?'':'j')
autocmd GUIEnter * set vb t_vb= " for your GUI
" Turn off preview windows
set completeopt-=preview
" automatically reload vim after save .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Set line number as default
set number
