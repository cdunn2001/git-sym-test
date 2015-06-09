make clean
git stash # just in case
set -ex
git-sym check && exit 1
git-sym update
git-sym check
echo 'NEW' > links/new
git-sym link --add links/new
git-sym check links/new
git commit -m 'added new'
git-sym check
rm -f ${GIT_SYM_CACHE_DIR}/sha1.03a0d6dfaf6ce321d16947e2cf0cdc384d6d871c.new
rm -f .git-sym/sha1.03a0d6dfaf6ce321d16947e2cf0cdc384d6d871c.new
git-sym -s check && exit 1
git reset --hard HEAD~1
echo done
