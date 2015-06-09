DOT_GIT_DIR=$(shell git rev-parse --git-dir)
GIT_SYM_CACHE_DIR:=
export GIT_SYM_CACHE_DIR

test:
	bash test-foo.sh
	bash test-add.sh
clean:
	rm -rf ${DOT_GIT_DIR}/git-sym-local
	rm -f .git-sym
	#git clean -xdf
	#git reset --hard
