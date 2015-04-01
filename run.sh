#!/bin/bash
set -e

if [[ ${#@} -lt 1 ]]; then
	echo 'Usage:'
	echo '    e.g. run.sh convert -delay <frame>x<frames per sec> -loop 0 *.gif out-file.gif'
	echo '    e.g. run.sh convert -layers Optimize in-file.gif out-file.gif'
	exit 1
fi

docker run --rm \
	-u $(id -u):$(id -g) \
	-v "$PWD:$PWD" \
	-w "$PWD" \
	imagemagick "$@"
