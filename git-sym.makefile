# Instead of 'touch', you can use:
#   cp, rsync, wget, curl, etc.

foo:
	touch $@
dirlink:
	mkdir -p dirlink/subdir
	touch dirlink/x
	touch dirlink/subdir/a
	touch dirlink/subdir/b
