Vim�UnDo� �T��.�\�U0	.W���(�,xPBT�    �           O                       V�3)    _�                     ;   J    ����                                                                                                                                                                                                                                                                                                                                                             V�.    �   :   =   �      Jset wildignore=*.o,*~,*.pyc                         "ignore compiled files5�_�                    0        ����                                                                                                                                                                                                                                                                                                                                                             V�      �   /   0          command C !ghci %5�_�                    0        ����                                                                                                                                                                                                                                                                                                                                                             V�      �   /   0           5�_�                    /        ����                                                                                                                                                                                                                                                                                                                                                             V�     �   .   4   �       5�_�                    3       ����                                                                                                                                                                                                                                                                                                                                                             V�!#    �   2   >   �      vmap a- :Tabularize /-><CR>5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                             V�!�    �   <   A   �      endif5�_�                    @   9    ����                                                                                                                                                                                                                                                                                                                                                             V�!�    �   ?   A   �      :autocmd FileType haskell setlocal omnifunc=neoghc#omnifunc5�_�      	              @   9    ����                                                                                                                                                                                                                                                                                                                                                             V�"
    �   ?   A   �      9autocmd FileType haskell setlocal omnifunc=neoghc#omnifun5�_�      
           	   @   ,    ����                                                                                                                                                                                                                                                                                                                                                             V�"5     �   ?   A   �      :autocmd FileType haskell setlocal omnifunc=neoghc#omnifunc5�_�   	              
   @   -    ����                                                                                                                                                                                                                                                                                                                                                             V�"7    �   ?   A   �      :autocmd FileType haskell setlocal omnifunc=neoghc#omnifunc5�_�   
                 +       ����                                                                                                                                                                                                                                                                                                                                                             V�$�   	 �   *   .   �      let g:syntastic_check_on_wq = 05�_�                    -   %    ����                                                                                                                                                                                                                                                                                                                                                             V�%�   
 �   ,   1   �      %map <silent> tw :GhcModTypeInsert<CR>5�_�                    2        ����                                                                                                                                                                                                                                                                                                                                                             V�%�     �   1   2          Dau FileType haskell nnoremap <buffer> <silent> tt :HdevtoolsType<CR>5�_�                    2        ����                                                                                                                                                                                                                                                                                                                                                             V�%�     �   1   2          Eau FileType haskell nnoremap <buffer> <silent> tq :HdevtoolsClear<CR>5�_�                    1        ����                                                                                                                                                                                                                                                                                                                                                             V�%�    �   0   1           5�_�                   9        ����                                                                                                                                                                                                                                                                                                                            9           @           v        V�,�    �   ?   A           �   >   @          endif�   =   ?          	    endif�   <   >          Q        inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o")<cr>�   ;   =              if has("unix")�   :   <          else�   9   ;          M    imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o")<cr>�   8   :          if has("gui_running")5�_�                    7        ����                                                                                                                                                                                                                                                                                                                                                             V�-    �   6   8   �      2let g:SuperTabDefaultCompletionType = '<c-x><c-o>'5�_�                        O    ����                                                                                                                                                                                                                                                                                                                                                             V�3(    �         �      Oset lazyredraw                                      "only redraw when necessary5�_�                   9        ����                                                                                                                                                                                                                                                                                                                            9           9           v        V�,�     �   8   B   �      $let g:haskellmode_completion_ghc = 1�   8   :   �      % let g:haskellmode_completion_ghc = 15�_�                       O    ����                                                                                                                                                                                                                                                                                                                                                             V�(v    �         �      Oset lazyredraw                                      "only redraw when necessary       0let $PATH = $PATH . ':' . expand('~/.local/bin')5��