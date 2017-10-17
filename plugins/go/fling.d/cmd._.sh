#!/bin/bash
set -euo pipefail

./cmd.fmt.sh
./cmd.install.sh
./cmd.test.sh
