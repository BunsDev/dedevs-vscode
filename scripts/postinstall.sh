#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${0}")/.."
APP_ROOT=$(pwd)

function main() {
	# install dedevs-vscode extensions dependencies
	for entry in "${APP_ROOT}/extensions"/*
	do
		if [ -f "$entry/package.json" ]
		then
			cd $entry
			yarn --frozen-lockfile
		fi
	done

	# install dependencies for the @dedevs/vscode-web
	cd "${APP_ROOT}/vscode-web"
	yarn --frozen-lockfile
}

main "$@"
