#*******************************************************************************
# Synopsys Set
#*******************************************************************************

export SNPSYS_HOME=/opt/tools/synopsys
export VERDI_HOME=$SNPSYS_HOME/verdi/verdi_N-2017.12
export LD_LIBRARY_PATH=$VERDI_HOME/share/PLI/VCS/LINUX64
export SCL_HOME=$SNPSYS_HOME/scl/amd64
export VCS_HOME=$SNPSYS_HOME/vcs/vcs_vO-2018.09-SP2
# export VCS_HOME=$SNPSYS_HOME/vcs/vcs_vM-2017.03
export DC_HOME=$SNPSYS_HOME/dc/dc_2018
export LM_LICENSE_FILE=27000@wbr

export PATH=$PATH:$VCS_HOME/bin:$SCL_HOME/bin:$VERDI_HOME/bin:$VERDI_HOME/platform/LINUX/bin:$DC_HOME/bin

function nwave {
  nWave -ssf "$@" &
}

function verdi {
  Verdi "$@" &
}

alias lic='rm -rf ~/log/*;lmgrd -c /usr/local/synopsys/vcs/vcs-mx_vL-2016.06/license/synopsys.dat -l ~/log/synopsys.log'
alias clean='pkill -9 lmgrd;pkill -9 snslmgrd;pkill -9 snpslmd;'

#*******************************************************************************
# Synopsys End
#*******************************************************************************
