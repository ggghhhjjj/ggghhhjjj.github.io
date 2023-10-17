#!/bin/sh

repo_path="../../"

# Check if there are any changes in the repository
if [ -n "$(git -C "$repo_path" status --porcelain)" ]; then
    # If changes exist, commit them
    git -C "$repo_path" add _medias
    git -C "$repo_path" commit -m "Auto-commit changes"
    echo "Changes committed."
    git push
    echo "Changes pushed."
else
    echo "No changes to commit."
fi
