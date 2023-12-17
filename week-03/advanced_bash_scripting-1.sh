#!/bin/bash

echo "Are you enjoying this course so far?"

echo -n "Enter \"y\" for yes, \"n\" for no."

read response

if [ "$response" == "y" ]; then
    echo "That's awesome! Keep enjoying the course."
elif [ "$response" == "n" ]; then
    echo "Oh no! Let us know how we can improve your experience."
else
    echo "Invalid input. Please enter 'y' for yes or 'n' for no."
fi
