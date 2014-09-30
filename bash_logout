XWINPID=`ps -Wef|grep -i xwin|awk '{print $2}'`

if [ $XWINPID != 0 ]; then
	/bin/kill $XWINPID
fi
