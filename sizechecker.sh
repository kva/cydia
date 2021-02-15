#!/bin/bash
# Program to check file size
# Create by kva.github.io
# Output from this program became input for file Packages
# Usage, run in terminal: ./program.sh filename.deb

echo -ne "Size: "
echo   -n   $1 | wc -c $1 | awk '{print $1}'
echo -ne "MD5sum: "
echo   -n   $1 | md5sum $1 | awk '{print $1}'
echo -ne "SHA1: "
echo   -n   $1 | sha1sum $1 | awk '{print $1}'
echo -ne "SHA256: "
echo   -n   $1 | sha256sum $1 | awk '{print $1}'
echo -ne "SHA512: "
echo   -n   $1 | sha512sum $1 | awk '{print $1}'

