#!/bin/bash
# Author : Alex Thompson
# Date : 1/31/2019

# Problem 1 Code:

echo "Enter regular expression: "
read exprOne
echo "Enter a file name: "
read fileName
# Search the designated file for the designated command line expression
grep -E $exprOne $fileName

# Search regex_practice.txt for 3 digits and a dash, 3 digits and a dash, and
# 4 digits. Returns the count of lines that match
grep -E -c [0-9]{3}-[0-9]{3}-[0-9]{4} regex_practice.txt

# Search regex_practice.txt for any number of letters or numbers followed by
# the @ symbol, then any number of letters or digits followed by ".com"
grep -E -c [0-9a-zA-Z]+@[0-9a-zA-Z]+".com" regex_practice.txt

# Search regex_practice.txt for all lines that start with the digits 303
# followed by characters that match same format of phone numbers above
# and stores them in a new file phone_results.txt
grep -E "303-"[0-9]{3}-[0-9]{4} regex_practice.txt > phone_results.txt

# Search regex_practice.txt for all lines that contain the string
# geocities.com since these are the lines containing the email addresses we
# care about and outputting them to a new file email_results.txt
grep -E "geocities.com" regex_practice.txt > email_results.txt

# Finidng all lines in the file that contain exactly two letters regardless
# of case followed by exactly 2 numbers and outputting them to a new file
# command_results.txt

grep -E [a-zA-Z]{2}[0-9]{2} regex_practice.txt > command_results.txt

