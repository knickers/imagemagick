# imagemagick
Setup to accept command line arguments as if you had it installed on your system

Run this container
	docker run --rm \
		-u $(id -u):$(id -g) \
		-v "$PWD:$PWD" \
		-w "$PWD" \
		imagemagick "$@"

Use command line arguments
	./run.sh convert -delay <frame>x<frames per sec> -loop 0 *.gif out-file.gif'
	./run.sh convert -layers Optimize in-file.gif out-file.gif'
