
# Adapted from code found at <https://gist.github.com/joshdick/4415470>.
# Adapted from code found at <https://gist.github.com/1712320>.

# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_AHEAD="+ANUM"
GIT_PROMPT_BEHIND="-BNUM"
GIT_PROMPT_MERGING="~"
# GIT_PROMPT_UNTRACKED="?"
GIT_PROMPT_UNTRACKED=" "
GIT_PROMPT_MODIFIED="*"
GIT_PROMPT_STAGED="+"

# Show Git branch/tag, or name-rev if on detached head
parse_git_branch() {
(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {

# Compose this value via multiple conditional appends.
local GIT_STATE=""

local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
if [ "$NUM_AHEAD" -gt 0 ]; then
GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
fi

local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
if [ "$NUM_BEHIND" -gt 0 ]; then
GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
fi

local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
fi

if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
fi

if ! git diff --quiet 2> /dev/null; then
GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
fi

if ! git diff --cached --quiet 2> /dev/null; then
GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
fi

if [[ -n $GIT_STATE ]]; then
echo "$GIT_STATE"
fi

}

# If inside a Git repository, print its branch and state
git_prompt_string() {
local git_where="$(parse_git_branch)"
[ -n "$git_where" ] && echo "[$(parse_git_state)](${git_where#(refs/heads/|tags/)})"
}
