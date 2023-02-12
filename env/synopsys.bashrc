#*******************************************************************************
# Synopsys Set
#*******************************************************************************

export SNPSYS_HOME=/opt/tools/synopsys
export LM_LICENSE_FILE=27000@Chipyard

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
