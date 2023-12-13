# Exercise 1 - Viewing and modifying file access permissions

## 1.1 View file access permissions

> ls -l usdoi.txt

-rw-r--r-- 1 theia users 8121 Sep 28  2022 usdoi.txt

## 1.2 Change file access permissions

The following command revokes read permissions for all users (user, group, and other) on the file usdoi.txt:

> chmod -r usdoi.txt               

> ls -l usdoi.txt

--w------- 1 theia users 8121 Sep 28  2022 usdoi.txt

To grant read access to all users on usdoi.txt, enter:

> chmod +r usdoi.txt  

> ls -l usdoi.txt

-rw-r--r-- 1 theia users 8121 Sep 28  2022 usdoi.txt

Now to remove the read permission only for 'other' category, enter the following:

> chmod o-r usdoi.txt

> ls -l usdoi.txt

-rw-r----- 1 theia users 8121 Sep 28  2022 usdoi.txt

# Exercise 2 - Understanding directory access permissions

## 2.1 View default directory access permissions

> ls -l

total 12
drwxr-sr-x 2 theia users 4096 Dec 10 10:43 test
-rw-r----- 1 theia users 8121 Sep 28  2022 usdoi.txt

## 2.2 Remove user execute permissions on your test directory

> chmod u-x test

> ls -l

total 12
drw-r-sr-x 3 theia users 4096 Dec 10 10:46 test
-rw-r----- 1 theia users 8121 Sep 28  2022 usdoi.txt

> cd test/

bash: cd: test/: Permission denied

Even though I have "write" permissions set, I can't actually create a new directory within test, because removing execute permissions overrides write permissions.

> mkdir test/test3

mkdir: cannot create directory ‘test/test3’: Permission denied

> chmod u+x test

> mkdir test/test3
