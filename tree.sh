#!/bin/bash
find . -print 2>/dev/null | awk '!/\.$/ { \
    for (i=1; i<NF; i++) { \
        printf("%4s", "|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;") \
    } \
    print "-- "$NF"<br>"  \
}' FS='/'