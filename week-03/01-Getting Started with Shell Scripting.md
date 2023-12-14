# Exercise 1 - Create and execute a basic shell script

## 1.1. Create a new script file

> cd Desktop

> ls

> mkdir shell_scripts

> ls

> cd shell_scripts

> touch greet.sh

Copy and paste the following lines into the newly created file.

```shell
# This script accepts the user\'s name and prints 
# a message greeting the user

# Print the prompt message on screen
echo -n "Enter your name :"	  	

# Wait for user to enter a name, and save the entered name into the variable \'name\'
read name				

# Print the welcome message followed by the name	
echo "Welcome $name"

# The following message should print on a single line. Hence the usage of \'-n\'
echo -n "Congratulations! You just created and ran your first shell script "
echo "using Bash on IBM Skills Network"
```

## 1.2. Execute the script

> ls -l greet.sh

> bash greet.sh

# Exercise 2 - Using a shebang line

## 2.1. Find the path to the interpreter

> which bash

/bin/bash

## 2.2. Edit the script greet.sh and add the shebang line to the script

```shell
#! /bin/bash
# This script accepts the user\'s name and prints 
# a message greeting the user

# Print the prompt message on screen
echo -n "Enter your name :"	  	

# Wait for user to enter a name, and save the entered name into the variable \'name\'
read name				

# Print the welcome message followed by the name	
echo "Welcome $name"

# The following message should print on a single line. Hence the usage of \'-n\'
echo -n "Congratulations! You just created and ran your first shell script "
echo "using Bash on IBM Skills Network"
```

## 2.3. Check the permissions of the script

> chmod u+x greet.sh

> ls -l greet.sh

## 2.4. Execute the script.

> ./greet.sh
