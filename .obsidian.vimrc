" Have j and k navigate visual lines rather than logical ones
nmap k gk
	
nmap e gj
" unmap <Space> 
" let mapleader = " "
" noremap <leader>o gg
noremap <space>g gg
noremap ; :
noremap n h
noremap n h
noremap N 0
noremap u k
noremap U 5k
noremap e j
noremap E 5j
noremap i l
noremap I $

noremap k i
noremap K I
noremap h n
noremap H N

noremap l u
noremap L <C-r>


map W 5w
map B 5b

" nmap l u
" nmap L <C-r>

" I like using H and L for beginning/end of line
" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
