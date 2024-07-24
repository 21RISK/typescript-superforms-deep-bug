#!/bin/bash

echo "running post-create-command.sh"

# Mark git safe
git config --global --add safe.directory /workspace

npm ci

echo 'Done installing with npm ci, will now source git completions...'
source /usr/share/bash-completion/completions/git

echo "✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅"
echo "Done! Now run > npm run dev <"
echo "✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅ ✅"