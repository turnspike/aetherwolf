
"-- all files
" don't autocomment newlines
autocmd FileType * setlocal formatoptions-=cro
"autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

au FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
au FileType python set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
au FileType make setlocal noexpandtab|set softtabstop=4
