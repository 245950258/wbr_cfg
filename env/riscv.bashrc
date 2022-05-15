#*******************************************************************************
# RISCV Set
#*******************************************************************************

export ANT_HOME="/opt/tools/apache-ant/apache-ant-1.10.5"
export MVN_HOME="/opt/tools/apache-maven/apache-maven-3.6.0"
export GRADLE_HOME="/opt/tools/gradle/gradle-5.0"
export JAVA_HOME="/opt/tools/java/jdk1.8.0_201"
export JRE_HOME="/opt/tools/java/jdk1.8.0_201/jre"
export SCALA_HOME="/opt/tools/scala"
export SBT_HOME="/opt/tools/sbt"
export RISCV_TESTS="/home/wbr/riscv/riscv-tests"
#export RISCV="/opt/riscv/riscv-tools-embed"
export RISCV="/opt/tools/riscv/riscv-tools"
export INSTALLED_VERILATOR="/usr/local/bin/verilator"
export FREEDOMSTUDIO="/opt/tools/freedomstudio"

function fs {
  FreedomStudio "$@" &
}

export PATH=$PATH:$FREEDOMSTUDIO:$SCALA_HOME/scala-2.12.8/bin:$JAVA_HOME/bin:$JRE_HOME/bin:$SBT_HOME/bin:$MVN_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin:$RISCV/bin

#*******************************************************************************
# RISCV End
#*******************************************************************************
