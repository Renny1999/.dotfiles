## Some Tree-sitter and colorsheme notes
-  in `queries/c/highlights.scm` under the nvim-treesitter plugin directory in .local/share/nvim/plugged, make the following change:
```
<<<<<<<FROM
; Lower priority to prefer @parameter when identifier appears in parameter_declaration.
((identifier) @variable (#set! "priority" 95))
>>>>>>>TO
; Lower priority to prefer @parameter when identifier appears in parameter_declaration.
((identifier) @variable (#set! "priority" 100))
```
