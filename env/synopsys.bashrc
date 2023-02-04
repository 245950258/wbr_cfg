#*******************************************************************************
# Synopsys Set
#*******************************************************************************

export SNPSYS_HOME=/opt/tools/synopsys
export VERDI_HOME=$SNPSYS_HOME/verdi/verdi-2018.9-sp2
export LD_LIBRARY_PATH=$VERDI_HOME/share/PLI/VCS/LINUX64
export SCL_HOME=$SNPSYS_HOME/scl/amd64
export VCS_HOME=$SNPSYS_HOME/vcs/vcs_vO-2018.09-SP2
export DC_HOME=$SNPSYS_HOME/dc/dc_2018
export PT_HOME=$SNPSYS_HOME/ptpx/pt_vO-2018.06-SP1
export FM_HOME=$SNPSYS_HOME/fm/fm-2018.06
export LM_LICENSE_FILE=27000@Chipyard
export LIB_HOME=/opt/lib.eda

export PATH=$PATH:$VCS_HOME/bin:$SCL_HOME/bin:$VERDI_HOME/bin:$VERDI_HOME/platform/LINUX/bin:$DC_HOME/bin:$PT_HOME/bin:$FM_HOME/bin

function nwave {
  nWave -ssf "$@" &
}

function verdi {
  Verdi "$@" &
}

alias lic='\rm -rf ~/tmp/synopsys.log; /opt/licenses/synopsys/bin/lmgrd -c /opt/licenses/synopsys/license/synopsys.dat -l ~/tmp/synopsys.log'
alias clean='pkill -9 lmgrd;pkill -9 snslmgrd;pkill -9 snpslmd;'
#lsof -i :27000
alias portstatus='lsof -i :'

#*******************************************************************************
# Synopsys End
#*******************************************************************************
