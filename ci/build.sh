#!/bin/sh
# exit when any command fails
set -e

# Copy propertiary data needed to compile this stuff
cp /data/* firmware/linkerdata/

# it needs X server for whatever reason, no time to debug it now ;)
xvfb-run /usr/local/mcuxpressoide/ide/mcuxpressoide -nosplash --launcher.suppressErrors \
        -application org.eclipse.cdt.managedbuilder.core.headlessbuild \
        -data /tmp/workspace \
        -import `pwd`/firmware \
        -cleanBuild firmware/Debug 

test -f firmware/Debug/firmware.sgl
