Vim�UnDo� ᚳܙ�nVbv�/�8;;��w��jӗ��aw�   `                                   a;/�    _�                     ,       ����                                                                                                                                                                                                                                                                                                                                                             a:To     �   +   ,          G    -- highlight_definitions = { enable = true , disable = {"python"}},5��    +                      �      H               5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             a:Tu    �   +   -   x      -    highlight_definitions = { enable = true},5��    +                     �                     5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             a:Ty     �   +   -   x      ,    highlight_definitions = {enable = true},5��    +                     �                     5�_�                    ,   +    ����                                                                                                                                                                                                                                                                                                                                                             a:Tz    �   +   -   x      -    highlight_definitions = { enable = true},5��    +   +                  �                     5�_�                   x       ����                                                                                                                                                                                                                                                                                                                            p          v          V       a:��     �   o   y       	   +-- require'nvim-treesitter.configs'.setup {   --   rainbow = {   --     enable = true,   F--     disable = {'bash'} -- please disable bash until I figure #1 out   --   }   -- }   --   --   --5��    o       	       	       U
      �       �       5�_�                    s        ����                                                                                                                                                                                                                                                                                                                            p          x           V        a:��     �   r   s          C    disable = {'bash'} -- please disable bash until I figure #1 out5��    r                      �
      D               5�_�      	              r   	    ����                                                                                                                                                                                                                                                                                                                            p          w           V        a:��     �   r   t   x          �   r   t   w    5��    r                      �
                     �    r                     �
                     5�_�      
           	   s       ����                                                                                                                                                                                                                                                                                                                            p          x           V        a:��     �   r   u   x          extended_mode = true,5��    r                    �
                     �    s                     �
                     5�_�   	              
   s       ����                                                                                                                                                                                                                                                                                                                            p          y           V        a:��     �   r   t   y          extended_mode = true,5��    r                     �
                     5�_�   
                 s   ,    ����                                                                                                                                                                                                                                                                                                                            p          y           V        a:��     �   r   t   y      ,    extended_mode = true, -- for html tags ,5��    r   *                 �
                    5�_�                    s   +    ����                                                                                                                                                                                                                                                                                                                            p          y           V        a:��    �   r   t   y      +    extended_mode = true, -- for html tags,5��    r   +                  �
                     5�_�                    t       ����                                                                                                                                                                                                                                                                                                                            p          y           V        a:��    �   v   w                   �   u   w          }�   t   v            }�   s   u              max_file_lines = nil,�   r   t          /    extended_mode = true, -- for html tags, etc�   q   s              enable = true,�   p   r            rainbow = {�   o   q          (require'nvim-treesitter.configs'.setup {�   n   p           �   m   o          &    hlmap["punctuation.bracket"] = nil�   l   n          0    hlmap["punctuation.delimiter"] = "Delimiter"�   k   m              hlmap.error = nil�   j   l          3    local hlmap = vim.treesitter.highlighter.hl_map�   i   k          #require "nvim-treesitter.highlight"�   h   j           �   g   i          }�   f   h            },�   e   g              },�   d   f                show_help = '?',�   c   e                goto_node = '<cr>',�   b   d                update = 'R',�   a   c                unfocus_language = 'F',�   `   b                focus_language = 'f',�   _   a          $      toggle_language_display = 'I',�   ^   `          #      toggle_anonymous_nodes = 'a',�   ]   _          &      toggle_injected_languages = 't',�   \   ^                toggle_hl_groups = 'i',�   [   ]                 toggle_query_editor = 'o',�   Z   \              keybindings = {�   Y   [          N    persist_queries = false, -- Whether the query persists across vim sessions�   X   Z          `    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code�   W   Y              disable = {},�   V   X              enable = true,�   U   W            playground = {�   T   V            },�   S   U              },�   R   T                },�   Q   S          +        ["<leader>E"] = "@parameter.inner",�   P   R                swap_previous = {�   O   Q                },�   N   P          +        ["<leader>e"] = "@parameter.inner",�   M   O                swap_next = {�   L   N                enable = true,�   K   M              swap = {�   J   L           �   I   K              },�   H   J                },�   G   I          $        ["ip"] = "@parameter.inner",�   F   H                  ["il"] = "@loop.inner",�   E   G                  ["al"] = "@loop.outer",�   D   F          &        ["ii"] = "@conditional.inner",�   C   E          &        ["ai"] = "@conditional.outer",�   B   D                  ["ic"] = "@call.inner",�   A   C                  ["ac"] = "@call.outer",�   @   B          $        ["i<S-c>"] = "@class.inner",�   ?   A          $        ["a<S-c>"] = "@class.outer",�   >   @          #        ["if"] = "@function.inner",�   =   ?          #        ["af"] = "@function.outer",�   <   >          D        -- You can use the capture groups defined in textobjects.scm�   ;   =                keymaps = {�   :   <                enable = true,�   9   ;              select = {�   8   :              },�   7   9                enable = false,�   6   8              lsp_interop = {�   5   7            textobjects = {�   4   6           �   3   5            },�   2   4           �   1   3              },�   0   2                },�   /   1          $        smart_rename = "<leader>RN",�   .   0                keymaps = {�   -   /                enable = true,�   ,   .              smart_rename = {�   +   -          .    highlight_definitions = { enable = true },�   *   ,            refactor = {�   )   +           �   (   *            },�   '   )              },�   &   (          !      node_decremental = "<C-c>",�   %   '          "      scope_incremental = "<C-s>",�   $   &          !      node_incremental = "<C-n>",�   #   %                init_selection = "<C-n>",�   "   $              keymaps = {�   !   #              enable = true,�       "            incremental_selection = {�      !           �                  �                   },�                (     enable = true, disable = {"python"}�                   indent = {�                 �                  },�                ,    additional_vim_regex_highlighting = true�                    enable = true,�                  highlight = {�                 �                (  ensure_installed = {"norg", "python"},�                (require'nvim-treesitter.configs'.setup {�                 �                 �                 �                }�                    },�                        branch = "main"�                5        files = { "src/parser.c", "src/scanner.cc" },�                ;        url = "https://github.com/vhyrro/tree-sitter-norg",�   
                 install_info = {�   	             parser_configs.norg = {�      
          Nlocal parser_configs = require('nvim-treesitter.parsers').get_parser_configs()�      	          -- run :TSInstall norg�                ;-- this tells treesitter where to download the .norg parser�                 �                 �                ! -- hi link TSPunctBracket Normal�                 �                + -- set foldexpr=nvim_treesitter#foldexpr()�                  -- set foldmethod=expr5��                                                �               +       +          +       +       �                           D                       �               !       !   E       !       !       �                           g                       �                           h                       �               ;       ;   i       ;       ;       �                         �                     �               N       N   �       N       N       �    	                                         �    
                     #                    �               ;       ;   8      ;       ;       �               5       5   t      5       5       �                         �                    �                         �                    �                         �                    �                           �                      �                           �                      �                           �                      �               (       (   �      (       (       �               (       (   �      (       (       �                                                  �                         !                    �                         1                    �               ,       ,   D      ,       ,       �                         q                    �                           v                      �                         w                    �               (       (   �      (       (       �                         �                    �                           �                      �                           �                      �                          �                    �    !                     �                    �    "                     �                    �    #                     �                    �    $           !       !         !       !       �    %           "       "   7      "       "       �    &           !       !   Z      !       !       �    '                     |                    �    (                     �                    �    )                       �                      �    *                     �                    �    +           .       .   �      .       .       �    ,                     �                    �    -                     �                    �    .                     �                    �    /           $       $         $       $       �    0                     (                    �    1                     1                    �    2                       8                      �    3                     9                    �    4                       >                      �    5                     ?                    �    6                     Q                    �    7                     e                    �    8                     {                    �    9                     �                    �    :                     �                    �    ;                     �                    �    <           D       D   �      D       D       �    =           #       #   �      #       #       �    >           #       #   !      #       #       �    ?           $       $   E      $       $       �    @           $       $   j      $       $       �    A                     �                    �    B                     �                    �    C           &       &   �      &       &       �    D           &       &   �      &       &       �    E                                         �    F                     =                    �    G           $       $   ]      $       $       �    H                     �                    �    I                     �                    �    J                       �                      �    K                     �                    �    L                     �                    �    M                     �                    �    N           +       +   �      +       +       �    O                     �                    �    P                     �                    �    Q           +       +         +       +       �    R                     B                    �    S                     K                    �    T                     R                    �    U                     W                    �    V                     h                    �    W                     {                    �    X           `       `   �      `       `       �    Y           N       N   �      N       N       �    Z                     =                    �    [                       Q                      �    \                     r                    �    ]           &       &   �      &       &       �    ^           #       #   �      #       #       �    _           $       $   �      $       $       �    `                      	                    �    a                     	                    �    b                     :	                    �    c                     N	                    �    d                     h	                    �    e                     	                    �    f                     �	                    �    g                     �	                    �    h                       �	                      �    i           #       #   �	      #       #       �    j           3       3   �	      3       3       �    k                     �	                    �    l           0       0   �	      0       0       �    m           &       &   -
      &       &       �    n                       T
                      �    o           (       (   U
      (       (       �    p                     ~
                    �    q                     �
                    �    r           /       /   �
      /       /       �    s                     �
                    �    t                     �
                    �    u                     �
                    �    v                      �
                     5�_�                    q        ����                                                                                                                                                                                                                                                                                                                            q          u          V       a:�     �   p   q            rainbow = {       enable = true,   /    extended_mode = true, -- for html tags, etc       max_file_lines = nil,     }5��    p                      ~
      o               5�_�                    g        ����                                                                                                                                                                                                                                                                                                                            q          q          V       a:�     �   g   i   q    5��    g                      �	                     �    g                     �	                     �    g                      �	                     5�_�                    h        ����                                                                                                                                                                                                                                                                                                                            r          r          V       a:�   	 �   h   n   r    �   h   i   r    5��    h                      �	              o       5�_�                    u        ����                                                                                                                                                                                                                                                                                                                            w          w          V       a:�$   
 �   t   u              (require'nvim-treesitter.configs'.setup {   }5��    t                      �
      ,               5�_�                    p        ����                                                                                                                                                                                                                                                                                                                            u          u          V       a:�C    �   o              #require "nvim-treesitter.highlight"   3    local hlmap = vim.treesitter.highlighter.hl_map       hlmap.error = nil   0    hlmap["punctuation.delimiter"] = "Delimiter"   &    hlmap["punctuation.bracket"] = nil5��    o                     �	      �       �       5�_�                    i        ����                                                                                                                                                                                                                                                                                                                            i          m          V       a:�    �   h   p   o    �   i   j   o    �   h   i            rainbow = {       enable = true,   /    extended_mode = true, -- for html tags, etc       max_file_lines = nil,     }5��    h                      �	      o               �    h                      �	              N      5�_�                    V        ����                                                                                                                                                                                                                                                                                                                            V          h           V        a:��    �   U   V            playground = {       enable = true,       disable = {},   `    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code   N    persist_queries = false, -- Whether the query persists across vim sessions       keybindings = {          toggle_query_editor = 'o',         toggle_hl_groups = 'i',   &      toggle_injected_languages = 't',   #      toggle_anonymous_nodes = 'a',   $      toggle_language_display = 'I',         focus_language = 'f',         unfocus_language = 'F',         update = 'R',         goto_node = '<cr>',         show_help = '?',       },     },    5��    U                      W      5              5�_�                    _        ����                                                                                                                                                                                                                                                                                                                            V          V           V        a:��    �   ^   _          (--[[ require "nvim-treesitter.highlight"   3    local hlmap = vim.treesitter.highlighter.hl_map       hlmap.error = nil   0    hlmap["punctuation.delimiter"] = "Delimiter"   )    hlmap["punctuation.bracket"] = nil ]]5��    ^                      �      �               5�_�                    ^        ����                                                                                                                                                                                                                                                                                                                            V          V           V        a:��    �   ]               �   \   ^          }�   [   ]            }�   Z   \          6    -- termcolors = {} -- table of colour name strings�   Y   [          +    -- colors = {}, -- table of hex strings�   X   Z          P    max_file_lines = nil, -- Do not enable for files with more than n lines, int�   W   Y          t    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean�   V   X              enable = true,�   U   W            rainbow = {�   T   V            },�   S   U              },�   R   T                },�   Q   S          +        ["<leader>E"] = "@parameter.inner",�   P   R                swap_previous = {�   O   Q                },�   N   P          +        ["<leader>e"] = "@parameter.inner",�   M   O                swap_next = {�   L   N                enable = true,�   K   M              swap = {�   J   L           �   I   K              },�   H   J                },�   G   I          $        ["ip"] = "@parameter.inner",�   F   H                  ["il"] = "@loop.inner",�   E   G                  ["al"] = "@loop.outer",�   D   F          &        ["ii"] = "@conditional.inner",�   C   E          &        ["ai"] = "@conditional.outer",�   B   D                  ["ic"] = "@call.inner",�   A   C                  ["ac"] = "@call.outer",�   @   B          $        ["i<S-c>"] = "@class.inner",�   ?   A          $        ["a<S-c>"] = "@class.outer",�   >   @          #        ["if"] = "@function.inner",�   =   ?          #        ["af"] = "@function.outer",�   <   >          D        -- You can use the capture groups defined in textobjects.scm�   ;   =                keymaps = {�   :   <                enable = true,�   9   ;              select = {�   8   :              },�   7   9                enable = false,�   6   8              lsp_interop = {�   5   7            textobjects = {�   4   6           �   3   5            },�   2   4           �   1   3              },�   0   2                },�   /   1          $        smart_rename = "<leader>RN",�   .   0                keymaps = {�   -   /                enable = true,�   ,   .              smart_rename = {�   +   -          .    highlight_definitions = { enable = true },�   *   ,            refactor = {�   )   +           �   (   *            },�   '   )              },�   &   (          !      node_decremental = "<C-c>",�   %   '          "      scope_incremental = "<C-s>",�   $   &          !      node_incremental = "<C-n>",�   #   %                init_selection = "<C-n>",�   "   $              keymaps = {�   !   #              enable = true,�       "            incremental_selection = {�      !           �                  �                   },�                (     enable = true, disable = {"python"}�                   indent = {�                 �                  },�                ,    additional_vim_regex_highlighting = true�                    enable = true,�                  highlight = {�                 �                (  ensure_installed = {"norg", "python"},�                (require'nvim-treesitter.configs'.setup {�                 �                 �                 �                }�                    },�                        branch = "main"�                5        files = { "src/parser.c", "src/scanner.cc" },�                ;        url = "https://github.com/vhyrro/tree-sitter-norg",�   
                 install_info = {�   	             parser_configs.norg = {�      
          Nlocal parser_configs = require('nvim-treesitter.parsers').get_parser_configs()�      	          -- run :TSInstall norg�                ;-- this tells treesitter where to download the .norg parser�                 �                 �                ! -- hi link TSPunctBracket Normal�                 �                + -- set foldexpr=nvim_treesitter#foldexpr()�                  -- set foldmethod=expr5��                                                �               +       +          +       +       �                           D                       �               !       !   E       !       !       �                           g                       �                           h                       �               ;       ;   i       ;       ;       �                         �                     �               N       N   �       N       N       �    	                                         �    
                     #                    �               ;       ;   8      ;       ;       �               5       5   t      5       5       �                         �                    �                         �                    �                         �                    �                           �                      �                           �                      �                           �                      �               (       (   �      (       (       �               (       (   �      (       (       �                                                  �                         !                    �                         1                    �               ,       ,   D      ,       ,       �                         q                    �                           v                      �                         w                    �               (       (   �      (       (       �                         �                    �                           �                      �                           �                      �                          �                    �    !                     �                    �    "                     �                    �    #                     �                    �    $           !       !         !       !       �    %           "       "   7      "       "       �    &           !       !   Z      !       !       �    '                     |                    �    (                     �                    �    )                       �                      �    *                     �                    �    +           .       .   �      .       .       �    ,                     �                    �    -                     �                    �    .                     �                    �    /           $       $         $       $       �    0                     (                    �    1                     1                    �    2                       8                      �    3                     9                    �    4                       >                      �    5                     ?                    �    6                     Q                    �    7                     e                    �    8                     {                    �    9                     �                    �    :                     �                    �    ;                     �                    �    <           D       D   �      D       D       �    =           #       #   �      #       #       �    >           #       #   !      #       #       �    ?           $       $   E      $       $       �    @           $       $   j      $       $       �    A                     �                    �    B                     �                    �    C           &       &   �      &       &       �    D           &       &   �      &       &       �    E                                         �    F                     =                    �    G           $       $   ]      $       $       �    H                     �                    �    I                     �                    �    J                       �                      �    K                     �                    �    L                     �                    �    M                     �                    �    N           +       +   �      +       +       �    O                     �                    �    P                     �                    �    Q           +       +         +       +       �    R                     B                    �    S                     K                    �    T                     R                    �    U                     W                    �    V                     e                    �    W           t       t   x      t       t       �    X           P       P   �      P       P       �    Y           +       +   >      +       +       �    Z           6       6   j      6       6       �    [                     �                    �    \                     �                    �    ]                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                       ]           V        a;/�     �          ]    �         ]    5��                                           �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        a;/�     �                 -- set foldmethod=expr   + -- set foldexpr=nvim_treesitter#foldexpr()       ! -- hi link TSPunctBracket Normal        5��                          �       i               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        a;/�    �      
   _       �      	   ^    5��                          �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               0                 V   0    a;/K     �              5��           
               i       b              5�_�                    ,   '    ����                                                                                                                                                                                                                                                                                                                                                             a:T�    �   +   -   x      /    highlight_definitions = { enable = false },5��    +   '                 �                    5��