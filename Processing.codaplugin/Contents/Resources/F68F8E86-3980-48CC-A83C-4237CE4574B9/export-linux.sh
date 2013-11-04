#!/bin/bash
folder_path=$(dirname "$CODA_FILEPATH")

processing-java --sketch="$folder_path" --output="$folder_path/application.linux32" --export --platform=linux --bits=32 --force
processing-java --sketch="$folder_path" --output="$folder_path/application.linux64" --export --platform=linux --bits=64 --force