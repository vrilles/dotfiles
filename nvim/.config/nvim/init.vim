call plug#begin('~/.config/nvim/plugged')
 Plug 'dense-analysis/ale'
 Plug 'jiangmiao/auto-pairs'
 Plug 'tpope/vim-rsi'
 Plug 'tpope/vim-commentary'
 Plug 'neovim/nvim-lspconfig'
 Plug 'nvim-lua/plenary.nvim'

 Plug 'jalvesaq/Nvim-R'
 Plug 'elixir-editors/vim-elixir'
 Plug 'neovimhaskell/haskell-vim'
 Plug 'zah/nim.vim'
 Plug 'brandonbloom/vim-factor'
 Plug 'Olical/conjure'
 Plug 'Julian/lean.nvim'
call plug#end()

syntax on
filetype plugin indent on
set clipboard+=unnamedplus
colorscheme rein

map <leader>ll :w <CR> :!xelatex -shell-escape % <CR>
map <leader>re :source $MYVIMRC <CR>
map <leader>cl :ConjureLogVSplit <CR>
map <F8> :w <CR> :!g++ % -o %< && ./%< <CR>
nnoremap <backspace> :<backspace>
map <C-h> :noh <CR><backspace>
nnoremap <silent><leader>aa :ALEToggle<CR>
nmap <leader>sp :call <SID>SynStack()<CR>

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let maplocalleader = "\\"
let g:tex_flavor = "latex"
let g:ale_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '×'
let g:ale_sign_warning = '!'

command! WQ wq
command! Wq wq
command! W w
command! Q q
cabbrev he tab help

autocmd BufNewFile *tex 0r ~/.config/nvim/templates/template.tex
autocmd FileType c setlocal noet tw=80
autocmd FileType h setlocal noet tw=80
autocmd FileType help setlocal laststatus=0

set notermguicolors nosol conceallevel=2 path=$PWD/** wildmenu laststatus=2 splitright tabstop=4 noruler softtabstop=4 expandtab shiftwidth=4 smarttab smartcase guicursor= wildignore+=*/tmp/*,*.so,*.swp,*.zip, wildignore+=*.flac,*.mp3

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunc

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunc

set statusline=
set statusline+=%2*\%{StatuslineGit()}
set statusline+=%4*\%f
set statusline+=%=
set statusline+=%4*\ %l
set statusline+=%3*\ %{&filetype}
setlocal foldlevel=6

hi link User1 User
hi link User2 Normal
hi link User3 String
hi link User4 Folded
hi EndOfbuffer ctermfg=0 ctermbg=0
