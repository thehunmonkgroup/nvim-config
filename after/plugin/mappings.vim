" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
" Use CTRL-G u to have CTRL-Z only undo the paste.

if 1
  exe 'inoremap <script> <A-v> <C-G>u' . paste#paste_cmd['i']
  exe 'vnoremap <script> <A-v> ' . paste#paste_cmd['v']
endif

" Have Vim jump to the last position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
