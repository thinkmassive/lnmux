#!/bin/bash

cd /opt/lnmux

# initialize db
go run ./cmd/lnmuxd -c lnmux.yml migrate init

# migrate to latest db schema
go run ./cmd/lnmuxd -c lnmux.yml migrate up

# run lnmuxd
go run ./cmd/lnmuxd -c lnmux.yml run
