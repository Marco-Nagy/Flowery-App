#!/bin/bash

BRANCH_NAME=$1

BRANCH_NAME=$(basename "$BRANCH_NAME")

PATTERN="^(feature|bugfix|release)\/[A-Za-z0-9._-]+(-[A-Za-z0-9._-]+)*$"

echo "Validating branch name: $BRANCH_NAME"

if [[ $BRANCH_NAME =~ $PATTERN ]]; then
    echo "✅ Branch name is valid."
    exit 0
else
    echo "❌ Invalid branch name: '$BRANCH_NAME'."
    echo "Branch name must follow the pattern: 'feature/<name>', 'bugfix/<name>', or 'release/<name>'."
    exit 1
fi
