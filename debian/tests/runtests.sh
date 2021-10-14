#!/bin/sh

set -e

theHarvester -d kali.org -l 500 -b google >results

if ! grep -q "\[\*\] Hosts found" results; then
    echo "error: no hosts found"
    exit 1
fi

