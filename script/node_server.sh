#!/bin/bash
PACKAGE_DIR=$(rospack find rosgolf_web_interface)
cd $PACKAGE_DIR/web_interface
node main.js $@