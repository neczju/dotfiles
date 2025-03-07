" my minimal vimrc

" vim-plug
call plug#begin()

Plug 'yegappan/lsp'
Plug 'nanotech/jellybeans.vim'

call plug#end()

" lsp config
let lspOpts = #{autoHighlightDiags: v:true, showDiagOnStatusLine: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
	\	  name: 'clang',
	\	  filetype: ['c', 'cpp'],
	\	  path: '/usr/bin/clangd',
	\	  args: ['--background-index', '--clang-tidy']
	\ },
    \ #{
    \     name: 'pylsp',
    \     filetype: ['python'],
    \     path: '/usr/bin/pylsp',
    \     args: [],
    \ },
    \ #{
    \     name: 'rustanalyzer',
    \     filetype: ['rust'],
    \     path: '/usr/bin/rust-analyzer',
    \     args: [],
    \     syncInti: v:true
    \ }]
autocmd User LspSetup call LspAddServer(lspServers)

" settings
syntax enable
filetype plugin indent on
set nocompatible
set number
set termguicolors
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest

" Colorscheme
set background=dark
colorscheme jellybeans
hi SignColumn guibg=#151515
