#!/bin/bash
folder_path=$(dirname "$CODA_FILEPATH")

processing-java --sketch="$folder_path" --output="$folder_path/export" --export --force

open "$folder_path"