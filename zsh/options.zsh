setopt interactive_comments # Allow comments in interactive shells

setopt auto_cd
cdpath=(~ ~/code)


# Globbing
setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation
unsetopt nomatch # If a pattern for filename generation has no matches, leave it unchanged in the argument list

setopt no_case_glob  # set ignore case for ls etc

unsetopt correct_all # Do not try to correct the spelling of all arguments in a line.

setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt

# ???
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
