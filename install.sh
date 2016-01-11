#!/bin/bash

echo "Installing todo.sh to /usr/local/bin/todo"

if [ -f "/usr/local/bin/todo" ]; then
	echo "Updating /usr/local/bin/todo"
	rm /usr/local/bin/todo
fi

cp todo.sh /usr/local/bin/todo
