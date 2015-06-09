make clean
set -ex
git-sym -s check && exit 1
git-sym update
git-sym check
echo done
