# File Manager Script (filename.sh)

## Usage
./filename.sh <action> <file> [arg1] [arg2]

## Actions
addFile     -> Create file (with/without content)  
addContent  -> Append content to file  
addTop      -> Add content at top  
showTop     -> Show first N lines  
showLast    -> Show last N lines  
showLine    -> Show specific line  
showRange   -> Show line range  
move        -> Move file  
copy        -> Copy file  
clear       -> Clear file content  
delete      -> Delete file  
help        -> Show commands  

## Commands
./filename.sh addFile /path/file.txt "Hello"  
./filename.sh addContent /path/file.txt "New Line"  
./filename.sh addTop /path/file.txt "Top Line"  
./filename.sh showTop /path/file.txt 3  
./filename.sh showLast /path/file.txt 2  
./filename.sh showLine /path/file.txt 5  
./filename.sh showRange /path/file.txt 2 6  
./filename.sh move /path/file.txt /new/path/  
./filename.sh copy /path/file.txt /new/path/  
./filename.sh clear /path/file.txt  
./filename.sh delete /path/file.txt  

## Requirements
chmod +x filename.sh  

## Notes
Uses: mkdir, touch, sed, head, tail, mv, cp, rm  
Quotes required for content with spaces  

Output SS:
![OutPut 1](<Screenshot 2026-04-15 at 10.45.48 PM.png>) 
![OutPut 2](<Screenshot 2026-04-15 at 10.45.58 PM.png>) 
![OutPut 3](<Screenshot 2026-04-15 at 10.46.06 PM.png>)


## Author
Shubham | Team eOffice | 10-04-2026