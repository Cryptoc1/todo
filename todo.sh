#!/bin/bash

function usage {
	echo "todo usage:"
	echo "	-c    View the TODO file using \`cat\`."
	echo "	-e    Edit the TODO file."
	echo "	-h    Print this usage message."
	echo "	-l    View the TODO file using \`less\`."
}
args=("$@")

if [ "$#" -lt 1 ]; then
	if [ -f ~/.todo ]; then
		usage
	else
		echo "# TODO" > ~/.todo
		echo "TODO file created, use \`todo -e\` to edit it."
	fi
else
	if [ "${args[0]}" = "-c" ]; then
		echo "Using \`cat\` to view TODO file"
		cat ~/.todo
	elif [ "${args[0]}" = "-e" ]; then
		echo "Editing TODO file..."
		$EDITOR ~/.todo
		echo "Done editing TODO file"
	elif [ "${args[0]}" = "-h" ]; then
		echo $usage
	elif [ "${args[0]}" = "-l" ]; then
		echo "Using \`less\` to view TODO file"
		less ~/.todo
	else
		echo "Unknown arguments"
		usage
	fi
fi
