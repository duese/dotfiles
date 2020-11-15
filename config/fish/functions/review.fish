function review --description "Upload a change for review to gerrit."
    # Extract the current branch
    set CURRENT_BRANCH (git rev-parse --abbrev-ref HEAD)

    # The Topic should be set to the issue ID,
    # so we cut off everything after the first slash:
    set TOPIC_CANDIDATES (string split / $CURRENT_BRANCH)

    if [ $TOPIC_CANDIDATES[1] = "review" ]
      set TOPIC $TOPIC_CANDIDATES[-1]
    else
      set TOPIC $TOPIC_CANDIDATES[-2]
    end

    echo "Topic will be set to '$TOPIC'"

    git-review --no-rebase --topic $TOPIC
end