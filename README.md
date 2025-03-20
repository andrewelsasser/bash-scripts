The script webtest.sh performs the following actions:

1. Clears the terminal screen.
2. Prompts the user to enter a website URL and a file name.
3. Records the file name and the script's path into the specified file.
4. Records the current date and time, along with the website URL, into the file.
5. Sends a HTTP HEAD request to the specified website using curl and records the response headers into the file.
6. Records the current date and time again.
7. Measures and records various timings related to the website's response time using curl, including name lookup time, connect time, app connect time, redirect time, pre-transfer time, start-transfer time, and total time.
8. Clears the terminal screen again.
9. Opens the resulting file in the nano text editor.

The script is designed to test a website's response time and record the results in a specified file.
