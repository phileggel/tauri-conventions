format *ARGS:
    npx prettier {{ARGS}} "docs/**/*.md" README.md

install-hooks:
    git config core.hooksPath .githooks

sync-conventions:
    ./sync-conventions.sh
