# Exercise 1 - Understand crontab file syntax

| Field   | Allowed values     |
|---------|--------------------|
| minute  | 0-59               |
| hour    | 0-23, 0 = midnight |
| day     | 1-31               |
| month   | 1-12               |
| weekday | 0-6, 0 = Sunday    |

# Exercise 2 - List cron jobs

> crontab -l

# Exercise 3 - Add a job in the crontab file

## 3.1. Add a job to crontab

> crontab -e

> 0 21 * * * echo "Welcome to cron" >> /tmp/echo.txt

> crontab -l

## 3.2. Schedule a shell script

> crontab -e

> 0 0 * * * /home/project/diskusage.sh >>/home/project/diskusage.log

> crontab -l

# Exercise 4 - Remove the current crontab

Caution: This removes all your cron jobs. Be extra cautious when you use this command on a production server.

> crontab -r

> crontab -l
