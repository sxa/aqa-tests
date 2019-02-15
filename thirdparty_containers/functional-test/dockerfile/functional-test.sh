#/bin/bash
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#Set up Java to be used by the functional-test

if [ -d /java/jre/bin ];then
	echo "Using mounted Java8"
	export JAVA_BIN=/java/jre/bin
	export JAVA_HOME=/java
	export PATH=$JAVA_BIN:$PATH
	java -version
elif [ -d /java/bin ]; then
	echo "Using mounted Java9"
	export JAVA_BIN=/java/bin
	export JAVA_HOME=/java
	export PATH=$JAVA_BIN:$PATH
	java -version
else
	echo "Using docker image default Java"
	java_path=$(type -p java)
	suffix="/java"
	java_root=${java_path%$suffix}
	export JAVA_BIN="$java_root"
	echo "JAVA_BIN is: $JAVA_BIN"
	$JAVA_BIN/java -version

	java_home=$(dirname ${JAVA_BIN})
        export JAVA_HOME=$java_home

	$JAVA_BIN/java -fullversion > version.log 2>&1
        if grep  "1.8.0" version.log
        then
               JAVA_BIN="$java_home/jre/bin"
               JDK_VERSION="8"
               echo "Set JAVA_BIN to $JAVA_BIN for Java 8"
        fi
        rm version.log
fi

TEST_SUITE=$1

echo "PATH is : $PATH"
echo "JAVA_HOME is : $JAVA_HOME"
echo "type -p java is :"
type -p java
echo "java -version is: \n"
java -version


export SPEC=linux_x86-64_cmprssptrs

cd /openj9/test/TestConfig

# Generate make files 
echo "Generating make files..."
make -f run_configure.mk

echo "Building openj9 functional test material..." 
make compile

echo "Running the functional tests" 
#Run tests
make _sanity.functional
