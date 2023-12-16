# Exercise 1 - Using conditional statements and logical operators

## 1.1. Create a new Bash script

> echo '#!/bin/bash' > conditional_script.sh

> chmod u+x conditional_script.sh

## 1.2. Query the user and store their response

```shell
#! /bin/bash

echo 'Are you enjoying this course so far?'

echo -n "Enter \"y\" for yes, \"n\" for no."

read response
```

## 1.3. Use a conditional block to select a response for the user

```shell
#! /bin/bash

echo 'Are you enjoying this course so far?'

echo -n "Enter \"y\" for yes, \"n\" for no."

read response

if [ "$response" == "y" ]; then
    echo "That's awesome! Keep enjoying the course."
elif [ "$response" == "n" ]; then
    echo "Oh no! Let us know how we can improve your experience."
else
    echo "Invalid input. Please enter 'y' for yes or 'n' for no."
fi
```
