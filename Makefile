
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/Users/wangbin/Documents/git/github/nginx/sbin/nginx -t

	kill -USR2 `cat /Users/wangbin/Documents/git/github/nginx/logs/nginx.pid`
	sleep 1
	test -f /Users/wangbin/Documents/git/github/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /Users/wangbin/Documents/git/github/nginx/logs/nginx.pid.oldbin`
