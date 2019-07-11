#!/usr/bin/env bash

set -eu

if [[ ! -f /etc/code-server/pass ]]; then
	mkdir -p /etc/code-server

	while true; do
		echo
		echo -n "Please enter the password you want to use to access code-server: "
		read -s PASSWORD
		echo
		if [[ ! $PASSWORD ]]; then
			echo "The password cannot be empty."
			continue
		fi

		echo "Thanks"
		echo "$PASSWORD" > /etc/code-server/pass
		break
	done

	echo
	echo "enabling and starting code-server"
	systemctl enable code-server
	systemctl restart code-server
	echo "successfully started code-server"
	echo
fi
