# Exercise 1 - File and folder archiving and compression

## 1.1. Create and manage file archives

To pack multiple files and directories into a single archive file:

| Option | Description                    |
|--------|--------------------------------|
| -c     | Create new archive file        |
| -v     | Verbosely list files processed |
| -f     | Archive file name              |

> tar -cvf bin.tar /bin

To see the list of files in the archive:

> tar -tvf bin.tar

To untar the archive or extract files from the archive:

> tar -xvf bin.tar

## 1.2. Package and compress archive files

> zip config.zip /etc/*.conf

> zip -r bin.zip /bin

## 1.3. Extract, list, or test compressed files in a ZIP archive

> unzip -l config.zip

> unzip -o bin.zip
