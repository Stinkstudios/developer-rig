#!/usr/bin/env bash

CERT_NAME=${1:-selfsigned}
CERT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"; cd ../ && pwd )"
 echo "Installing cert into local Keychain."
echo "To see or modify, run 'Keychain Access' app and look in the 'System' Folder"

sudo security add-trusted-cert -d -p ssl -r trustRoot -k "/Library/Keychains/System.keychain" "${CERT_DIR}/${CERT_NAME}"
