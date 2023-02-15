#+----------------------------------------------------+
#| **** Modules Begin **** |
#+----------------------------------------------------+

function m {
	module "$@"
}

function ma {
	module load "$@"
}

function mav {
	module avail "$@"
}

function mi {
	module display "$@"
}

function mw {
	module whatis "$@"
}

function mr {
	module rm "$@"
}

function mlist {
	module list
}

function mc {
	module purge
}

function mh {
	module help
}
#+----------------------------------------------------+
#| **** Let's load enviroment **** |
#+----------------------------------------------------+

#+----------------------------------------------------+
#| **** Synopsys Tools **** |
#+----------------------------------------------------+
ma vcs/2018.09-sp2
ma verdi/2018.09-sp2
ma dc/2018
ma fm/2018.06
ma pt/2018.06-sp1
ma scl/11.12
ma installer/3.2
#+----------------------------------------------------+
#| **** Cadence Tools **** |
#+----------------------------------------------------+
ma cape/04.23-s010
ma ic/6.17.722
ma innovus/152
ma spectre/17.10.389
#+----------------------------------------------------+
#| **** Mentor Tools **** |
#+----------------------------------------------------+
ma calibre/2016.3_28.17
#+----------------------------------------------------+
#| **** RISC-V Tools **** |
#+----------------------------------------------------+
ma riscv-tools/9.2.0
ma freedomstudio/4.7.2
#+----------------------------------------------------+
#| **** Software Tools **** |
#+----------------------------------------------------+
ma apache-ant/1.10.5
ma gradle/5.0
ma sbt/1.2.8
ma tcl/8.6.13
ma apache-maven/3.6.0
ma java/1.8.0_201
ma scala/2.12.8
#+----------------------------------------------------+
#| **** For Tmux Setting enviroment **** |
#+----------------------------------------------------+
module reload
#+----------------------------------------------------+
#| **** Modules End **** |
#+----------------------------------------------------+
