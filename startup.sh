#!/bin/bash

# Decode key
echo $BASE64 | base64 -d - > $DESTINATION_FILE
