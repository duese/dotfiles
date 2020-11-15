
# bobthefish (fish prompt) overrides
# see https://github.com/oh-my-fish/theme-bobthefish
set -g theme_use_abbreviated_branch_name no
set -g theme_date_format "+%Y-%m-%d %H:%M:%S"
set -g theme_date_timezone Europe/Berlin

# jenv config
status --is-interactive; and source (jenv init -|psub)
# Output of homebrew told me to add the following lines
# to configure jenv for fish:
export PATH="$HOME/.jenv/bin:$PATH"