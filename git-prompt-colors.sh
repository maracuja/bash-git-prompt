
local PathShort="\w"
local UserName="\u"
local HostName="\h"

# These are the color definitions used by gitprompt.sh
GIT_PROMPT_PREFIX=""                 # start of the git info string
GIT_PROMPT_SUFFIX=""                 # the end of the git info string
GIT_PROMPT_SEPARATOR=" "              # separates each item

GIT_PROMPT_BRANCH="${Magenta}"        # the git branch that is active in the current directory
GIT_PROMPT_STAGED="${Red}● "           # the number of staged files/directories
GIT_PROMPT_CONFLICTS="${Red}x"        # the number of files in conflict
GIT_PROMPT_CHANGED="${Red}✚ "         # the number of changed files

GIT_PROMPT_REMOTE=" "                 # the remote branch name (if any) and the symbols for ahead and behind
GIT_PROMPT_UNTRACKED="${Cyan}…"       # the number of untracked files/dirs
GIT_PROMPT_STASHED="${BoldBlue}⚑"     # the number of stashed files/dir
GIT_PROMPT_CLEAN="${BoldGreen}o"      # a colored flag indicating a "clean" repo

GIT_PROMPT_COMMAND_OK="${Green}o"    # indicator if the last command returned with an exit code of 0
GIT_PROMPT_COMMAND_FAIL="${Red}x"   # indicator if the last command returned with an exit code of other than 0

local DockerPrompt=""
if [[ "$DOCKER_MACHINE_NAME" != "" ]]; then
    DockerPrompt="\ndocker: ${Cyan}🐳  $DOCKER_MACHINE_NAME ${ResetColor}"
fi

GIT_PROMPT_START_USER="\nsession: ${Yellow}${UserName}@${HostName} ${White}\ndir: ${Green}${PathShort}${ResetColor} ${DockerPrompt} \nbranch:"
GIT_PROMPT_START_ROOT=GIT_PROMPT_START_USER
GIT_PROMPT_END_USER=" \n${White}~ 🍔 ${ResetColor} "
GIT_PROMPT_END_ROOT=GIT_PROMPT_END_USER

# Please do not add colors to these symbols
GIT_PROMPT_SYMBOLS_AHEAD="↑·"         # The symbol for "n versions ahead of origin"
GIT_PROMPT_SYMBOLS_BEHIND="↓·"        # The symbol for "n versions behind of origin"
GIT_PROMPT_SYMBOLS_PREHASH=":"        # Written before hash of commit, if no name could be found

