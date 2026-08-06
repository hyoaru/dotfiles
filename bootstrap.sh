#!/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/install.sh"
"$SCRIPT_DIR/apply.sh"

echo "Bootstrap complete!"
