#/bin/bash
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
source $(dirname "$0")/test_base_functions.sh

if [ -d /java/jre/bin ];then
	echo "Using mounted Java8"
	export JAVA_BIN=/java/jre/bin
	export JAVA_HOME=/java
	export PATH=$JAVA_BIN:$PATH
elif [ -d /java/bin ]; then
	echo "Using mounted Java"
	export JAVA_BIN=/java/bin
	export JAVA_HOME=/java
	export PATH=$JAVA_BIN:$PATH
else
	echo "Using docker image default Java"
	java_path=$(type -p java)
	suffix="/java"
	java_root=${java_path%$suffix}
	export JAVA_BIN="$java_root"
	echo "JAVA_BIN is: $JAVA_BIN"
	export JAVA_HOME="${java_root%/bin}"
fi

echo_setup

cd ${LUCENE_SOLR_HOME}/lucene-solr

pwd
set -e

${ANT_HOME}/bin/ant -Divy_install_path=${ANT_HOME}/lib -lib ${ANT_HOME}/lib ivy-bootstrap
echo "Compile and execute lucene-solr test"
${ANT_HOME}/bin/ant -Divy_install_path=${ANT_HOME}/lib -lib ${ANT_HOME}/lib -f ${LUCENE_SOLR_HOME}/lucene-solr/build.xml -Duser.home=${LUCENE_SOLR_HOME} -Dcommon.dir=${LUCENE_SOLR_HOME}/lucene-solr/lucene compile
echo "Execute lucene-solr test"
${ANT_HOME}/bin/ant -Divy_install_path=${ANT_HOME}/lib -lib ${ANT_HOME}/lib -f ${LUCENE_SOLR_HOME}/lucene-solr/build.xml -Duser.home=${LUCENE_SOLR_HOME} -Dcommon.dir=${LUCENE_SOLR_HOME}/lucene-solr/lucene test

set +e