# edp-unidad5
bash scripts de la carrera TUIA


Short notation	Long notation	Result
set -f	set -o noglob	Disable file name generation using metacharacters (globbing).
set -v	set -o verbose	Prints shell input lines as they are read.
set -x	set -o xtrace	Print command traces before executing command.ç

set -x			# activate debugging from here
w
set +x			# stop debugging from here

willy:~/scripts> bash -x script1.sh