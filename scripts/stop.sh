pid=$(ps -aux | grep dunwu | grep -v grep | awk '{print $2}')
if [ "$pid" = '' ];then
  echo 'not found progress...'
else
   echo found progress, pid: ${pid}, now killing it!
   sudo kill -9 $pid
fi
echo 'stop service ending...'