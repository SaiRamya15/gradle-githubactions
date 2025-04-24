#!/bin/sh
##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to run the wrapper jar
DIR="$( cd "$( dirname "$0" )" && pwd )"
exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
