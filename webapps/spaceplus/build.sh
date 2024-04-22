#!/bin/bash

set -ex

jar -cvf spaceplus.war *

sh $wr/bin/shutdown.sh

sh $wr/bin/startup.sh
