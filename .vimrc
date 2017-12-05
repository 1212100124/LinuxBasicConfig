" my configuration
" 关闭vi的一致性模式，避免以前版本的一些Bug和局限  
set nocompatible  

" 打开鼠标功能
set mouse=a

syntax on "配色
syntax enable "语法高亮

" 设置取消备份，禁止临时文件生成  
set nobackup  
set noswapfile  

" 设置C/C++方式自动对齐  
set autoindent  
set cindent  
set smartindent  


" 设置编码方式  
set encoding=utf-8 

"set number "显示行号
set tabstop=4  "tab宽度
set shiftwidth=4  "设置自动对齐空格数

filetype on "检测文件类型
filetype indent on "针对不同文件采用不同的缩进方式
filetype plugin on "允许插件

set showmatch "设置代码匹配，包括括号匹配情况

set nocp

" Tlist的配置
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
" 用ctrl+f1代替 :Tlist并且不需要回车确认


" ctags的配置 ctrl+f12快速生成tags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  

" vim支持cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
" 添加 cscope.out
cs add /home/jackie/fragmetation/linux-4.12.1/linux/cscope.out

" Tlist 的快捷键
map <F2> :Tlist <CR> 
" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
"  当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
