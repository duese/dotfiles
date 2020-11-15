function removeReviews
    git branch --list "review*" | xargs git branch -D
end