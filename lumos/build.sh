#!/bin/bash
echo "Building..."
cp caseta-button-event-listener/*.py build
cd lumos
cargo build
cp target/debug/lumos ../build