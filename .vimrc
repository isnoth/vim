:set termencoding=utf-8
:set fileencodings=utf-8-bom,ucs-bom,utf-8,cp936,gb18030,ucs,big5
:set fileformats=unix
:set encoding=prc

:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set autoindent " same level indent
:set smartindent " next level indent
:set cindent
":set nu
:set hlsearch
:set backspace=2
:set expandtab



set nocompatible               " be iMproved  
filetype off                   " required!       /**  从这行开始，vimrc配置 **/  

autocmd FileType python setlocal foldmethod=indent
"默认展开所有代码
set foldlevel=99

syntax on

  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" My Bundles here:  /* 插件配置格式 */  
"     
" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'tpope/vim-rails.git'  
" vim-scripts repos  （vim-scripts仓库里的，按下面格式填写）  
Bundle 'L9'  
Bundle 'FuzzyFinder'  
" non github repos   (非上面两种情况的，按下面格式填写)  
Bundle 'SearchComplete'
Bundle 'git://git.wincent.com/command-t.git'  
Bundle 'ctrlp.vim'
Bundle 'vim-javascript'
" ...   
  
filetype plugin indent on     " required!   /** vimrc文件配置结束 **/  
"                                           /** vundle命令 **/  
" Brief help  
" :BundleList          - list configured bundles  
" :BundleInstall(!)    - install(update) bundles  
" :BundleSearch(!) foo - search(or refresh cache first) for foo   
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles  
"     
" see :h vundle for more details or wiki for FAQ   
" NOTE: comments after Bundle command are not allowed..  

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd
let g:vim_markdown_folding_disabled=1



"taglist
let Tlist_Use_Right_Window = 1 
let Tlist_File_Fold_Auto_Close = 1 
let Tlist_Show_One_File = 1 
let Tlist_Sort_Type ='name'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1 
let Tlist_WinWidth = 32 
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"map t :TlistToggle



"winmanager 
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr> 


"csapprox
let g:CSApprox_loaded = 1

"color sheme
set t_Co=256
"colorscheme Mustang
"colorscheme desert256
colorscheme molokai


"paste control
"map <F10>:set paste<CR>
"map <F11>:set nopaste<CR>
inoremap <S-Insert><ESC>:setl paste<CR>gi<C-R>+<ESC>:setl nopaste<CR>gi
"inoremap <S-Insert><ESC>"+p`]a     "same above




"search cmplete
noremap / :call SearchCompleteStart()<CR>/


"map jj to esc
inoremap jj <ESC>


"" NERDTree
map <F10> :NERDTreeToggle<CR>




"vim indent guides
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle
"set ts=2 sw=2 et

"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"let g:indent_guides_auto_colors = 1



"vimdiff ignore space
:set diffopt+=iwhite


"-- Cscope setting --
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-     "cscope with quickfix
nmap <C-n> :cnext<CR>                      
nmap <C-p> :cprev<CR> 

"-- Cscope setting --

"ctrlp
"let g:ctrlp_map = '<c-b>'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore="node_modules"     "ctrlp ignore files


"test plugin
nmap <F11> :call TestGrep() <CR>

