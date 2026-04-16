#!/bin/bash
#Team eoffice
#date 10-04-2026
#manage by shubham


#varriabel declaring
action=$1
path=$2
name=$3
full_path=$4

echo "list of tasks"
echo "+++++++++++++++++++++++++++++++++++++++++++"

    echo "File-Utility-Script.sh addDir /path dirname"
    echo "File-Utility-Script.sh deleteDir /path dirname"
    echo "File-Utility-Script.sh listDir /path"
    echo "File-Utility-Script.sh listFiles /path"
    echo "File-Utility-Script.sh listAll /path"

echo "+++++++++++++++++++++++++++++++++++++"

#directory add
if [ "$action" = "addDir" ]; then
    mkdir -p "$path/$name"
    echo "Directory created: $path/$name"
    full_path=$(realpath "$path/$name")
    echo "Location:- $full_path"


#deleting dir form current path
elif [ "$action" = "deleteDir" ]; then
    rm -rf "$path/$name"
    echo "Directory deleted: $path/$name"
    echo "directory list"

#list of current patg directory
elif [ "$action" = "listDir" ]; then
    ls -d "$path"/*/

#list of files
elif [ "$action" = "listFiles" ]; then
    find "$path" -maxdepth 1 -type f

#list of all file and director
elif [ "$action" = "listAll" ]; then
    find "$path" -maxdepth 1 -mindepth 1

else
    echo "error select correct"

fi