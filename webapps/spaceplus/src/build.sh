#!/bin/bash

set -ex

cd $wr/webapps/spaceplus/src

pwd

find . -name "*.java" > sources;

javac -cp $CATALINA_HOME/webapps/spaceplus/WEB-INF/lib/gson-2.10.1.jar:$CATALINA_HOME/lib/servlet-api.jar:. @sources -d ../WEB-INF/classes

rm sources
