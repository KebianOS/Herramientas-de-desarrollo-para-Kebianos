#!/bin/bash




if [ "$1" = "-b" ]; then
    cd kebianos-dev-tools
    dpkg-buildpackage -us -uc -b
    exit 0
fi

if [ "$1" = "-u" ]; then
    rm *.buildinfo
    rm .changes
    rm *.deb
    git add .
    git commit -m "Upload"
    git push origin main
fi


