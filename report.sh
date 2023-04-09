#!/bin/bash

#########################################################
# Monthly Report for GMO-BOT and OANDA-BOT.
# Run this script everyday, around 23PM.
# It will summarize the report if it's end of month.
# If not, it does nothing.
#########################################################

# tomorrow's day, in 1~31. If `nday` is 1, then
# today is the last day of the month.
nday=`date -d "1 day" +%d`

# if not end of month, exit.
if [ $nday -ne 10]; then
	echo Not end of month. Exit...
	exit 0
fi

##########################################################
# end of month
##########################################################

# execute `sgcheck`
# `sgcheck` is a comparison and montly report for GMO-BOT.
cd ~/goproject/sgcheck
./sgcheck "compare"

# execute `oanda-backtest`
# `oanda-backtest` is a comparison for OANDA-BOT.
cd ~/goproject/oanda-backtest
./oanda-backtest

echo END
exit 0
