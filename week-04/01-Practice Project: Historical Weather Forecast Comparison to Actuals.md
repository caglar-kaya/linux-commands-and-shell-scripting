# Exercise 1 - Initialize your weather report log file

## 1.1 Create a text file called rx_poc.log

> touch rx_poc.log

## 1.2 Add a header to your weather report

> header=$(echo -e "year\tmonth\tday\tobs_temp\tfc_temp")

> echo $header > rx_poc.log

# Exercise 2 - Download the raw weather data

## 2.1. Create a text file called rx_poc.sh and make it an executable Bash script

> touch rx_poc.sh

> echo "#! /bin/bash" > rx_poc.sh

> ls -l

> chmod u+x rx_poc.sh

## 2.2. Assign the city name to Casablanca for accessing the weather report

> city=Casablanca

## 2.3 Obtain the weather information for Casablanca

> echo "curl -s wttr.in/\$city?T --output weather_report" >> rx_poc.sh

> ./rx_poc.sh

# Exercise 3 - Extract and load the required data

## 3.1. Edit rx_poc.sh to extract the required data from the raw data file and assign them to variables obs_temp and fc_temp

### 3.1.1. Extract the current temperature, and store it in a shell variable called obs_temp

<!-- To extract Current Temperature -->

> obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -e '-?[[:digit:]].*')

> echo "The current Temperature of $city: $obs_temp"

### 3.1.2. Extract tomorrow's temperature forecast for noon, and store it in a shell variable called fc_temp

<!-- To extract the forecast tempearature for noon tomorrow -->

> fc_temp=$(curl -s wttr.in/$city?T | head -23 | tail -1 | grep '°.' | cut -d 'C' -f2 | grep -Eo -e '-?[[:digit:]].*')

> echo "The forecasted temperature for noon tomorrow for $city : $fc_temp C"

## 3.2. Store the current hour, day, month, and year in corresponding shell variables

> hour=$(TZ='Morocco/Casablanca' date -u +%H) 

> day=$(TZ='Morocco/Casablanca' date -u +%d) 

> month=$(TZ='Morocco/Casablanca' date +%m)

> year=$(TZ='Morocco/Casablanca' date +%Y)

## 3.3. Merge the fields into a tab-delimited record, corresponding to a single row in Table 1

> record=$(echo -e "$year\t$month\t$day\t$obs_temp\t$fc_temp C")

> echo $record>>rx_poc.log

# Exercise 4 - Schedule your Bash script rx_poc.sh to run every day at noon local time

## 4.1. Determine what time of day to run your script

> date

> date -u

## 4.2 Create a cron job that runs your script

> crontab -e

> 0 8 * * * /home/project/rx_poc.sh

# Exercise 5 - Create a script to report historical forecasting accuracy

To start, create a tab-delimited file named historical_fc_accuracy.tsv

> echo -e "year\tmonth\tday\tobs_temp\tfc_temp\taccuracy\taccuracy_range" > historical_fc_accuracy.tsv

Also create an executable Bash script called fc_accuracy.sh

## 5.1. Determine the difference between today's forecasted and actual temperatures

### 5.1.1. Extract the forecasted and observed temperatures for today and store them in variables

> yesterday_fc=$(tail -2 rx_poc.log | head -1 | cut -d " " -f5)

### 5.1.2. Calculate the forecast accuracy

> today_temp=$(tail -1 rx_poc.log | cut -d " " -f4)

> accuracy=$(($yesterday_fc-$today_temp))

> echo "accuracy is $accuracy"

## 5.2. Assign a label to each forecast based on its accuracy

| accuracy range | accuracy label |
|----------------|----------------|
| +/- 1 deg      | excellent      |
| +/- 2 deg      | good           |
| +/- 3 deg      | fair           |
| +/- 4 deg      | poor           |

```shell
if [ -1 -le $accuracy ] && [ $accuracy -le 1 ]
then
   accuracy_range=excellent
elif [ -2 -le $accuracy ] && [ $accuracy -le 2 ]
then
    accuracy_range=good
elif [ -3 -le $accuracy ] && [ $accuracy -le 3 ]
then
    accuracy_range=fair
else
    accuracy_range=poor
fi

echo "Forecast accuracy is $accuracy"
```

## 5.3. Append a record to your historical forecast accuracy file.

> row=$(tail -1 rx_poc.log)

> year=$( echo $row | cut -d " " -f1)

> month=$( echo $row | cut -d " " -f2)

> day=$( echo $row | cut -d " " -f3)

> echo -e "$year\t$month\t$day\t$today_temp\t$yesterday_fc\t$accuracy\t$accuracy_range" >> historical_fc_accuracy.tsv
