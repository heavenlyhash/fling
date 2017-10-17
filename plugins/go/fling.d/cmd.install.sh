#!/bin/bash
source goprj.preamble.shlib

go install -ldflags "$GOPRJ_LDFLAGS" ./cmd/*
