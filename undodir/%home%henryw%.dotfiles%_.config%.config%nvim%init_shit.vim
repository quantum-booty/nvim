Vim�UnDo� �yl�^9L*��p�q��(X$� �^�������   o                                  a;0    _�                              ����                                                                                                                                                                                                                                                                                                                                                  V        a;/T     �       $   &       �       "   %    5��                                                �                                                �    !                                           5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                  V        a;/U     �   "   �   (    �   "   #   (    5��    "               ]                     �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                  V        a;/V     �   �   �                   lua require('treesitter_config')5��    �                      �      #               5�_�                    #        ����                                                                                                                                                                                                                                                                                                                            #          5           V        a;/\     �   "   #           -- set foldmethod=expr   + -- set foldexpr=nvim_treesitter#foldexpr()       ! -- hi link TSPunctBracket Normal           ;-- this tells treesitter where to download the .norg parser   -- run :TSInstall norg   Nlocal parser_configs = require('nvim-treesitter.parsers').get_parser_configs()   parser_configs.norg = {       install_info = {   ;        url = "https://github.com/vhyrro/tree-sitter-norg",   5        files = { "src/parser.c", "src/scanner.cc" },           branch = "main"       },   }            5��    "                            �              5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            $          $          v       a;/a    �   #   %   o      (  ensure_installed = {"norg", "python"},5��    #                     D                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       a;0     �                #require("indent_blankline").setup {       char = '|',   #    buftype_exclude = {"terminal"},       space_char_blankline = " ",       use_treesitter = true,        show_current_context = true,   }5��                          M      �               5�_�                     f        ����                                                                                                                                                                                                                                                                                                                                                V       a;0    �   f   n   h    �   f   g   h    5��    f                      !
              �       5��