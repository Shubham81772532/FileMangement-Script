#!/bin/bash
# Date: 10-April-2026
# Team: eoffice
# Managed by Shubham

# File Manager Script

# Variables
ACTION=$1
FILE=$2
ARG1=$3
ARG2=$4

# Case statement
case $ACTION in

# Create file (with/without content)
addFile)
    mkdir -p "$(dirname "$FILE")"

    if [ -n "$ARG1" ]; then
        echo "$ARG1" > "$FILE"
        echo "[SUCCESS] File created with content"
    else
        touch "$FILE"
        echo "[SUCCESS] File created"
    fi

    if [ -s "$FILE" ]; then
        CONTENT=$(cat "$FILE")
        echo "[INFO] File content: $CONTENT"
    else
        echo "[INFO] File is empty"
    fi
    ;;

# Add content at end
addContent)
    echo "$ARG1" >> "$FILE"
    echo "[SUCCESS] Content added"
    ;;

# Add content at top
addTop)
    sed -i "1i $ARG1" "$FILE"
    echo "[SUCCESS] Content added at top"
    ;;

# Show first N lines
showTop)
    head -n "$ARG1" "$FILE"
    ;;

# Show last N lines
showLast)
    tail -n "$ARG1" "$FILE"
    ;;

# Show specific line
showLine)
    sed -n "${ARG1}p" "$FILE"
    ;;

# Show range of lines
showRange)
    sed -n "${ARG1},${ARG2}p" "$FILE"
    ;;

# Move file
move)
    mv "$FILE" "$ARG1"
    echo "[SUCCESS] File moved"
    ;;

# Copy file
copy)
    cp "$FILE" "$ARG1"
    echo "[SUCCESS] File copied"
    ;;

# Clear file content
clear)
    > "$FILE"
    echo "[SUCCESS] File cleared"
    ;;

# Delete file
delete)
    rm "$FILE"
    echo "[SUCCESS] File deleted"
    ;;

# Help section
help)
    echo "===== FileManager Commands ====="
    echo "1. addFile    /path/file.txt \"content\""
    echo "2. addContent /path/file.txt \"text\""
    echo "3. addTop     /path/file.txt \"text\""
    echo "4. showTop    /path/file.txt N"
    echo "5. showLast   /path/file.txt N"
    echo "6. showLine   /path/file.txt N"
    echo "7. showRange  /path/file.txt start end"
    echo "8. move       /path/file.txt /new/path"
    echo "9. copy       /path/file.txt /new/path"
    echo "10. clear     /path/file.txt"
    echo "11. delete    /path/file.txt"
    echo "================================"
    ;;

# Invalid input
*)
    echo "[ERROR] Invalid command"
    echo "Run: ./newFile.sh help"
    ;;
esac