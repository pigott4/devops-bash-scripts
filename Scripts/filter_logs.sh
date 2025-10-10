#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_log_file> <output_file>"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="$2"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' does not exist."
    exit 2
fi

grep -E 'ERROR|WARN' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Filtered log saved to '$OUTPUT_FILE'"
