# Exercise 1 - Viewing file contents

## 1.1. Viewing file content with the cat command

> cat entrypoint.sh

## 1.2. Viewing file content with the more command

> more entrypoint.sh

## 1.3. Scrolling through file content with the less command

> less entrypoint.sh

# Exercise 2 - Viewing text file contents

## 2.1. Display the first N lines of a file

> head usdoi.txt

> head -7 usdoi.txt

## 2.2. Display the last N lines of a file

> tail usdoi.txt

> tail -5 usdoi.txt

# Exercise 3 - Getting basic text file stats

## 3.1. Count lines, words, or characters from a text file

> wc usdoi.txt

Output:
152 1330 8121 usdoi.txt (number of lines, number of words, number of characters)

> wc -l usdoi.txt

Output:
152 usdoi.txt (number of lines)

> wc -w usdoi.txt

Output:
1330 usdoi.txt (number of words)

> wc -c usdoi.txt

Output:
8121 usdoi.txt (number of characters)

# Exercise 4 - Basic text wrangling: sorting lines and dropping duplicates

## 4.1. Sort and display lines of file alphanumerically

> sort usdoi.txt

> sort -r usdoi.txt

## 4.2. Drop consecutive duplicated lines and display result

> uniq zoo.txt

# Exercise 5 - Basic text wrangling: extracting lines and fields

## 5.1. Extract lines matching a specified criterion

> grep people usdoi.txt

Output:
Course of human events, it becomes necessary for one `people` to dissolve the
`people`, unless those `people` would relinquish the right of Representation in the
firmness his invasions on the rights of the `people`.
to harrass our `people`, and eat out their substance.
the lives of our `people`.
Tyrant, is unfit to be the ruler of a free `people`.

| Option | Description                                                |
|--------|------------------------------------------------------------|
| -n     | Along with the matching lines, also print the line numbers |
| -c     | Get the count of matching lines                            |
| -i     | Ignore the case of the text while matching                 |
| -v     | Print all lines which do not contain the pattern           |
| -w     | Match only if the pattern matches whole words              |

## 5.2. Extract fields from lines of text

For example, we can use `cut` with the `-c` option to view only the *first two characters* of each line:

> cut -c -2 zoo.txt

Output:
ze
ze
li
li
an
ze
ze
li
ze

Or to view each line starting from the second character:

> cut -c 2- zoo.txt

Output:
ebra
ebra
ion
ion
naconda
ebra
ebra
ion
ebra

The `cut` command can also be used to extract a field from a delimited file.

> cat names_and_numbers.csv

Output:
John Fogerty, 555-1212
Jane Doe, 555-1312

> cut -d "," -f2 names_and_numbers.csv

Output:
555-1212
555-1312

`-d ","` tells the command that the delimiter is a comma, and `-f2` tells it to extract the second field.

# Exercise 6 - Basic text wrangling: merging lines as fields

## 6.1. Merge text files line-by-line, aligned as columns

> paste zoo.txt zoo_ages.txt

> paste -d "," zoo.txt zoo_ages.txt
