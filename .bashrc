# ~/.bashrc

bind '"\t":menu-complete'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias clc='clear&&clear'

function battery() {
	pmset -g batt; ioreg -brc AppleSmartBattery | egrep "CycleCount|Temperature"; 
	echo $(ioreg -l -n AppleSmartBattery -r | grep MaxCapacity | awk '{print $3}') / 
	$(ioreg -l -n AppleSmartBattery -r | grep DesignCapacity | awk '{print $3}') \* 
	100 | bc -l
}

PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '
