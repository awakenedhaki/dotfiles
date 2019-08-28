# General

# Font
POWERLEVEL9K_MODE='nerdfont-complete'

## Double-lined prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

## Double lined prompt Right segment
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

## Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

## Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

## Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

## Dollar Sign
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

## Add new line between commands
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

## Only show current directory
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

##
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true

# ============================================================
# Git

## VCS status color
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="red"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'

# ============================================================
## Context template
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'

# ============================================================
# Battery
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

# ============================================================
# CUSTOM
## Create a custom Python prompt section
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f'"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

## Create a custom Java prompt section
POWERLEVEL9K_CUSTOM_JAVA="echo -n '\ue256'"
POWERLEVEL9K_CUSTOM_JAVA="black"
POWERLEVEL9K_CUSTOM_JAVA_BACKGROUND="yellow"

# ============================================================
# Segments

## Left segment
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	os_icon
	context
	battery
	dir
	vcs
	)

## Right segment
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
	status 
	time 
	dir_writable 
	ram 
	load 
	background_jobs
)
