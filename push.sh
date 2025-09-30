#!/bin/bash
set -euo pipefail

git status

# Hàm rollback nếu script fail
rollback() {
    echo "Push thất bại. Hoàn tác git add và git commit..."
    git reset --soft HEAD~1 2>/dev/null || true   # bỏ commit cuối nếu có
    git reset 2>/dev/null || true                # bỏ stage (git add)
}
trap rollback ERR


# check if have modifile
# Kiểm tra có thay đổi nào không (tracked hoặc untracked)
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
    echo "Không có thay đổi nào, thoát."
    exit 0
fi

# if somthing change then continue ... 

git add .
git commit -m "update data"
git push origin main
