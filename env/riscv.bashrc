#*******************************************************************************
# RISCV Set
#*******************************************************************************

export ANT_HOME="/opt/apache-ant"
export MVN_HOME="/opt/apache-maven"
export GRADLE_HOME="/opt/gradle"
export JAVA_HOME="/opt/java/jdk1.8.0_201"
export JRE_HOME="/opt/java/jdk1.8.0_201/jre"
export SCALA_HOME="/opt/scala"
export SBT_HOME="/opt/sbt"
export RISCV_TESTS="/home/wbr/riscv/riscv-tests"
#export RISCV="/opt/riscv/riscv-tools-embed"
export RISCV="/opt/riscv/riscv-tools"
export INSTALLED_VERILATOR="/usr/local/bin/verilator"
export FREEDOMSTUDIO=/opt/freedomstudio

function fs {
  FreedomStudio "$@" &
}

export PATH=$PATH:$FREEDOMSTUDIO:$SCALA_HOME/scala-2.12.8/bin:$JAVA_HOME/bin:$JRE_HOME/bin:$SBT_HOME/bin:$MVN_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin:$RISCV/bin

#*******************************************************************************
# RISCV End
#*******************************************************************************
