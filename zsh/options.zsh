setopt interactive_comments # Allow comments in interactive shells
setopt auto_cd

setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation

unsetopt nomatch # If a pattern for filename generation has no matches, leave it unchanged in the argument list

setopt no_case_glob  # set ignore case for ls etc
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase
unsetopt menu_complete # do not autoselect the first completion entry

unsetopt correct_all

setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
# setopt transient_rprompt # only show the rprompt on the current prompt

cdpath=(~ ~/code)
