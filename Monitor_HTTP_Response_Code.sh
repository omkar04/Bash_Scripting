#!/bin/bash

URL="http://www.movies4u.sydney/.com"
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)
echo "$HTTP_CODE"
if [ $HTTP_CODE -ne 200 ];then
     echo "Alert: HTTP Status Code $HTTP_CODE from $URL" #|  mail -s "Web Server Alert" omrshinde1999@gmail.com
else
     echo "Web server is up and running with status code 200."
fi


: <<'COMMENT'
Breakdown of Components
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)
curl:

A command-line tool for transferring data using various network protocols, such as HTTP, FTP, etc.
-o /dev/null:

The -o option specifies an output file for the data retrieved by curl.
/dev/null is a special file that discards all data written to it. This means the retrieved content will not be saved or displayed, only the HTTP response headers and status will be processed.
-s (Silent Mode):

Suppresses progress bar and error messages from curl to keep the output clean.
-w "%{http_code}":

The -w option allows custom output formatting.
%{http_code} is a placeholder for the HTTP status code returned by the server (e.g., 200 for OK, 404 for Not Found, etc.).
$URL:

A shell variable containing the URL to which the curl command is sent.
HTTP_CODE=$(...):

Captures the HTTP status code output by the curl command and stores it in the variable HTTP_CODE.

COMMENT