Watchfile
=========

Simple utility to watch for whether a file has been deleted, and save it in another place while combining the deleted file from the saved file.

Used to prevent intruders from completely erasing important log files to hide their tracks. This isn't necessarily robust if the intruder happens to find out where the new log files have been sent, but it could send the file to another mounted filesystem.

Primarily uses inotify, and a large bit of the sample code from `man inotify`.
