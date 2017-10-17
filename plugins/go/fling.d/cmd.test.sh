#!/bin/bash
source goprj.preamble.shlib

SUBSECTION=${1:-"..."}
SUBSECTION="./$SUBSECTION"
shift || true
go test -i "$SUBSECTION" "$@" &&
go test -v "$SUBSECTION" -timeout="$GOPRJ_TEST_TIMEOUT" "$@" && {
	echo -e "\n\E[1;32mall tests green.\E[0;m"
} || {
	echo -e "\n\E[1;41msome tests failed!\E[0;m"
	exit 4
}
