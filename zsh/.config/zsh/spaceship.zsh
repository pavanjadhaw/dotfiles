# spaceship prompt config
SPACESHIP_PROMPT_ADD_NEWLINE=false

SPACESHIP_DIR_TRUNC=4
SPACESHIP_DIR_TRUNC_REPO=false

SPACESHIP_CHAR_SYMBOL=λ
SPACESHIP_CHAR_SUFFIX=" "

# SPACESHIP_VI_MODE_INSERT="[insert]"
# SPACESHIP_VI_MODE_NORMAL="[normal]"

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  # vi_mode       # Vi-mode indicator
)
