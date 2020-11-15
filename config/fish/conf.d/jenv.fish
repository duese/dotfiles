
if [ (hostname) != "cube" ]
    # jenv config
    status --is-interactive; and source (jenv init -|psub)
    # Output of homebrew told me to add the following lines
    # to configure jenv for fish:
    export PATH="$HOME/.jenv/bin:$PATH"
end