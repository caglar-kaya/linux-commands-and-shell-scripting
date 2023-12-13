# Exercise 1 - Navigating Files and Directories

## 1.1. Get the location of the present working directory

> pwd

## 1.2. List the files and directories in a directory

> ls

# Exercise 2 - Creating Files and Directories

## 2.1. Create a directory

> mkdir test_directory

## 2.2. Change your current working directory

> cd test_directory

## 2.3. Create an empty file

> touch myfile.txt

# Exercise 3 - Managing Files and Directories

## 3.1. Search for and locate files

> find /Users/caglar/Desktop/test_directory -name "myfile*"

## 3.2. Remove files

> rm -i myfile.txt

press y to confirm deletion, or n to deny deletion

## 3.3. Move and rename a file

> touch users.txt

> mv users.txt user-info.txt

> mv user-info.txt test_directory/

## 3.4. Copy files

> cp ~/Desktop/test_directory/user-info.txt ~/Desktop/

# Summary

In this lab, I learned that I can use the commands:

- `pwd` to get the location of my present working directory
- `ls` to list the files and directories within a directory
- `mkdir` to create a new directory
- `cd` to change my present working directory
- `touch` to create a new file
- `find` to search for and locate files
- `rm` to remove a file
- `mv` to rename or move a file
- `cp` to copy a file
