#!/bin/sh


# it needs X server for whatever reason, no time to debug it now ;)
xvfb-run /usr/local/mcuxpressoide/ide/mcuxpressoide -nosplash --launcher.suppressErrors \
        -application org.eclipse.cdt.managedbuilder.core.headlessbuild \
        -data /tmp/workspace \
        -import `pwd`/firmware \
        -cleanBuild firmware/Debug 

