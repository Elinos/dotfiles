" ========================================
" Mac specific General vim sanity improvements
" ========================================
"
" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with apple-k or apple-d, and add Shift
" to type dashes
imap <silent> <D-k> _
imap <silent> <D-d> _
imap <silent> <D-K> -
imap <silent> <D-D> -

" Change inside various enclosures with Cmd-" and Cmd-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap æ f'ci'
nnoremap Æ f"ci"
nnoremap · f(ci(
nnoremap ‚ f)ci)
nnoremap “ f[ci[
nnoremap ‘ f]ci]

" ==== NERD tree
" Cmd-Shift-N for nerd tree
nmap <F4> :NERDTreeToggle<CR>

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> ∆ }
nnoremap <silent> ˚  {
autocmd FileType ruby map <buffer> ∆ ]m
autocmd FileType ruby map <buffer> ˚  [m
autocmd FileType rspec map <buffer> ∆ }
autocmd FileType rspec map <buffer> ˚  {
autocmd FileType javascript map <buffer> ∆  }
autocmd FileType javascript map <buffer> ˚ {

" Command-/ to toggle comments
map ÷ :TComment<CR>
imap ÷ <Esc>:TComment<CR>i

" Use numbers to pick the tab you want (like iTerm)
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

" Resize windows with arrow keys
nnoremap  <C-w>+
nnoremap Ô <C-w>-
nnoremap Ó <C-w><
nnoremap Ò <C-w>>

" ============================
" Tabularize - alignment
" ============================
" Hit Cmd-Shift-A then type a character you want to align by
nmap Å :Tabularize /
vmap Å :Tabularize /

" Source current file Cmd-% (good for vim development)
map ﬁ :so %<CR>
