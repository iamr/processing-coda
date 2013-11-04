#!/bin/bash
folder_path=$(dirname "$CODA_FILEPATH")

processing-java --sketch="$folder_path" --output="$folder_path/application.windows64" --export --platform=windows --bits=32 --force
processing-java --sketch="$folder_path" --output="$folder_path/application.windows64" --export --platform=windows --bits=64 --force