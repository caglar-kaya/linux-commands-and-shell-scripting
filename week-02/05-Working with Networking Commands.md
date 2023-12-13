# Exercise 1 - View configuration info about your network

## 1.1. Display your system's hostname and IP address

> hostname

> hostname -i

## 1.2. Display network interface configuration

> ifconfig

> ifconfig eth0

# Exercise 2 - Test network connectivity

## 2.1. Test connectivity to a host

> ping www.google.com

> ping -c 5 www.google.com

# Exercise 3 - View or download data from a server

## 3.1. Transfer data from a server

To access the file at the following URL and display the file's contents:

> curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt

To access the file at the given URL and also save it in my current working directory, use the -O option:

> curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt

## 3.2. Download file(s) from a URL

> wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
