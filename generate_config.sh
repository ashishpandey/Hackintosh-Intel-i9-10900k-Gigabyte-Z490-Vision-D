#!/bin/bash

##############################################################
### This script takes a config.plist template and substitutes
### SystemSerialNumber, SystemUUID and MLB
### from secrets.env file (see secrets.example)
##############################################################

set -ue

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ ! -f "${SCRIPT_DIR}/secrets.env" ]; then
    echo "Usage: generate_config.sh <path to config.plist template>"
    exit 1
fi

if [ $# -ne 1 ]; then
    echo "Usage: generate_config.sh <path to config.plist template>"
    exit 1
fi

TEMPLATE_PATH=$1
if [ ! -f "${TEMPLATE_PATH}" ]; then
    echo "Usage: generate_config.sh <path to config.plist template>"
    exit 1
fi

echo "Reading secrets"
source "${SCRIPT_DIR}/secrets.env"

echo "Generating config"
cp "${TEMPLATE_PATH}" "${SCRIPT_DIR}/EFI/OC/config.plist"

echo "Applying secrets"
/usr/libexec/PlistBuddy "${SCRIPT_DIR}/EFI/OC/config.plist" \
    -c "Set PlatformInfo:Generic:MLB ${MLB}";
/usr/libexec/PlistBuddy "${SCRIPT_DIR}/EFI/OC/config.plist" \
    -c "Set PlatformInfo:Generic:SystemSerialNumber ${SystemSerialNumber}";
/usr/libexec/PlistBuddy "${SCRIPT_DIR}/EFI/OC/config.plist" \
    -c "Set PlatformInfo:Generic:SystemUUID ${SystemUUID}";

echo "Generated EFI/OC/config.plist"
