#!/usr/bin/env bash

set -euxo pipefail

cat >> ~/.bashrc <<EOF

# Will prompt for a code-server password is one is not already set
# and then restart code-server.
/opt/coder/code-server-pass.sh
EOF
