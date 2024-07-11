#!/usr/bin/env bash
echo SXAEC: 5 - $LD_LIBRARY_PATH
usage() {
    echo '                Please export USE_TESTENV_PROPERTIES, JDK_VERSION and JDK_IMPL before running the script locally.'

}
if [ $(uname) = AIX ] || [ $(uname) = SunOS ] || [ $(uname) = *BSD ]; then
    MAKE=gmake
else
    MAKE=make
fi

source ./scripts/testenv/testenvSettings.sh

cd ./TKG
$MAKE compile
