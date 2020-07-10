#!/usr/bin/env bash

#
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

echo "***** Running Benchmark Script *****"

echo "Current Dir: $(pwd)"

#TODO: Remove these once the use of STAF has been eliminated from all the benchmark scripts
export PATH=/usr/local/staf/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/staf/lib:$LD_LIBRARY_PATH


echo "JDK_VERSION=${JDK_VERSION}"

export JDK="j2sdk-image"
echo "JDK=${JDK}"

export JDK_DIR="${TEST_JDK_HOME}/.."
echo "JDK_DIR=${JDK_DIR}"

#TODO: Need to tune these options. Keeping them simple for now 
export JDK_OPTIONS="-Xms1024m -Xmx1024m"
export MEASURES="1"
export WARMUPS="0"
export SINGLE_CLIENT_WARMUP="0"
export MEASURE_TIME="30"
export WARMUP_TIME="30"
export RESULTS_MACHINE="$(hostname)"
export ROOT_RESULTS_DIR="$(pwd)"
export RESULTS_DIR="libertyResults-cleaned"

export NET_PROTOCOL="LOCAL"
echo "dt7_throughput.sh NET_PROTOCOL=${NET_PROTOCOL}"
export CLIENT="$(hostname)"
export DB_MACHINE="$(hostname)"
export LIBERTY_HOST="$(hostname)"

export CLIENT_WORK_DIR="${1}/liberty-client"
export DB_SERVER_WORKDIR="${CLIENT_WORK_DIR}"
export DATABASE="derby"
export DB2_HOME="/home/db2inst1/"
export DB_NAME="tradedb7"
export DB_PORT="50000"
export DB_USR_NAME="db2inst1"
export SERVER_NAME="DayTrader7-$JDK"
export SECOND_CLIENT=""
export THIRD_CLIENT=""
export PROFILING_TOOL=""
export PROFILING_JAVA_OPTION=""
export LIBERTY_PORT="9080"
export LARGE_THREAD_POOL="true"
export JMETER_LOC="${1}/JMeter/apache-jmeter-3.3/bin/jmeter"
export JMETER_INSTANCES=""
export SERVER_XML=""
export THROUGHPUT_DRIVER="jmeter"
export CORE_THREADS="40"
export MAX_THREADS="50"
export SCENARIO="DayTrader7"
export HEALTH_CENTRE=""
export PRIMITIVE=""
export CLEAN_RUN="true"
export SETUP_ONLY="false"
export NO_SETUP="false"
export LAUNCH_SCRIPT="server"
export LIBERTY_BINARIES_DIR="$1/libertyBinaries"
export LIBERTY_VERSION="openliberty-19.0.0.4"
export GCMV_ENABLED="false"

#TODO: Need to soft-code these configs. Need to add various affinity tools in the perf pre-reqs ()
export AFFINITY=""

bash ${1}/scripts/bin/throughput_benchmark.sh 