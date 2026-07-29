#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/install.sh"
"$SCRIPT_DIR/link.sh"
"$SCRIPT_DIR/services.sh"
"$SCRIPT_DIR/finish.sh"